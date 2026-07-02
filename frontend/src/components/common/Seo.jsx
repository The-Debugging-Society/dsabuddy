import { useEffect } from 'react';
import { SITE, absoluteUrl } from '@/config/seo';

// Imperatively upsert a <meta> tag so we update index.html defaults in place
// (rather than appending duplicates). Keyed by name/property attribute.
function upsertMeta(attr, key, content) {
  if (content == null || content === '') return;
  let el = document.head.querySelector(`meta[${attr}="${key}"]`);
  if (!el) {
    el = document.createElement('meta');
    el.setAttribute(attr, key);
    document.head.appendChild(el);
  }
  el.setAttribute('content', content);
}

function upsertLink(rel, href) {
  if (!href) return;
  let el = document.head.querySelector(`link[rel="${rel}"]`);
  if (!el) {
    el = document.createElement('link');
    el.setAttribute('rel', rel);
    document.head.appendChild(el);
  }
  el.setAttribute('href', href);
}

/**
 * Declarative <head> manager for this SPA. Since the app is client-rendered,
 * we set the document title, meta tags, canonical, Open Graph / Twitter cards,
 * and optional JSON-LD on mount and whenever the props change.
 *
 * @param {string}  [title]        Page title (brand name is appended automatically).
 * @param {string}  [description]  Meta description (falls back to the site default).
 * @param {string}  [path]         Route path for the canonical URL, e.g. "/about".
 * @param {string}  [image]        OG/Twitter image URL (absolute or root-relative).
 * @param {boolean} [noindex]      When true, emits robots "noindex, nofollow".
 * @param {string}  [type]         Open Graph type (default "website").
 * @param {object|object[]} [jsonLd] One or more JSON-LD schema objects for this page.
 */
export function Seo({
  title,
  description,
  path,
  image,
  noindex = false,
  type = 'website',
  jsonLd,
}) {
  const fullTitle = title ? `${title} | ${SITE.name}` : SITE.defaultTitle;
  const ogTitle = title || SITE.defaultTitle;
  const desc = description || SITE.description;
  const url = absoluteUrl(path || '/');
  const img = image ? absoluteUrl(image) : SITE.defaultImage;
  const jsonLdKey = jsonLd ? JSON.stringify(jsonLd) : '';

  useEffect(() => {
    document.title = fullTitle;

    upsertMeta('name', 'description', desc);
    upsertMeta('name', 'robots', noindex ? 'noindex, nofollow' : 'index, follow');
    upsertLink('canonical', url);

    // Open Graph
    upsertMeta('property', 'og:title', ogTitle);
    upsertMeta('property', 'og:description', desc);
    upsertMeta('property', 'og:url', url);
    upsertMeta('property', 'og:image', img);
    upsertMeta('property', 'og:type', type);
    upsertMeta('property', 'og:site_name', SITE.name);
    upsertMeta('property', 'og:locale', SITE.locale);

    // Twitter
    upsertMeta('name', 'twitter:card', 'summary_large_image');
    upsertMeta('name', 'twitter:site', SITE.twitter);
    upsertMeta('name', 'twitter:title', ogTitle);
    upsertMeta('name', 'twitter:description', desc);
    upsertMeta('name', 'twitter:image', img);

    // Per-page JSON-LD — clear anything a previous page added, then re-add.
    document.head
      .querySelectorAll('script[data-seo="page"]')
      .forEach((s) => s.remove());
    if (jsonLd) {
      const blocks = Array.isArray(jsonLd) ? jsonLd : [jsonLd];
      blocks.forEach((block) => {
        const script = document.createElement('script');
        script.type = 'application/ld+json';
        script.setAttribute('data-seo', 'page');
        script.text = JSON.stringify(block);
        document.head.appendChild(script);
      });
    }

    return () => {
      document.head
        .querySelectorAll('script[data-seo="page"]')
        .forEach((s) => s.remove());
    };
  }, [fullTitle, ogTitle, desc, url, img, noindex, type, jsonLdKey]);

  return null;
}

export default Seo;

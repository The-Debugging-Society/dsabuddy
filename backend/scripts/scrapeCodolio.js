import puppeteer from 'puppeteer';
import fs from 'fs';
import path from 'path';

async function main() {
  const browser = await puppeteer.launch({
    headless: true,
    args: ['--no-sandbox', '--disable-setuid-sandbox']
  });
  const page = await browser.newPage();
  
  console.log("Navigating to Codolio Striver A2Z sheet...");
  await page.goto("https://codolio.com/question-tracker/sheet/strivers-a2z-dsa-sheet", {
    waitUntil: "networkidle2",
    timeout: 60000
  });

  console.log("Waiting for page skeleton to settle...");
  await new Promise(resolve => setTimeout(resolve, 5000));
  
  console.log("Expanding accordions...");
  await page.evaluate(async () => {
    const sleep = (ms) => new Promise(resolve => setTimeout(resolve, ms));
    
    // Find all clickable elements/divs/buttons/spans
    const allElements = Array.from(document.querySelectorAll('div, button, span, p'));
    
    // Expand Steps first
    const steps = allElements.filter(el => {
      const text = el.textContent || '';
      return text.includes('Step ') && (text.includes(':') || text.includes(' :'));
    });
    console.log(`Found ${steps.length} Steps.`);
    for (const step of steps) {
      step.click();
      await sleep(100);
    }
    
    await sleep(2000);
    
    // Expand Lectures
    // Re-query in case DOM updated
    const allElements2 = Array.from(document.querySelectorAll('div, button, span, p'));
    const lecs = allElements2.filter(el => {
      const text = el.textContent || '';
      return text.includes('Lec ') && (text.includes(':') || text.includes(' :'));
    });
    console.log(`Found ${lecs.length} Lectures.`);
    for (const lec of lecs) {
      lec.click();
      await sleep(100);
    }
  });

  console.log("Waiting for expansion...");
  await new Promise(resolve => setTimeout(resolve, 8000));

  console.log("Extracting problems...");
  const problems = await page.evaluate(() => {
    const results = [];
    
    // Find all solved buttons as row markers
    const solvedButtons = Array.from(document.querySelectorAll("button#solved"));
    
    solvedButtons.forEach(btn => {
      let parent = btn.parentElement;
      // Search for the row container
      while (parent && !parent.querySelector("a.truncate")) {
        if (parent.tagName === 'DIV' && parent.className.includes('flex')) {
          if (parent.parentElement && parent.parentElement.className.includes('flex-col')) {
            break;
          }
        }
        parent = parent.parentElement;
      }
      
      if (parent) {
        const linkEl = parent.querySelector("a.truncate");
        let title = "";
        let href = "";
        if (linkEl) {
          title = linkEl.textContent.trim();
          href = linkEl.getAttribute("href") || "";
        } else {
          // Fallback
          const textEl = parent.querySelector("p, span:not(#solved span)");
          if (textEl) {
            title = textEl.textContent.trim();
          }
        }
        
        let practice_link = href;
        
        if (title) {
          results.push({
            title: title,
            link: practice_link
          });
        }
      }
    });
    
    // Fallback: search for any anchors
    if (results.length === 0) {
      const anchors = Array.from(document.querySelectorAll('a'));
      anchors.forEach(a => {
        const href = a.getAttribute('href') || '';
        const text = a.textContent ? a.textContent.trim() : '';
        if (href && text) {
          results.push({
            title: text,
            link: href
          });
        }
      });
    }
    
    return results;
  });

  console.log(`Scraped ${problems.length} problems from Codolio.`);
  
  const outDir = "C:\\Users\\797000235\\.gemini\\antigravity-ide\\brain\\6e6c5882-d3f8-4671-a928-c3bab854bb2b\\scratch";
  if (!fs.existsSync(outDir)) {
    fs.mkdirSync(outDir, { recursive: true });
  }
  const outPath = path.join(outDir, "codolio_problems.json");
  fs.writeFileSync(outPath, JSON.stringify(problems, null, 2), 'utf-8');
  console.log(`Saved problems to ${outPath}`);

  await browser.close();
}

main().catch(console.error);

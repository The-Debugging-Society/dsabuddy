import { Card, IconBox, Badge } from "@/components/common";

export const FeatureCard = ({ 
  icon: Icon, 
  title, 
  description, 
  variant = "primary",
  iconVariant = "primary",
  delay = 0,
  link
}) => {
  const content = (
    <Card variant="default" delay={delay} className={link ? "cursor-pointer h-full" : ""}>
      <IconBox icon={Icon} variant={iconVariant} />
      <div>
        <h3 className="font-bold mt-4 text-lg font-Spline-Sans flex items-center gap-2">
          {title}
          {link && (
            <span className="inline-block text-[#35b9f1] group-hover:translate-x-1 transition-transform">
              &rarr;
            </span>
          )}
        </h3>
        <p className="content-color mt-2">{description}</p>
      </div>
    </Card>
  );

  if (link) {
    return (
      <a href={link} target="_blank" rel="noopener noreferrer" className="block w-full h-full">
        {content}
      </a>
    );
  }

  return content;
};

# Component Architecture - DSABuddy

## 🎯 Component Hierarchy

### Level 1: Atomic Components (`components/common/`)
Smallest, most reusable components with single responsibilities:

- **Button** - Variants: primary, secondary, accent, outline | Sizes: sm, md, lg
- **Input** - Text inputs with icons, labels, validation states
- **Card** - Container variants: default, dark, accent, highlight
- **Badge** - Small labels with variants: default, primary, warning, success, info
- **Divider** - Horizontal/vertical separators with optional text
- **IconBox** - Icon containers with color variants

### Level 2: Molecular Components (`components/layout/`)
Composed from atomic components, reusable across pages:

- **Header** - Navigation bar with logo and menu
- **Footer** - Site footer with copyright
- **FeatureCard** - Icon + title + description card
- **SocialButton** - Social login button (Google, etc.)
- **FormField** - Input field with label and icon
- **StatItem** - Animated stat display with label

### Level 3: Section Components (`components/sections/`)
Page-specific sections built from lower-level components:

#### Landing Page Sections:
- **HeroSection** - Main hero with CTA buttons and dashboard preview
- **FeaturesSection** - Grid of feature cards
- **ComparisonSection** - Problem vs Solution comparison
- **CTASection** - Final call-to-action section

#### Auth Sections:
- **LoginForm** - Complete login form with social auth
- **RegisterForm** - Complete registration form

## 📁 File Structure

```
src/
├── components/
│   ├── common/           # Level 1 - Atomic
│   │   ├── Button.jsx
│   │   ├── Input.jsx
│   │   ├── Card.jsx
│   │   ├── Badge.jsx
│   │   ├── Divider.jsx
│   │   ├── IconBox.jsx
│   │   └── index.js
│   ├── layout/           # Level 2 - Molecular
│   │   ├── Header.jsx
│   │   ├── Footer.jsx
│   │   ├── FeatureCard.jsx
│   │   ├── SocialButton.jsx
│   │   ├── FormField.jsx
│   │   ├── StatItem.jsx
│   │   └── index.js
│   ├── sections/         # Level 3 - Sections
│   │   ├── HeroSection.jsx
│   │   ├── FeaturesSection.jsx
│   │   ├── ComparisonSection.jsx
│   │   ├── CTASection.jsx
│   │   ├── LoginForm.jsx
│   │   ├── RegisterForm.jsx
│   │   └── index.js
│   └── ui/               # Special components
│       └── TextType.jsx  # Typing animation
└── pages/                # Page compositions
    ├── LandingPage.jsx
    ├── LoginPage.jsx
    └── DashboardPage.jsx
```

## 🔄 Component Usage Flow

```
Page (LandingPage.jsx)
  ↓
Sections (HeroSection, FeaturesSection)
  ↓
Layout Components (Header, FeatureCard)
  ↓
Common Components (Button, Card, Badge)
```

## 💡 Usage Examples

### Example 1: Using Button Component
```jsx
import { Button } from "@/components/common";

<Button variant="primary" size="md" onClick={handleClick}>
  Click Me
</Button>
```

### Example 2: Using FeatureCard
```jsx
import { FeatureCard } from "@/components/layout";
import { Trophy } from "lucide-react";

<FeatureCard
  icon={Trophy}
  iconVariant="info"
  title="College Leaderboards"
  description="Compete with students from your branch"
  delay={0.2}
/>
```

### Example 3: Building a Page
```jsx
import { Header, Footer } from "@/components/layout";
import { HeroSection, FeaturesSection } from "@/components/sections";

export function LandingPage() {
  return (
    <div>
      <Header />
      <HeroSection />
      <FeaturesSection />
      <Footer />
    </div>
  );
}
```

## 🎨 Design Principles

1. **Single Responsibility** - Each component does one thing well
2. **Composability** - Smaller components build larger ones
3. **Reusability** - Components work in multiple contexts
4. **Consistency** - Shared props patterns (variant, size, className)
5. **Flexibility** - Support customization via props and className

## 🚀 Benefits

- ✅ Easy to maintain and update
- ✅ Consistent UI across the app
- ✅ Fast development of new features
- ✅ Reduced code duplication
- ✅ Clear component ownership
- ✅ Easy testing and debugging
- ✅ Scalable architecture

## 📝 Adding New Components

### Adding an Atomic Component:
1. Create in `components/common/`
2. Export from `components/common/index.js`
3. Use across multiple sections

### Adding a Section:
1. Create in `components/sections/`
2. Compose from common + layout components
3. Export from `components/sections/index.js`
4. Import in page

## 🔧 Next Steps

1. Add TypeScript for type safety
2. Create Storybook for component documentation
3. Add unit tests for components
4. Implement theme provider for dark mode
5. Add accessibility features (ARIA labels)

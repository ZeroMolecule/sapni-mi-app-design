# sapnimi_design

The design system for the **Šapni Mi** app — a warm, earthy UI kit built on Flutter's `ThemeExtension` system.

## Setup

Initialize the theme in `main.dart` before `runApp` to preload fonts:

```dart
await SapnimiTheme.initialize();
```

Apply the theme to your app:

```dart
MaterialApp(
  theme: SapnimiTheme.light,
  ...
)
```

---

## Primitives

### Colors — `Palette`

Access semantic colors via the theme extension:

```dart
final palette = Palette.of(context);
// or
final palette = Theme.of(context).palette;

palette.primary        // deepPlum — primary brand color
palette.secondary      // warmTaupe — secondary brand color
palette.neutral1       // ivoryWhite — backgrounds
palette.text1          // deepPlum — primary text
palette.text2          // espresso — body text
palette.text3          // warmTaupe — muted text
palette.other1         // vibrantRed — errors
```

Static raw color constants are also available directly on `Palette`:

```dart
Palette.deepPlum
Palette.warmTaupe
Palette.ivoryWhite
// etc.
```

### Typography — `TextStyles`

```dart
final styles = TextStyles.of(context);
// or
final styles = Theme.of(context).textStyles;

styles.h1           // Poppins 600, 64px
styles.h2           // Poppins 600, 51px
styles.subtitle     // Poppins 500, 40px
styles.label        // Poppins 700, 36px
styles.emailLabel   // Poppins 500, 32px
styles.message      // Poppins 500, 36px
styles.button       // Poppins 600, 32px
styles.indicator    // Poppins 600, 28px
styles.countNumber  // Playfair Display 700, 320px
styles.decorative   // Caveat 400, 46px
```

### Spacing

Named scale for consistent spacing:

```dart
Spacing.xs      // 8
Spacing.sm      // 12
Spacing.md      // 16
Spacing.lg      // 24
Spacing.xl      // 32
Spacing.xxl     // 40
Spacing.xxxl    // 48
Spacing.section // 60
```

### Radii

Named border radius tokens:

```dart
Radii.sm    // 5
Radii.md    // 10
Radii.lg    // 20
Radii.full  // 999 (pill)

// Pre-built BorderRadius constants:
Radii.smAll   // BorderRadius.all(Radius.circular(5))
Radii.mdAll   // BorderRadius.all(Radius.circular(10))
Radii.lgAll   // BorderRadius.all(Radius.circular(20))
Radii.fullAll // BorderRadius.all(Radius.circular(999))
```

### Shadows

```dart
Shadows.cardDropdown  // subtle drop shadow for cards and dropdowns
```

### Gradients

```dart
Gradients.background  // warm diagonal background gradient
```

### Screen breakpoints — `ScreenType`

```dart
final screen = ScreenType.of(context);

screen >= ScreenType.tablet  // responsive logic

// enum values: watch (300), mobile (420), tablet (750), desktop (950)
```

Wrap a widget to react to screen size changes:

```dart
ScreenTypeObserver(
  builder: (context, screenType, child) => ...,
)
```

---

## Widgets

### `Button` / `Button.secondary`

```dart
Button(
  text: 'Continue',
  onPressed: () {},
)

Button.secondary(
  text: 'Cancel',
  icon: Icons.close,
  onPressed: () {},
)
```

Customize appearance with `ButtonDecoration`:

```dart
Button(
  text: 'Custom',
  decoration: ButtonDecoration(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    borderRadius: Radii.lgAll,
  ),
  onPressed: () {},
)
```

### `CardBox`

A card container with shadow and rounded corners.

```dart
CardBox(
  child: Text('Content'),
)
```

### `Countdown`

Displays a countdown number inside a styled circular container.

```dart
Countdown(value: 3, label: 'seconds')
```

### `DecoratedIcon`

An icon flanked by horizontal dividers.

```dart
DecoratedIcon(icon: Icons.star)
```

### `DotsDivider`

A row of decorative dots used as a section divider.

```dart
DotsDivider()
```

### `FadingWidget`

Fades out a child widget horizontally using a shader mask.

```dart
FadingWidget(child: Text('...'))
```

### `GradientScaffold`

A `Scaffold` with the standard background gradient applied.

```dart
GradientScaffold(body: ...)
```

### `Indicator` / `StepIndicator` / `TimeIndicator`

Circular indicator widgets for step counts and time displays.

```dart
StepIndicator(current: 1, total: 5)
TimeIndicator(seconds: 90, isActive: true)
```

### `LoadingIndicator`

An animated loading widget with multiple effect options.

```dart
LoadingIndicator()
LoadingIndicator(effect: LoadingEffect.newtonCradle)
```

### `PromptTitle`

A large heading displayed inside a card-like container.

```dart
PromptTitle(text: 'What is your dream?')
```

---

## Composites

Higher-level layout components assembled from primitives and widgets.

| Component | Description |
|---|---|
| `FocusScaffold` | Centered content with standard page padding |
| `FocusColumn` | Column with optional header and footer slots |
| `DecorativeScaffold` | Split layout — content left, decorative element right |
| `PromptScaffold` | Page layout with title and scrollable content area |
| `PromptColumn` | Column with optional title and bottom button row |
| `PromptCard` | Card with icon, title, description, and extra content slot |

### Toasts

Show feedback toasts from anywhere with a `BuildContext`:

```dart
Toasts.of(context).showSuccess('Saved!');
Toasts.of(context).showError('Something went wrong.');
```

Wrap your app (or subtree) with `Toasts` to enable it:

```dart
Toasts(child: MaterialApp(...))
```

# Final color comparison

September 6, 2026. Rechecked all four wallpaper compositions and the real desktop screenshot with correctly loaded btop colors against the shared palette and the 25-theme benchmark.

## Judgment

Keep the palette. Blue-charcoal surfaces connect mountain shadow across all four photographs. Teal consistently identifies focus and primary actions. Powder blue echoes sky and distance, while moss, gold, rose, and lavender retain distinct semantic and syntax roles. The 03 photograph adds golden-cloud warmth, 04 emphasizes rose/cyan contrast, and 05 softens the composition with peach light and mist. No wallpaper-specific palette is needed.

Neovim, Foot's swatches, and btop now visibly share the same surface and color family in the real screenshot. btop's earlier black/default appearance was a screenshot-launch configuration error, not a theme-file defect. Its normal user configuration selects the registered current theme. Categorical chart colors remain distinct rather than forcing every data series teal.

## Recomputed contrast

| Role | Foreground | Background | Ratio |
| --- | --- | --- | ---: |
| Main text | `#dce3ec` | `#181b23` | 13.31:1 |
| Comments | `#8d96a5` | `#181b23` | 5.77:1 |
| Current-line comments | `#8d96a5` | `#292d3b` | 4.59:1 |
| Selected terminal text | `#f0f3f6` | `#424153` | 8.93:1 |
| btop selection | `#66cccc` | `#424153` | 5.24:1 |
| Primary button | `#181b23` | `#66cccc` | 9.08:1 |

All 50 explicit opaque VS Code foreground/background pairs pass 4.5:1 (minimum 5.77:1). Surface and foreground brightness ramps remain ordered. The editor theme builder reproduces the checked-in file exactly. Ratios describe opaque source colors; user-selected transparency can alter rendered contrast. Neovim current-line/completion corrections use the documented optional addon.

The prior clean-clone app generation checks remain applicable: no runtime palette or template was changed. The screenshot shows sample code and CPU/memory graphs, with the top bar and identifying labels excluded. This is a focused color review, not exhaustive live testing of every integration.

## Catppuccin reference: crisp, soft, and natural

Compared with the [official Catppuccin palettes](https://catppuccin.com/palette/) and the installed Omarchy Catppuccin/Mocha adaptation. The useful inspiration is pastel content colors, consistent surface tiers, and predictable roles. Mountainscape keeps its own hues and hierarchy.

| Property | Mountainscape | Installed Catppuccin |
| --- | --- | --- |
| background | `#181b23` | `#1e1e2e` |
| foreground | `#dce3ec` | `#cdd6f4` |
| cyan | `#66cccc` | `#94e2d5` |
| blue | `#abbcda` | `#89b4fa` |
| green | `#a9bd86` | `#a6e3a1` |
| red | `#dc9698` | `#f38ba8` |

Mountainscape: main background OKLCH chroma 0.016; mean chroma across the six normal chromatic ANSI colors 0.075.

Catppuccin: main background OKLCH chroma 0.030; mean chroma across the six normal chromatic ANSI colors 0.096.

Mountainscape uses less violet in the dark surfaces, more neutral snow-colored text, a glacial teal interaction accent, and quieter powder blue. Moss green, muted gold, and dusty rose connect it to vegetation and mountain light. These are deliberate choices for a refreshing outdoor character. Softness comes from restrained chroma and limited accent area while retaining readable text; it does not require dim comments or indistinct selections. No further palette edits are recommended for this release.

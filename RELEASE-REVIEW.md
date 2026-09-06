# Mountainscape release re-audit

September 6, 2026. Supersedes the earlier blanket licensing-blocker assessment. The owner accepts unknown wallpaper licensing as a documented risk; this review does not treat missing provenance as an automatic release gate.

## Verdict

The theme is visually and technically ready for public testing on Omarchy 4. No runtime defect was found. Publishing the repository and obtaining an official gallery listing are separate steps. Repository visibility remains private; this request authorized a re-audit, not publication.

## Findings

- **Explicit rights notice:** the default valley photograph links to dr.rol’s Flickr page, which displays All rights reserved. This is not an unknown-license case. No permission was found; recommending permission or replacement remains reasonable, but this is not an Omarchy technical restriction.
- **Accepted unknowns:** wallpapers 03 and 04 have source links recorded, but original creators/permissions remain unknown. They remain included under the owner's stated preference. Unknown is not relabeled licensed or public domain.
- **Verified source license:** wallpaper 05 is Hendrik Kespohl’s Dolomites #13 under the Unsplash License.
- **Official gallery submission needs a real desktop shot:** Omarchy’s submission guide calls for a 16:9 real desktop image with a terminal and editor, approximately 1200×675 WebP under 100 KB. The current hero is a clearly labeled illustration, and the native editor capture is portrait. Neither is the requested gallery submission asset. This does not prevent publishing the GitHub repository. Source: https://github.com/omacom/omarchy-site#adding-your-theme
- **Minor default mismatch:** a fresh install chooses mountainscape-03.jpg alphabetically, whereas the review recommends mountainscape.jpg as the default. All four options work; rename the valley file to mountainscape-01.jpg if that recommendation should control first-run behavior.
- **Reuse documentation:** a repository-level license for original theme files remains a recommended open-source packaging step, not a prerequisite for a public repository. The borrowed Omarchy template's MIT notice is already preserved. Wallpaper rights must remain separate.
- **Documentation fixed:** the optional Neovim copy command now uses the installed theme path, so it works without assuming the reader is inside the repository. Removed the earlier blanket statement that the full bundle is barred from release; retained actual source/license evidence.

## Evidence

Runtime configuration, scripts, and image assets are byte-identical to the clean clone that passed isolated Omarchy staging, stock template generation without personal overrides, required app output checks, TOML/JSON parsing, VS Code override preservation, deterministic generation, and Foot validation. No repeat end-to-end test was warranted for documentation-only changes. Rechecked all four wallpaper hashes against the original downloads, palette parsing, editor JSON, tracked symlinks (none), and the active theme name. The previous four-wallpaper visual review remains applicable; no colors or images were changed.

Supported app coverage is generated through Omarchy 4. GTK uses its normal dark appearance/icons; arbitrary websites and every third-party app are not custom-skinned. Neovim completion/current-line refinements require the documented optional addon. Not every app and interactive state was exercised live.

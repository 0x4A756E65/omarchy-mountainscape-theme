-- Optional LazyVim plugin spec. Copy to ~/.config/nvim/lua/plugins/.
-- Correct Aether's blended popup/current-line surfaces for Mountainscape.
return {
  {
    'bjarneo/aether.nvim',
    name = 'aether',
    opts = function(_, opts)
      local previous = opts.on_highlights
      opts.on_highlights = function(highlights, colors)
        if previous then previous(highlights, colors) end
        if colors.bg ~= '#181b23' or colors.accent ~= '#66cccc' then return end
        highlights.CursorLine = { bg = colors.lighter_bg }
        highlights.PmenuSel = { bg = colors.lighter_bg, fg = colors.bright_fg }
        highlights.PmenuMatchSel = { bg = colors.lighter_bg, fg = colors.cyan, bold = true }
        highlights.BlinkCmpMenuSelection = { bg = colors.lighter_bg, fg = colors.bright_fg }
      end
    end,
  },
}

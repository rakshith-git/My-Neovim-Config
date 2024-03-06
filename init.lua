-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("nvim-treesitter.install").compilers = { "clang" }
if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  local alpha = function()
    return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
  end
  vim.g.neovide_transparency = 0.99
  vim.g.transparency = 0.8
  vim.g.neovide_background_color = "#0f1117" .. alpha()
  vim.g.neovide_window_blurred = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_particle_density = 100.0
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_floating_shadow = false
  vim.g.neovide_floating_blur_amount_x = 0.0
  vim.g.neovide_floating_blur_amount_y = 0.0
end
require("luasnip").setup({
  snippets = {
    all = {
      -- Add the path to your snippets directory here
      "~/.config/nvim/snippets/javascript.snippets",
    },
  },
})

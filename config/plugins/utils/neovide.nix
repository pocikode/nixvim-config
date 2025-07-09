{
  extraConfigLua = ''
    if vim.g.neovide then
      local alpha = function()
        return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
      end

      vim.g.transparency = 0
      vim.g.neovide_background_color = vim.g.neovide_background_color .. alpha()
      vim.g.neovide_transparency = 0.8
      vim.g.neovide_floating_blur_amount_x = 8.0
      vim.g.neovide_floating_blur_amount_y = 8.0
      vim.g.neovide_refresh_rate = 120
      vim.g.neovide_cursor_vfx_mode = "pixiedust"
      vim.g.neovide_text_gamma = 0.8
      vim.g.neovide_text_contrast = 0.1
      vim.opt.termguicolors = true
      vim.g.neovide_scale_factor = 1.0
    end
  '';
}

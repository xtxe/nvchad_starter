require "nvchad.options"

-- local opt = vim.opt

-- opt.shiftwidth = 4
-- opt.tabstop = 4
-- opt.softtabstop = 4

-- opt.colorcolumn = "80"

vim.o.guifont = "Hack Nerd Font Mono:h12"

if vim.g.neovide then
  vim.g.neovide_padding_top = 10
  vim.g.neovide_padding_bottom = 10
  -- vim.g.neovide_padding_right = 10
  -- vim.g.neovide_padding_left = 10

  vim.g.neovide_remember_window_size = true

  vim.g.neovide_transparency = 0.95

  vim.g.neovide_cursor_animation_length = 0.13
  vim.g.neovide_cursor_trail_size = 0.1
  -- available values: railgun torpedo pixiedust sonicboom ripple wireframe
  vim.g.neovide_cursor_vfx_mode = "ripple"
  vim.g.neovide_cursor_vfx_opacity = 200.0
  vim.g.neovide_cursor_particle_lifetime = 1.0
  vim.g.neovide_cursor_particle_density = 7.0
  vim.g.neovide_cursor_particle_speed = 10.0

  -- only for railgun mode
  vim.g.neovide_cursor_particle_phase = 1.5
  vim.g.neovide_cursor_particle_curl = 1.0
end

vim.filetype.add {
  extension = {
    launch = "xml",
  },
  filename = {
    ["rabar.config"] = "erlang",
  },
  pattern = {
    [".+%.app%.src"] = "erlang",
  },
}

local nv_gitsigns = require("nvchad.configs.gitsigns")

local options = {
  signs = nv_gitsigns.signs,
  on_attach = function (_, bufnr)
    local gs = package.loaded.gitsigns

    local function opts(desc)
      return { buffer = bufnr, desc = desc }
    end

    local map = vim.keymap.set

    map("n", "<leader>td", gs.toggle_deleted, opts "Toggle Deleted")
    map("n", "<leader>rh", gs.reset_hunk, opts "Reset Hunk")
    map("n", "<leader>ph", gs.preview_hunk, opts "Preview Hunk")
    map("n", "<leader>gb", gs.blame_line, opts "Blame Line")
  end
}

return options

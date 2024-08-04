local nv_gitsigns = require("nvchad.configs.gitsigns")

local options = {
  signs = nv_gitsigns.signs,
  on_attach = function (bufnr)
    nv_gitsigns.on_attach(bufnr)

    local gs = package.loaded.gitsigns

    local function opts(desc)
      return { buffer = bufnr, desc = desc }
    end

    local map = vim.keymap.set

    map("n", "<leader>td", gs.toggle_deleted, opts "Toggle Deleted")
  end
}

return options

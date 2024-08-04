local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "vimdoc",
    "lua",
    "c",
    "cpp",
    "markdown",
    "markdown_inline",
    "python",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<M-Up>',
      node_incremental = '<M-Up>',
      node_decremental = '<M-Down>',
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- c/cpp stuff
    "clangd",
    "clang-format",
    "codelldb",

    -- python
    "black",
    "ruff",
    "pyright",
    "debugpy"
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "build",
      ".vscode",
      "__pycache__"
    }
  },
}

return M

require "nvchad.mappings"

local map = vim.keymap.set

map("i", ",zz", "<ESC>")

-- general
map("n", ",,", ",", { desc = "comma" })
map("n", ",a", "^", { desc = "line go to line start" })
map("n", ",e", "$", { desc = "line go to line end" })
map("n", ",dl", "cc<ESC>", { desc = "line remove whole line" })
map("n", ",wc", "<C-w>c", { desc = "window close" })
map("n", ",wv", "<C-w>v", { desc = "window split vertically" })
map("n", ",ws", "<C-w>s", { desc = "window split horizontally" })

-- nvterm
map("n", ",ti", function()
    require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
  end, { desc = "terminal toggle floating term" })
map("n", ",th", function()
    require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
  end, { desc = "terminal toggle horizontal term" })
map("n", ",tv", function()
    require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
  end, { desc = "terminal toggle vertical term" })

-- tabufline
map("n", ",tt", "<cmd>tabnew<CR>", { desc = "tab new" })
map("n", ",tn", "<cmd>tabnext<CR>", { desc = "tab goto next" })
map("n", ",tp", "<cmd>tabprevious<CR>", { desc = "tab goto previous" })
map("n", ",tc", "<cmd>tabclose<CR>", { desc = "tab close current" })
map("n", ",tl", "<cmd>tablast<CR>", { desc = "tab goto last" })
map("n", ",tf", "<cmd>tabfirst<CR>", { desc = "tab goto first" })

-- telescope
map("n", ",gr", function()
    require("telescope.builtin").lsp_references()
  end, { desc = "telescope references" })
map("n", ",gd", function()
    require("telescope.builtin").lsp_definitions()
  end, { desc = "telescope definitions" })
map("n", ",ss", function()
    require("telescope.builtin").lsp_document_symbols()
  end, { desc = "telescope symbols in document" })
map("n", ",sc", function()
    require("telescope.builtin").lsp_document_symbols({symbols={ "class" }})
  end, { desc = "telescope classes in document" })
map("n", ",sf", function()
    require("telescope.builtin").lsp_document_symbols({symbols={ "function", "method" }})
  end, { desc = "telescope classes in document" })
map("n", ",sd", function()
    require("telescope.builtin").diagnostics()
  end, { desc = "telescope search diagnostics" })

-- diagnostic
map("n", "[d", function()
    vim.diagnostic.goto_prev { float = { border = "rounded" } }
  end, { desc = "diagnostic goto prev" })
map("n", "]d", function()
    vim.diagnostic.goto_next { float = { border = "rounded" } }
  end, { desc = "diagnostic goto next" })

-- dap
map("n", ",db", "<cmd> DapToggleBreakpoint <CR>", { desc = "dap add breakpoint at line" })
map("n", ",dr", "<cmd> DapContinue <CR>", { desc = "dap start or continue the debugger"})

-- dap_python
map("n", ",dpr", function ()
    require("dap-python").test_method()
  end, { desc = "dap python test method" })

local dap = require("dap")

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "cpp",
    request = "launch",
    program = function ()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workshpaceFolder}',
    args = {}
  }
}

dap.configurations.c = dap.configurations.cpp

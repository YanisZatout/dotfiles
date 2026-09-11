return {
  -- C++ and Python LSP support
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          -- OpenFOAM requires compile_commands.json for clangd to work properly
          cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
        },
        pyright = {},
      },
    },
  },
}

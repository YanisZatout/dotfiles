return {
  -- Configure formatters per filetype
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "isort", "black" },
        cpp = { "clang-format" },
        c = { "clang-format" },
        tex = { "latexindent" },
        bib = { "bibtex-tidy" },
      },
      formatters = {
        latexindent = {
          -- -g /dev/null suppresses the generation of indent.log
          -- Removing -w prevents the generation of .bak files
          prepend_args = { "-g", "/dev/null" },
        },
      },
    },
  },

  -- Ensure the binaries are installed via Mason
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "black",
        "isort",
        "clang-format",
        "latexindent",
        "bibtex-tidy",
      })
    end,
  },
}

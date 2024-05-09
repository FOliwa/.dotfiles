-- preventing from installing ruff by MASON
-- it have some problems when I use it behind a proxy
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          mason = false,
        },
      },
    },
  },
}

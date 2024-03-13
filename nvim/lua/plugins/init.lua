return {
    {
        "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}
    },

    {
        "stevearc/conform.nvim",
        config = function()
        require "configs.conform"
        end,
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            git = { enable = true },
            view = { width = 25 },
        },
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
            -- defaults 
            "vim",
            "lua",
            "vimdoc",
            "bash",

            -- web dev 
            "html",
            "css",
            "javascript",
            "typescript",
            "tsx",

            -- low level
            "c",
            "cpp",
            "zig"
      },
    },
  },
}

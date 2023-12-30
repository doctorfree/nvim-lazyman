return {
    {
        "projekt0n/github-nvim-theme",
        lazy = false,
        --event = "VeryLazy",
        priority = 1000,

        config = function()
            require("github-theme").setup({})
        end,
        --cond = false,
    },
    {
        "tanvirtin/monokai.nvim",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        config = function()
            require("monokai").setup({})
        end,
        --cond = false,
    },
    {
        "Allianaab2m/penumbra.nvim",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        config = function()
            require("penumbra").setup({})
        end,
        --cond = false,
    },
    {
        "folke/tokyonight.nvim",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,
        opts = {},
        --cond = false,
    },
    {
        "kihachi2000/yash.nvim",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        --cond = false,
    },
    {
        "EdenEast/nightfox.nvim",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        config = function()
            require("nightfox").setup({})
        end,
        --cond = false,
    },
    {
        "tiagovla/tokyodark.nvim",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        config = function()
            require("tokyodark").setup({})
        end,
        --cond = false,
    },
    {
        "loctvl842/monokai-pro.nvim",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        config = function()
            require("monokai-pro").setup({})
        end,
        --cond = false,
    },
    {
        -- NOTE: duplicate
        "crusoexia/vim-monokai",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        config = function() end,
        cond = false,
    },
    {
        "sainnhe/sonokai",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        config = function()
            vim.g.sonokai_style = "default"
        end,
        --cond = false,
    },
    {
        "voidekh/kyotonight.vim",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        --cond = false,
    },
    {
        "shaunsingh/nord.nvim",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        --cond = false,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        --lazy = false,
        --event = "VeryLazy",
        priority = 1000,

        config = function()
            require("catppuccin").setup({})
        end,
        --cond = false,
    },
    {
        "kyoh86/momiji",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        --cond = false,
    },
    {
        "sainnhe/edge",
        --lazy = false,
        --event = "VeryLazy",
        --priority = 1000,

        config = function()
            vim.g.edge_style = "default"
            vim.g.edge_better_performance = 1
        end,
        --cond = false,
    },
}

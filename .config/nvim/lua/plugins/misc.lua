return {
    { -- "numToStr/Comment.nvim",
        "numToStr/Comment.nvim",
        opts = {},
    },
    { -- "lukas-reineke/indent-blankline.nvim",
        "lukas-reineke/indent-blankline.nvim",
        enable = true,
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    },
    { -- "sei40kr/nvimacs",
        "sei40kr/nvimacs",
        enabled = true,
        lazy = false,
        event = { "InsertEnter *", "CmdlineEnter *" },
        config = function()
        end,
        opts = {},
    },
    { -- "windwp/nvim-autopairs",
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {},
    },
    { -- "nvzone/showkeys",
        "nvzone/showkeys",
        enable = true,
        lazy = true,
        cmd = "ShowkeysToggle",
        opts = {
            timeout = 1,
            maxkeys = 5,
            -- more opts
        },
    },
    { -- "kylechui/nvim-surround",
        "kylechui/nvim-surround",
        enable = true,
        -- lazy = "VeryLazy",
        event = "VeryLazy",
        opts = {},
    },
    { -- "mcauley-penney/visual-whitespace.nvim",
        "mcauley-penney/visual-whitespace.nvim",
        config = true,
        event = "ModeChanged *:[vV\22]", -- optionally, lazy load on entering visual mode	
        opts = {
            enabled = true,
            highlight = {
                link = "Visual",
                default = true,
            },
            match_types = {
                space = true,
                tab = true,
                nbsp = true,
                lead = false,
                trail = false,
            },
            list_chars = {
                space = "·",
                tab = "↦",
                nbsp = "␣",
                lead = "‹",
                trail = "›",
            },
            fileformat_chars = {
                unix = "↲",
                mac = "←",
                dos = "↙",
            },
            ignore = { filetypes = {}, buftypes = {} },
        },
    },
    { -- "folke/which-key.nvim",
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
}

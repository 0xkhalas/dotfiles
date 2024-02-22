return {

	{ 'numToStr/Comment.nvim', opts = {} },

	{
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },

    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme gruvbox")
        end
    },
    --
    
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    'folke/neodev.nvim', -- new

    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            
            'hrsh7th/cmp-nvim-lsp',
            
        },
    },

	--{
	--	'akinsho/flutter-tools.nvim',
	--	lazy = false,
	--	dependencies = {
	--		'nvim-lua/plenary.nvim',
	--		'stevearc/dressing.nvim', -- optional for vim.ui.select
	--	},
	--	config = true,
	--},
	
	{
		'saecki/crates.nvim',
		tag = 'stable',
		config = function()
			require('crates').setup()
		end,
	},

	--{'akinsho/toggleterm.nvim', version = "*", config = true},

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },


    { 
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' } 
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },


    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                icons_enabled = true,
                theme = 'onedark',
            })
        end,
    },

--	{
--		"nvim-tree/nvim-tree.lua",
--		version = "*",
--		lazy = false,
--		dependencies = {
--			"nvim-tree/nvim-web-devicons",
--		},
--		config = function()
--			require("nvim-tree").setup {}
--		end,
--	},

	--{
	--	"ray-x/lsp_signature.nvim",
	--	--event = "VeryLazy",
	--	opts = {},
	--	config = function(_, opts) require'lsp_signature'.setup(opts) end
	--}

}

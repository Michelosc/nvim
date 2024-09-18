local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"folke/tokyonight.nvim",
	-- {
	-- 	"craftzdog/solarized-osaka.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- },
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	},
	"nvim-lualine/lualine.nvim",
	"theprimeagen/harpoon",
	"mbbill/undotree",
	"windwp/nvim-autopairs",
	"numToStr/Comment.nvim",
	"akinsho/bufferline.nvim",
	"moll/vim-bbye",
	"akinsho/toggleterm.nvim",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	"christianchiarulli/lua-dev.nvim",
	"b0o/SchemaStore.nvim",
	"goolord/alpha-nvim",
	"lewis6991/impatient.nvim",

	-- Completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	"saadparwaiz1/cmp_luasnip",
	"rcarriga/cmp-dap",
  "onsails/lspkind.nvim",

	-- Git
	"f-person/git-blame.nvim",
	"lewis6991/gitsigns.nvim",

	-- DAP
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	"ravenxrz/DAPInstall.nvim",
	"simrat39/rust-tools.nvim",
	"nvim-telescope/telescope-dap.nvim",
	"theHamsta/nvim-dap-virtual-text",
	"leoluz/nvim-dap-go",

	-- Treesitter
	{ "nvim-treesitter/nvim-treesitter", dependencies = { "nvim-lua/plenary.nvim" } },
	"JoosepAlviste/nvim-ts-context-commentstring",
	"nvim-treesitter/playground",
	"HiPhish/rainbow-delimiters.nvim",

	-- Telescope
	"nvim-telescope/telescope.nvim",

	-- Snippets
	"rafamadriz/friendly-snippets",
	"L3MON4D3/LuaSnip",

	-- LSP
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"jose-elias-alvarez/null-ls.nvim",
	"RRethy/vim-illuminate",
  "WhoIsSethDaniel/mason-tool-installer.nvim",
	-- Java
	"mfussenegger/nvim-jdtls",

	-- Typescript
	"jose-elias-alvarez/typescript.nvim",

	-- Go
	"fatih/vim-go",

  "windwp/nvim-ts-autotag",

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},
})

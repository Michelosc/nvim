require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all"
	ensure_installed = {
    "bash",
    "c",
    "diff",
    "html",
    "javascript",
    "java",
    "jsdoc",
    "json",
    "jsonc",
    "lua",
    "luadoc",
    "luap",
    "markdown",
    "markdown_inline",
    "printf",
    "python",
    "query",
    "regex",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "vimdoc",
    "xml",
    "yaml",
  },
	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,
	auto_install = true,
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true,
	},
	playground = {
		enable = true,
	},
})


require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"rust",
		"lua",
		"html",
		"markdown",
		"svelte",
		"typescript",
		"query",
		"css",
		"git_rebase",
		"astro",
		"gitignore",
		"git_rebase",
	},

	sync_install = false,
	auto_install = true,
	indent = { enable = true },
	autotag = { enable = true },

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})

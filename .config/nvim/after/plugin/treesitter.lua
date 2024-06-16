require("nvim-ts-autotag").setup()
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"html",
		"typescript",
		"svelte",
		"css",
		"bash",
		"lua",
		"query",
		"gitignore",
		"git_rebase",
		"markdown",
		"rust",
		"toml",
		"go",
		"gomod",
	},
	ignore_install = {},

	auto_install = true,
	sync_install = false,
	indent = { enable = true },
	highlight = { enable = true },
})


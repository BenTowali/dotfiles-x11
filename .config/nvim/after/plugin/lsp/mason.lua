require("mason").setup()

-- Language Servers
require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"lua_ls",
		"bashls",
		"tailwindcss",
		"svelte",
		"cssls",
		"rust_analyzer",
		"gopls",
	},
})

-- Linters & Formatters
require("mason-tool-installer").setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"gofumpt",
	},
})


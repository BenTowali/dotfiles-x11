require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"bashls",
		"tailwindcss",
		"tsserver",
		"svelte",
		"rust_analyzer",
		"cssls",
		"astro",
	},
})
require("mason-null-ls").setup({
	ensure_installed = {
		"prettierd",
		"stylua",
		"eslint_d",
		"shfmt",
		"stylelint",
	},
})

require("cmp_nvim_lsp").setup()
local on_attach = function(bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
	vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
	vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
end
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})
require("lspconfig").bashls.setup({ capabilities = capabilities, on_attach = on_attach })
require("lspconfig").tailwindcss.setup({ capabilities = capabilities, on_attach = on_attach })
require("lspconfig").tsserver.setup({ capabilities = capabilities, on_attach = on_attach })
require("lspconfig").svelte.setup({ capabilities = capabilities, on_attach = on_attach })
require("lspconfig").rust_analyzer.setup({ capabilities = capabilities, on_attach = on_attach })
require("lspconfig").cssls.setup({ capabilities = capabilities, on_attach = on_attach })
require("lspconfig").astro.setup({ capabilities = capabilities, on_attach = on_attach })

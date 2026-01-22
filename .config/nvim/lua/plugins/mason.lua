return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			-- Python
			"ty",
			"ruff",
			-- Lua
			"lua_ls",
			"stylua",
			-- Markdown
			"marksman",
			-- C,
			"clangd",
		},
		automatic_enable = true,
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {},
		},
		"neovim/nvim-lspconfig",
	},
}

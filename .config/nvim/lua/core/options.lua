vim.g.mapleader = " "
vim.g.localmapleader = " "

vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.number = true
vim.opt.relativenumber = true

vim.diagnostic.config({ virtual_text = true })

vim.opt.termguicolors = true
vim.opt.swapfile = false

-- Langmap for Russian (US, phonetic) keyboard layout
vim.opt.langmap =
	"АБЦДЕФГХИЙКЛМНОПЯРСТУЖВЬЫЗ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,абцдефгхийклмнопярстужвьыз;abcdefghijklmnopqrstuvwxyz"

-- Only activate spelling in russian for markdown and text files
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "md", "txt" },
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "ru"
	end,
})

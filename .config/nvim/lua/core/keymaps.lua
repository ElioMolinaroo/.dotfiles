-- Vim motions
vim.keymap.set("i", "<F13>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("v", "<F13>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("c", "<F13>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("t", "<F13>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.keymap.set("o", "<F13>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, 'Y', '"+y', { noremap = true, silent = true })

-- Custom commands
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
vim.keymap.set({ "n", "t" }, "<space>tt", "<cmd>Floaterminal<CR>")

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gd", vim.lsp.buf.references, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)

-- Formatting
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true })
    vim.lsp.buf.format()
end)

-- Oil
vim.keymap.set("n", "-", "<cmd>Oil<CR>")

-- Telescope
vim.schedule(function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>f.", function()
        builtin.find_files({ hidden = true, ignore = false })
    end, {})
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
    vim.keymap.set("n", "<leader>en", function()
        builtin.find_files({
            cwd = vim.fn.stdpath("config"),
        })
    end)
end)

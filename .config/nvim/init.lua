require("core")
require("lazy_conf")
require("lsp_conf")

-- Use Powershell as  default terminal if the system is not UNIX-based
if vim.fn.has("win32") == 1 then
	vim.o.shell = "powershell.exe"
end

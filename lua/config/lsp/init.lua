local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "config.lsp.mason"
require("config.lsp.handlers").setup()
require "config.lsp.null-ls"
require'lspconfig'.typst_lsp.setup{
	settings = {
		exportPdf = "onType" -- Choose onType, onSave or never.
        -- serverPath = "" -- Normally, there is no need to uncomment it.
	}
}

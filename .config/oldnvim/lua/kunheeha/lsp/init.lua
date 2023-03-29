local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("kunheeha.lsp.lsp-installer")
require("kunheeha.lsp.handlers").setup()

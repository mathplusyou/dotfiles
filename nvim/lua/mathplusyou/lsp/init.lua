local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "mathplusyou.lsp.lsp-installer"
require("mathplusyou.lsp.handlers").setup()
require "mathplusyou.lsp.null-ls"

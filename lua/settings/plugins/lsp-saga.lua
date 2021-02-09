local saga = require 'lspsaga'

saga.init_lsp_saga {
  max_diag_msg_width       = 120,
  border_style             = 2,
  use_saga_diagnostic_sign = true,
  error_header             = "   Error",
  warn_header              = "   Warn",
  hint_header              = "   Hint",
  infor_header             = "   Info",
}

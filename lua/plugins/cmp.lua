return {
  "hrsh7th/nvim-cmp",
  opts = function()
    local cmp = require("cmp")
    return {
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    }
  end,
}

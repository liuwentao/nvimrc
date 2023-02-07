local utils = require("utils")

utils.require("config.options")
utils.require("config.packer")
utils.require("config.colorscheme")

utils.require("config.keymapper")
-- utils.require("hop").setup()
-- utils.require("lualine").setup()

utils.require("config.plugins")
utils.require("config.lsp")

-- utils.require("config.keymaps")
-- utils.require("core.pack").setup()
-- utils.require("core.colorscheme").setup()

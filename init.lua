local NVIM_VERSION = require("utils").get_nvim_version()
local strict_version = require("utils.yamler").get_value("strict_version")

if NVIM_VERSION ~= "0.9.0" and strict_version then
    vim.api.nvim_err_writeln("Your nvim version is unexpected")
else
    require("core")
end


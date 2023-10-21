local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = "all",
  sync_install = false,
  ignore_install = { "tlaplus" }, -- List of parsers to ignore installing
  highlight = {
    enable = false, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true, disable = { "yaml" } },
    rainbow = {
        enable = false,
        extended_mode = true,
    },
    playground = {
        enable = true,
    }
}

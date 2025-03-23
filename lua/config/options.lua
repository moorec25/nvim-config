local options = {

    -- Tabs

    softtabstop = 4,
    tabstop = 4,
    expandtab = true,
    autoindent = true,
    smartindent = true,
    shiftwidth = 4,

    -- UI

    number = true,
    showcmd = true,
    splitright = true,
    splitbelow = false,
    scrolloff = 8,
    sidescrolloff = 8,
    wrap = false,
    showmatch = true,

    ignorecase = true,
    smartcase = true,
    fileencoding = "utf-8",
    --termguicolors = true,

}

for k, v in pairs(options) do
    vim.opt[k] = v
end


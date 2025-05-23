return{
    {
        "shaunsingh/nord.nvim",
        name = "nord",
        priority = 1000
    },

    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        lazy = false, -- neo-tree will lazily load itself
        ---@module "neo-tree"
        ---@type neotree.Config?
        opts = {
            -- fill any relevant options here
        },
    },

    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
}

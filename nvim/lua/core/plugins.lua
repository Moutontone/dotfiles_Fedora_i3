local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- theme
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
    },

    -- telescope
    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    -- Treesitter --
    -- language parsers
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    -- playground to see the tree inside treesitter
    "nvim-treesitter/playground",

    -- Harpoon --
    -- used to navigate between selected files
    "theprimeagen/harpoon",

    -- undoTree
    -- visualize undo history
    "mbbill/undotree",

    -- fugitive
    -- best git wraper
    "tpope/vim-fugitive",

    -- LSP --
    -- using lsp-zero
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    },

    -- Neorg --
    -- note taking in neovim
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.integrations.zen_mode"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/notes",
                            },
                        },
                    },
                },
            }
        end,
    },

    -- zen mode --
    {
      "folke/zen-mode.nvim",
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    }
}

local opts = {}

require("lazy").setup(plugins, opts)

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope --
    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Color scheme --

    -- Kanagawa that uses treesitter
    use({
        'rebelot/Kanagawa.nvim',
        as = 'kanagawa',
        config = function()
            vim.cmd('colorscheme kanagawa')
        end
    })

    -- Treesitter --
    -- language parsers
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    -- playground to see the tree inside treesitter
    use('nvim-treesitter/playground')

    -- Harpoon --
    -- used to navigate between selected files
    use('theprimeagen/harpoon')

    -- undoTree
    -- visualize undo history
    use('mbbill/undotree')

    -- fugitive
    -- best git wraper
    use("tpope/vim-fugitive")

    -- LSP --
    -- using lsp-zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
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
    }

    -- null-ls --
    -- used for formating in python
    use {
        'jay-babu/mason-null-ls.nvim',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'jose-elias-alvarez/null-ls.nvim' },
        }
    }

    -- neorg
    -- for taking notes
    use {
        "nvim-neorg/neorg",
        config = function()
            require('neorg').setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = {  -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/notes",
                            },
                        },
                    },
                },
            }
        end,
        run = ":Neorg sync-parsers",
        requires = "nvim-lua/plenary.nvim",
    }

    -- vimtex
    -- plugin for latex
    use 'lervag/vimtex'

    -- plugins to add
    -- vim tmux navigato
    -- allows movements between tmux panes and nvim
    use("christoomey/vim-tmux-navigator")
end)

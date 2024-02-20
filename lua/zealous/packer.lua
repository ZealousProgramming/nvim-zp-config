vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    -- use {'neoclide/coc.nvim', branch = 'release'}
    use 'neovim/nvim-lspconfig'
    use 'nvim-tree/nvim-web-devicons'
    use {"ray-x/lsp_signature.nvim"}
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'}, -- Required
            { -- Optional
                'williamboman/mason.nvim',
                run = function() pcall(vim.cmd, 'MasonUpdate') end
            }, {'williamboman/mason-lspconfig.nvim'}, -- Optional
            -- Autocompletion
            {'hrsh7th/nvim-cmp'}, -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'} -- Required
        }
    }

    -- Extras
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons' -- optional
        }
    }

    -- Langs
    use {'tetralux/odin.vim'}

    -- Themes
    use({'ZealousProgramming/ghoul'})
    use({'ghifarit53/tokyonight-vim'})
    use({'rose-pine/neovim', as = 'rose-pine'})
    use({'alessandroyorba/despacio'})
    use {'nyoom-engineering/oxocarbon.nvim'}

end)

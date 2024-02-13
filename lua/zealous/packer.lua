vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } )
	use {'neoclide/coc.nvim', branch = 'release'}
	use 'neovim/nvim-lspconfig'
	use 'nvim-tree/nvim-web-devicons'
	use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

	-- Extras
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	-- Langs
	use {'tetralux/odin.vim'}

	-- Themes
	use({ 'ghifarit53/tokyonight-vim' })
	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use({ 'alessandroyorba/despacio' })
	use {
		'baliestri/aura-theme',
		rtp = 'packages/neovim',
		as = 'aura-dark',
		--config = function()
			--vim.cmd("colorscheme aura-dark") -- Or any Aura theme available
		--end
	}
	use {'nyoom-engineering/oxocarbon.nvim'}

end)

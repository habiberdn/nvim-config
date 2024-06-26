require('go').setup()
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'ray-x/go.nvim'
	use 'ray-x/guihua.lua' -- recommended if need floating window support
	use 'neovim/nvim-lspconfig'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }


	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup {
				icons = false,
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
    })
    use {
        "windwp/nvim-ts-autotag",
    }
    
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,}
        use("nvim-treesitter/playground")
        use("theprimeagen/harpoon")
        use("theprimeagen/refactoring.nvim")
        use("mbbill/undotree")
        use("tpope/vim-fugitive")
        use("nvim-treesitter/nvim-treesitter-context");

        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v1.x',
            requires = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},

                -- Autocompletion
                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-buffer'},
                {'hrsh7th/cmp-path'},
                {'saadparwaiz1/cmp_luasnip'},
                {'hrsh7th/cmp-nvim-lsp'},
                {'hrsh7th/cmp-nvim-lua'},

                -- Snippets
                {'L3MON4D3/LuaSnip'},
                {'rafamadriz/friendly-snippets'},
            }
        }

        use("folke/zen-mode.nvim")
        use("eandrju/cellular-automaton.nvim")
        use("laytan/cloak.nvim")
        use { "catppuccin/nvim", as = "catppuccin" }
        use {
            'numToStr/Comment.nvim',
            config = function()
                require('Comment').setup()
            end
        }
        use {
            'akinsho/flutter-tools.nvim',
            requires = {
                'nvim-lua/plenary.nvim',
                'stevearc/dressing.nvim', -- optional for vim.ui.select
            },
        }
        use { 'mhartington/formatter.nvim' }
        use('lewis6991/gitsigns.nvim')
        use('jose-elias-alvarez/null-ls.nvim')
        use('MunifTanjim/prettier.nvim')
        use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
        use {
            'chikko80/error-lens.nvim',
            requires = {'nvim-telescope/telescope.nvim'}
        }

    end)

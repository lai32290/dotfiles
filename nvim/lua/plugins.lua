vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'tpope/vim-fugitive'
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup()
        end
    })
    use 'mattn/emmet-vim'
    use {
        'pangloss/vim-javascript',
        cond = false
    }
    use {
        'mxw/vim-jsx',
        cond = false
    }
    use {
        'peitalin/vim-jsx-typescript',
        cond = false
    }
    use {
        'leafgarland/typescript-vim',
        cond = false
    }
    use 'SirVer/ultisnips'
    use 'dart-lang/dart-vim-plugin'
    use 'tiagofumo/dart-vim-flutter-layout'
    use 'thosakwe/vim-flutter'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use { 'prettier/vim-prettier', run = 'yarn install' }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })

    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'kyazdani42/nvim-web-devicons'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        }
    }
    use 'ggandor/leap.nvim'

    use "lukas-reineke/indent-blankline.nvim"

    use {
        'pwntester/octo.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'kyazdani42/nvim-web-devicons',
        },
        config = function ()
            require"octo".setup()
        end
    }

    use {
        "AckslD/nvim-neoclip.lua",
        requires = {
            {'nvim-telescope/telescope.nvim'},
            {'ibhagwan/fzf-lua'},
        },
        config = function()
            require('neoclip').setup()
        end,
    }

    use { "LinArcX/telescope-command-palette.nvim" }
    use({ "kelly-lin/telescope-ag", requires = { { "nvim-telescope/telescope.nvim" } } })
    use {
        "ThePrimeagen/harpoon",
        requires = {
            { "nvim-lua/plenary.nvim" }
        }
    }

    -- use {
    --     'VonHeikemen/lsp-zero.nvim',
    --     branch = 'v1.x',
    --     requires = {
    --         -- LSP Support
    --         {'neovim/nvim-lspconfig'},             -- Required
    --         {'williamboman/mason.nvim'},           -- Optional
    --         {'williamboman/mason-lspconfig.nvim'}, -- Optional

    --         -- Autocompletion
    --         {'hrsh7th/nvim-cmp'},         -- Required
    --         {'hrsh7th/cmp-nvim-lsp'},     -- Required
    --         {'hrsh7th/cmp-buffer'},       -- Optional
    --         {'hrsh7th/cmp-path'},         -- Optional
    --         {'saadparwaiz1/cmp_luasnip'}, -- Optional
    --         {'hrsh7th/cmp-nvim-lua'},     -- Optional

    --         -- Snippets
    --         {'L3MON4D3/LuaSnip'},             -- Required
    --         {'rafamadriz/friendly-snippets'}, -- Optional
    --     }
    -- }

    use 'neovim/nvim-lspconfig'
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'quangnguyen30192/cmp-nvim-ultisnips'
    use "folke/neodev.nvim"
    use {
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup{}
        end
    }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }

    use {
        '/Users/lai/Documents/Projects/Personal/nvim-plugins/cheatsheet'
    }

    use "tpope/vim-dadbod"
    use "kristijanhusak/vim-dadbod-ui"
    use "kristijanhusak/vim-dadbod-completion"
    use "andreshazard/vim-freemarker"

end)

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

    -- telescope
    use {
    	'nvim-telescope/telescope.nvim', tag = '0.1.4',
    	-- or                            , branch = '0.1.x',
    	requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'tjdevries/colorbuddy.nvim'
    -- colors
    use( "savq/melange-nvim" )
--    use( 'svrana/neosolarized.nvim' )
    use( 'nxvu699134/vn-night.nvim' )
    use( 'folke/tokyonight.nvim' )
    use( 'mhartington/oceanic-next' )
    use( 'Yazeed1s/minimal.nvim' )
    use( "cpea2506/one_monokai.nvim" )
    use( 'gbprod/nord.nvim' )
    use( 'tomasiser/vim-code-dark' )
--    use( 'sainnhe/sonokai' )
--    use( 'Abstract-IDE/Abstract-cs' )
--    use( 'ldelossa/vimdark' )
--    use({ 'rose-pine/neovim', as = 'rose-pine' })
--    use( 'Mofiqul/adwaita.nvim' )
--    use({"adisen99/apprentice.nvim", requires = {"rktjmp/lush.nvim"}})
--    use( 'marko-cerovac/material.nvim' )
--    use( 'Th3Whit3Wolf/onebuddy' )
--    use( 'sainnhe/edge' )
--    use( 'yashguptaz/calvera-dark.nvim' )

    -- treesitter
    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use( 'nvim-treesitter/playground' )
    use( 'nvim-lua/plenary.nvim' )

    -- harpoon
    use( 'ThePrimeagen/harpoon' )

    -- more powerfull undos
    use( 'mbbill/undotree' )

    -- git
    use( 'tpope/vim-fugitive' )

    -- lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}

    -- AI
    use ( 'Exafunction/codeium.vim' )

    -- Markdown
    --use({ "iamcco/markdown-preview.nvim",
    --run = function() vim.fn["mkdp#util#install"]() end, })

    --use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })

    use "lukas-reineke/indent-blankline.nvim" -- Add indentation guides even on blank lines
    use 'nvim-lualine/lualine.nvim' -- Fancier statusline

    use 'ThePrimeagen/vim-be-good'

end)

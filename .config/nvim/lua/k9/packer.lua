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
    --use( 'svrana/neosolarized.nvim' )
    use( 'nxvu699134/vn-night.nvim' )
    use( 'folke/tokyonight.nvim' )
    use( 'mhartington/oceanic-next' )
    use( 'Yazeed1s/minimal.nvim' )
    use( "cpea2506/one_monokai.nvim" )
    use( 'gbprod/nord.nvim' )
    use( 'tomasiser/vim-code-dark' )
    --use( 'sainnhe/sonokai' )
    --use( 'Abstract-IDE/Abstract-cs' )
    --use( 'ldelossa/vimdark' )
    --use({ 'rose-pine/neovim', as = 'rose-pine' })
    --use( 'Mofiqul/adwaita.nvim' )
    --use({"adisen99/apprentice.nvim", requires = {"rktjmp/lush.nvim"}})
    --use( 'marko-cerovac/material.nvim' )
    --use( 'Th3Whit3Wolf/onebuddy' )
    --use( 'sainnhe/edge' )
    --use( 'yashguptaz/calvera-dark.nvim' )

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

    use 'wellle/context.vim' -- function at top of screen

    use { 
        "R-nvim/R.nvim",
        config = function()
            -- Create a table with the options to be passed to setup()
            ---@type RConfigUserOpts
            local opts = {
                hook = {
                    on_filetype = function()
                        vim.api.nvim_buf_set_keymap(0, "n", "<Enter>", "<Plug>RDSendLine", {})
                        vim.api.nvim_buf_set_keymap(0, "v", "<Enter>", "<Plug>RSendSelection", {})
                    end
                },
                R_args = {"--quiet", "--no-save"},
                min_editor_width = 72,
                assignment_keymap = "",
                pipe_keymap = "",
                insert_mode_cmds = false,
                --user_maps_only = true,
                rconsole_width = 78,
                disable_cmds = {
                    "RClearConsole",
                    "RCustomStart",
                    "RSPlot",
                    "RSaveClose",
                },
            }
            -- Check if the environment variable "R_AUTO_START" exists.
            -- If using fish shell, you could put in your config.fish:
            -- alias r "R_AUTO_START=true nvim"
            if vim.env.R_AUTO_START == "true" then
                opts.auto_start = "on startup"
                opts.objbr_auto_start = true
            end
            require("r").setup(opts)
        end,
    }

--    use {
--        "nvim-neorg/neorg",
--        rocks = { "lua-utils.nvim", "nvim-nio", "nui.nvim", "plenary.nvim", "pathlib.nvim" },
--        tag = "*", -- Pin Neorg to the latest stable release
--        config = function()
--            require("neorg").setup()
--        end,
--    }
end)

-- Lazy as Plugin Manager

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins

require("lazy").setup({
	{ "phaazon/hop.nvim" }, 
	{
	    "nvim-neo-tree/neo-tree.nvim",
	    branch = "v3.x",
	    dependencies = {
	      "nvim-lua/plenary.nvim",
	      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	      "MunifTanjim/nui.nvim",
		}
	}, 
	{ "nvim-treesitter/nvim-treesitter" }, -- for easy install parsers
	{ "neovim/nvim-lspconfig" }, 
	-- colorschemes
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true},
	--{"joshdick/onedark.vim"},
	--{"rebelot/kanagawa.nvim"}, 
	-- autocomplete
	{"hrsh7th/cmp-nvim-lsp"}, 
	{"hrsh7th/cmp-buffer"}, 
	{"hrsh7th/cmp-path"},
    	{"hrsh7th/cmp-cmdline"}, 
	{"hrsh7th/nvim-cmp"}, 
	{"lewis6991/gitsigns.nvim"},
	-- mason for lsp servers
	{"williamboman/mason.nvim", build = ":MasonUpdate"}, 
	-- telescope for fast search
	{"nvim-telescope/telescope.nvim", tag = "0.1.8", dependencies = { "nvim-lua/plenary.nvim" }},
    -- terminal
    --{'akinsho/toggleterm.nvim', version = "*", config = true},  NOT WORKS!!!
    -- extra info about opened file
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
        }
    },
    -- show changes related previous commit
    {'lewis6991/gitsigns.nvim'}

})

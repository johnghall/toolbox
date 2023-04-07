return {
	{ "rose-pine/neovim", name = "rose-pine" },
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{ "christoomey/vim-tmux-navigator" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "windwp/nvim-autopairs" },
	{ "windwp/nvim-ts-autotag" },
	{ "mbbill/undotree" },
	{ "tpope/vim-fugitive" },
	{ "szw/vim-maximizer" },
	{ "tpope/vim-surround" },
	{ "vim-scripts/ReplaceWithRegister" },
	{ "numToStr/Comment.nvim" },
	{ "nvim-tree/nvim-tree.lua" },
	{ "nvim-tree/nvim-web-devicons" },
	{ "folke/trouble.nvim" },
	{ "folke/todo-comments.nvim" },
	{ "folke/which-key.nvim" },
	{ "nvim-lualine/lualine.nvim" },
	{ "lewis6991/gitsigns.nvim" },
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
	},
	{
		"zbirenbaum/copilot-cmp",
	},
}

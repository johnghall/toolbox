local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

local trouble = require("trouble.providers.telescope")

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
				["<C-x>"] = trouble.open_with_trouble,
			},
			n = {
				["<C-x>"] = trouble.open_with_trouble,
			},
		},
	},
})

telescope.load_extension("fzf")

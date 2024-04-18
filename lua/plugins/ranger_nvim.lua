return {
	"kelly-lin/ranger.nvim",
	config = function()
		local ranger_nvim = require("ranger-nvim")
		ranger_nvim.setup({
			enable_cmds = true,
			replace_netrw = true,
			keybinds = {
				["ov"] = ranger_nvim.OPEN_MODE.vsplit,
				["oh"] = ranger_nvim.OPEN_MODE.split,
				["ot"] = ranger_nvim.OPEN_MODE.tabedit,
				["or"] = ranger_nvim.OPEN_MODE.rifle,
			},
			ui = {
				border = "none",
				height = 1,
				width = 1,
				x = 0.5,
				y = 0.5,
			},
		})
		vim.api.nvim_set_keymap("n", "<leader>ef", "", {
			noremap = true,
			callback = function()
				ranger_nvim.open(true)
			end,
			desc = "Open Ranger",
		})
	end,
}
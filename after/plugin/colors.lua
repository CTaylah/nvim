

function ColorStuff(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalNC", {bg = "none"})
end

ColorStuff()

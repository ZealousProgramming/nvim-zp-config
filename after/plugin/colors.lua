require("rose-pine").setup({
	disable_background = true
})


function SetupColor(color, hide_background)
		-- color = color or "despacio"
		color = color or "ghoul"
		hide_background = hide_background or false




		vim.cmd.colorscheme(color)

		if hide_background == true then
			vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
			vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
		end
end

-- function SetupColorGlobals()
-- 		vim.g.tokyonight_transparent_background = 1
-- end

-- SetupColorGlobals()	
SetupColor()


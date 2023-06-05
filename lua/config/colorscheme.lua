local colorscheme = "github_dark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end

-- options for material dark are: darker, lighter, deep ocean, oceanic, palenight 
if colorscheme == "material" then
	require("material.functions").change_style("darker")
end

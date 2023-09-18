local vim = vim

local function start_typst_watch()
   local filename = vim.fn.expand('%:r')
   local typst_cmd = string.format("typst watch %s.typ", filename)
   local mupdf_cmd = string.format("updf %s.pdf", filename)
   vim.fn.jobstart(typst_cmd, {detach = true})
   vim.fn.jobstart(mupdf_cmd, {detach = true})
end

return {
   start_typst_watch = start_typst_watch
}

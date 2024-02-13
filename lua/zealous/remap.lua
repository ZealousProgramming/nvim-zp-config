local map = vim.keymap.set
local nr_opt = { noremap = true, silent = true }

vim.g.mapleader = " "

vim.api.nvim_command("set nu")
vim.api.nvim_command("set tabstop=4 softtabstop=4")

map("n", "<leader>hl", ":nohl<CR>", opts)
map("n", "<leader>hl", ":nohl<CR>", opts)

map("n", "<leader>sd", ":call CocActionAsync('doHover')<CR>", opts)

local ac_opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
map("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', ac_opts)
map("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- ----------------
--    - Barbar -
-- ----------------
map("n", "<A-c>", ":BufferClose<CR>", opts)
map("n", "<C-l>", ":BufferNext<CR>", opts)
map("n", "<C-h>", ":BufferPrevious<CR>", opts)
map("n", "<C-PageDown>", ":BufferMovePrevious<CR>", opts)
map("n", "<C-PageUp>", ":BufferMoveNext<CR>", opts)

-- Nvim Tree
map("n", "<leader>tt", ":NvimTreeToggle<CR>", opts)

-- Themes
map("n", "<leader>des", ":lua SetupColor(\"despacio\")<CR>", opts)
map("n", "<leader>rose", ":lua SetupColor(\"rose-pine\", true)<CR>", opts)
map("n", "<leader>dark", ":lua SetupColor(\"dark-aura\")<CR>", opts)
map("n", "<leader>tokyo", ":lua SetupColor(\"tokyonight-vim\")<CR>", opts)
map("n", "<leader>carbon", ":lua SetupColor(\"oxocarbon\")<CR>", opts)

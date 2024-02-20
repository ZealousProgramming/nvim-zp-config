local map = vim.keymap.set
local nr_opt = {noremap = true, silent = true}

vim.g.mapleader = " "

vim.api.nvim_command("set nu")
vim.api.nvim_command("set tabstop=4 softtabstop=4")

map("n", "<leader>hl", ":nohl<CR>", opts)
map("n", "<leader>hl", ":nohl<CR>", opts)

-- local ac_opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
-- map("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', ac_opts)
-- map("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- ----------------------
--      - LSP -

map('n', '<leader>do', vim.diagnostic.open_float)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = {buffer = ev.buf}
        map('n', 'gD', vim.lsp.buf.declaration, opts)
        map('n', 'gd', vim.lsp.buf.definition, opts)
        map('n', 'sd', vim.lsp.buf.hover, opts)
        map('n', 'gi', vim.lsp.buf.implementation, opts)
        map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        -- map('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        -- map('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        -- map('n', '<space>wl', function()
        --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        -- end, opts)
        map('n', '<leader>D', vim.lsp.buf.type_definition, opts)
        map('n', '<leader>rn', vim.lsp.buf.rename, opts)
        map({'n', 'v'}, '<space>ca', vim.lsp.buf.code_action, opts)
        map('n', 'gr', vim.lsp.buf.references, opts)
        map('n', '<leader>ff', function()
            vim.lsp.buf.format {async = true}
        end, opts)
    end
})

-- -----------------------
--    - LSP SIGNATURE -
-- -----------------------
map("n", '<leader>fs',
    function() require('lsp_signature').toggle_float_win() end,
    {silent = true, noremap = true, desc = 'toggle signature'})

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

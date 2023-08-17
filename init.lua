-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- the copilot key map, using Ctrol+F instead of <tab>
vim.g.copilot_no_tab_map = true

vim.g.copilot_assume_mapped = true

vim.api.nvim_set_keymap("i", "<C-f>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

--vim.api.nvim_set_keymap('n', '<leader>gr', ':GoRun<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<leader>gf', ':GoFmt<CR>', { noremap = true, silent = true })
vim.api.nvim_set_current_dir("g:/workspace/")


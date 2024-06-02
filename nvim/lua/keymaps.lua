-----------------------------------------------------
-- キーマップ
-----------------------------------------------------

vim.g.mapleader = ' '

-- insert モードを抜けたときにIMEをOFF
if vim.fn.executable('zenhan') then
  vim.cmd('autocmd InsertLeave * :call system("zenhan 0")')
  vim.cmd('autocmd CmdlineLeave * :call system("zenhan 0")')
end

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Insert mode mappings
keymap.set('i', 'jk', '<ESC>', opt)

-- Normal mode mappings
keymap.set('n', 'J', '10j', opt)
keymap.set('n', 'K', '10k', opt)
keymap.set('n', 'H', '^', opt)
keymap.set('n', 'L', '$', opt)
keymap.set('n', '+', '<C-a>', opt)
keymap.set('n', '-', '<C-x>', opt)
keymap.set('n', '<C-a>', 'ggVG', opt)
keymap.set('n', 'U', '<C-r>', opt)
keymap.set('n', 'zb', 'zk', opt)
keymap.set('n', 'zb', 'zk', opt)
keymap.set('n', 'zt', 'zj', opt)

-- Visual mode mappings
keymap.set('v', 'v', 'C-v', opt)
keymap.set('v', ',', '<ESC>ggVG', opt)
keymap.set("v", "H", "^", opts)
keymap.set("v", "L", "$", opts)

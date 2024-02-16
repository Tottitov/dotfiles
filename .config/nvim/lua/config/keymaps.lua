vim.g.mapleader = " "

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- move text down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- move test up

vim.keymap.set('x', '<leader>v', [["_dP]]) -- replace/paste

vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- yank motion
vim.keymap.set({'n', 'v'}, '<leader>Y', '"+Y') -- yank line

vim.keymap.set({'n', 'v'}, '<leader>d', '"+d') -- delete motion
vim.keymap.set({'n', 'v'}, '<leader>D', '"+D') -- delete line

vim.keymap.set('n', '<leader>p', '"+p') -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P') -- paste before cursor

vim.keymap.set('n', '<leader>n', ':enew<CR>') -- create new buffer
vim.keymap.set('n', '<leader>l', ':bnext<CR>') -- left buffer
vim.keymap.set('n', '<leader>h', ':bprev<CR>') -- right buffer

vim.keymap.set('n', '<leader>i', 'gg=G<CR>') -- auto indent

-- compile R markdown into PDF
vim.keymap.set('n', '<leader>c', [[:!R -e "rmarkdown::render('%:p')"<CR>]])

-- toggle spellcheck
vim.keymap.set('n', '<leader>o', ':setlocal spell! spelllang=en_us<CR>')

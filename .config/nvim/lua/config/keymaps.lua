local keymap = vim.keymap

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

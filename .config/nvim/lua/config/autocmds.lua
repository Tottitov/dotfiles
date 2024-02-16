-- save as sudo
vim.api.nvim_create_user_command('W', 'silent! w !sudo tee % >/dev/null', {})

-- auto remove trailing spaces
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    command = [[%s/\s\+$//e]],
})

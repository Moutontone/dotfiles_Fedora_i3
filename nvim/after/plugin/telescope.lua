local builtin = require('telescope.builtin')
-- project file
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- only look for files in git
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- search using ripgrep
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

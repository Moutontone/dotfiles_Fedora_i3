local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- add current file to harpooned list
vim.keymap.set("n", "<leader>a", mark.add_file)
-- open menu
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- switch to harpooned files 1 to 4
vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-;>", function() ui.nav_file(4) end)

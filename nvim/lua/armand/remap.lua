-- Ex cmd
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- J now stays in the beginning of the line
vim.keymap.set("n", "J", "mzJ'z")

-- <C-d> and <C-u> jumps stay in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- n and N jumps stay in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- past the past buffer without changing it
vim.keymap.set("x", "<leader>p", [["_dP]])
-- yanking to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- deleting to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- disable this
vim.keymap.set("n", "Q", "<nop>")

-- auto format buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- navigator threw error and location
-- maybe inverse alt and leader
vim.keymap.set("n", "<M-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<M-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")

-- substitution of the current word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<left><left><left>]])

-- make current file executable
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})

--
-- add here tmux fun times
vim.keymap.set("n", "Q", "<nop>")

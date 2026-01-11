-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- use jk to exit insert mode
keymap.set("i", "jk", "<esc>", { desc = "Exit insert mode with jk" })

-- j and k move visual line in wrap mode
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- clear search highlights
keymap.set("n", "<leader>uh", ":nohl<cr>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- quick save
keymap.set("n", "<leader>w", ":w<cr>", { desc = "Save all" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<c-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<c-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<c-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<c-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<c-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<cr>", { desc = "Close current split" }) -- close current split window

-- tab management
keymap.set("n", "<leader>tt", "<cmd>tabnew<cr>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>to", "<cmd>tabonly<cr>", { desc = "Close all but current tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<cr>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<cr>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<cr>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<cr>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set("n", "<leader>q", "<cmd>q<cr>", { noremap = true, silent = true, desc = "Close current buffer" }) -- close current buffer

-- move lines
keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move line down" })
keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move line up" })

-- keep cursor center on half-page up/down and search
keymap.set("n", "<c-u>", "<c-u>zz", { desc = "Move cursor half-page up" })
keymap.set("n", "<c-d>", "<c-d>zz", { desc = "Move cursor half-page down" })
keymap.set("n", "n", "nzzzv", { desc = "Move cursor to next search result" })
keymap.set("n", "N", "Nzzzv", { desc = "Move cursor to previous search result" })

-- magic replace term under cursor
keymap.set(
  "n",
  "<leader>rw",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word under cursor" }
)

-- source/evaluate code
keymap.set("n", "<leader>lf", "<cmd>source %<cr>", { desc = "Source current file" })
keymap.set("n", "<leader>ll", ":.lua<cr>", { desc = "Execute current LUA line" })
keymap.set("v", "<leader>ll", ":lua<cr>", { desc = "Execute highlighted LUA code" })

-- tmux sessionizer
keymap.set(
  "n",
  "<c-f>",
  ":silent !tmux neww tmux-sessionizer<cr>",
  { noremap = true, silent = true, desc = "Open tmux sessionizer" }
)

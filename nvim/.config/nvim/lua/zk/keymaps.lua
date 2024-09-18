local set = vim.keymap.set

set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlighted text" })
set("i", "jk", "<ESC>", { noremap = true })

set("n", "<leader>.", "<CMD>Oil<CR>", { desc = "Open parent directory" })
set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

set("n", "<C-s>", "<cmd>:w<CR>", { desc = "Save file" })
set("i", "<C-s>", "<Esc><cmd>:w<CR>", { desc = "Save file" })
set("i", "<M-BS>", "<C-w>", { desc = "<I> Delete previuos word" })

set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line :m+1" })
set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line :m-2" })

set("n", "J", "mzJ`z", { desc = "Join line with line bellow" })
-- set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center cursor" })
-- set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center cursor" })

set("n", "<leader>y", "\"+y", { desc = "Yank line to system clipboard" })
set("v", "<leader>y", "\"+y", { desc = "Yank selection to system clibpard" })
set("n", "<leader>Y", "\"+Y", { desc = "Yank EOL to system clipboard" })
set("x", "<leader>p", [["_dP]], { desc = "Replace with paste above" })
set("n", "<leader>p", "\"+p", { desc = "Pate from system clipboard" })
set("n", "<leader>d", "\"_d", { desc = "Delete line (no clipboard)" })
set("v", "<leader>d", "\"_d", { desc = "Delete selection (no clipboard)" })
set("n", "<leader>D", "\"+D", { desc = "Delete selection to clipboard" })

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

set("n", "Q", "@qj")
set("x", "Q", ":norm @q<CR>")

set("n", "Z", "!!zsh<CR>", { desc = "BANG BANG -> :.!zsh" }) -- converts to :.!zsh
set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open project inside tmux" })
set("n", "<C-a>", "<cmd>silent !tmux neww tmux-switch-session<CR>", { desc = "Switch to tmux session" })
set("n", "<leader>ff", function()
	vim.lsp.buf.format()
end, { desc = "[F]ormat [F]ile" })

set("n", "<C-n>", "<cmd>cnext<CR>zz", { desc = "Quickfix `cnext`" })
set("n", "<C-p>", "<cmd>cprev<CR>zz", { desc = "Quickfix `cprev`" })
set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Quickfix `lnext`" })
set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Quickfix `lprev`" })

set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- search and replace
vim.keymap.set("n", "<leader>sr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>", { desc = "[S]earch and [R]eplace" })

set("n", "<leader>xx", "<cmd>!chmod +x %<CR>", { silent = true, desc = "chmod +x %" })
set("n", "<leader>xz", "<cmd>!chmod -x %<CR>", { silent = true, desc = "chmod -x %" })

set("n", "<leader>gg", ":vert Git<CR>", { desc = "[G]it" })

set("n", "<leader>tw", "<cmd>set wrap!<CR>", { desc = "[T]oggle [W]rapping" })
set("n", "<F6>", ":setlocal spell! spelllang=en_gb<CR>", { desc = "Toggle Spelling" })

set("n", "<C-x>", ":noh<CR>", { remap = true, silent = true })

set("n", "<M-<>", "<c-w>5<")
set("n", "<M->>", "<c-w>5>")
set("n", "<M-+>", "<c-w>5+")
set("n", "<M-->", "<c-w>5-")

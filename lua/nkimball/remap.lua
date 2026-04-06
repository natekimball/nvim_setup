local which_key = require("which-key")

which_key.add({
	{ "<leader>e", vim.cmd.Ex, desc = "Open file explorer" },
	{ "<leader>p", "\"_dP", desc = "Paste without overwrite" },
	{ "<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Toggle comment" },
	{ "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Search and replace word under cursor" },
	{ "<leader>t", ":Today<CR>", desc = "Open today's note" },
	{"J", "mzJ`z", desc = "Join lines and keep cursor position" },
	{"<C-d>", "<C-d>zz", desc = "Half page down and center" },
	{"<C-u>", "<C-u>zz", desc = "Half page down and center" },
	{ "n", "nzzzv", desc = "Next search result and center" },
	{ "N", "Nzzzv", desc = "Previous search result and center" },
	{ "Q", "<nop>", desc = "Disable Ex mode" },
	{ "<leader>cc", "<cmd> ClaudeCode<CR>", desc = "Toggle Claude Code" },
	{ "<leader>rn", vim.lsp.buf.rename, desc = "Rename symbol" },
	{ "<C-h>", "<C-w>h", desc = "Move to left window" },
	{ "<C-j>", "<C-w>j", desc = "Move to below window" },
	{ "<C-k>", "<C-w>k", desc = "Move to above window" },
	{ "<C-l>", "<C-w>l", desc = "Move to right window" },
})

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- -- lazy.nvim keys

-- Quick chat with Copilot
--
--
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "gd", function()
  vim.lsp.buf.definition()
end, opts)
vim.keymap.set("n", "K", function()
  vim.lsp.buf.hover()
end, opts)
vim.keymap.set("n", "<leader>rr", function()
  vim.lsp.buf.references()
end, opts)
vim.keymap.set("n", "<leader>rn", function()
  vim.lsp.buf.rename()
end, opts)
local map = vim.keymap.set

-- LazyVim git keymaps (only if LazyVim is available)
if pcall(require, "lazyvim") then
  map("n", "<leader>gg", function()
    LazyVim.lazygit({ cwd = LazyVim.root.git() })
  end, { desc = "Lazygit (Root Dir)" })
  map("n", "<leader>gG", function()
    LazyVim.lazygit()
  end, { desc = "Lazygit (cwd)" })
end

-- Snacks git keymaps (commented out due to loading issues)
-- local snacks_ok, snacks = pcall(require, "snacks")
-- if snacks_ok and snacks.lazygit then
--   map("n", "<leader>gb", snacks.lazygit.blame_line, { desc = "Git Blame Line" })
--   map("n", "<leader>gB", snacks.lazygit.browse, { desc = "Git Browse" })
-- end

local run_stree = function()
  local filename = vim.fn.expand("%")
  vim.cmd("silent !stree write " .. filename)
end
vim.keymap.set("n", "<leader>1", run_stree)
vim.keymap.set("n", "<leader>cv", "<cmd>ClaudeCode<CR>", { desc = "Toggle Claude Code" })

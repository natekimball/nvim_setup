return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- { 'nvim-telescope/teslescope-fzf-native.nvim', build = 'make' },
    { "git@github.com:nvim-telescope/telescope-fzf-native.nvim", build = "make" }
  },
  config = function()
    require('telescope').setup({})
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
    vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>;', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leaderps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
  end
}

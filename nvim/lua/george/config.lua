-- empty setup using defaults
require("nvim-tree").setup()
-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    -- mappings = {
    --   list = {
    --     { key = "u", action = "dir_up" },
    --   },
    -- },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
-- comment.nvim configuration
require('Comment').setup({
    --Add a space b/w comment and the line
    padding = true,
    --Whether the cursor should stay at its position
    sticky = true,
    --Lines to be ignored while (un)comment
    ignore = nil,
    --LHS of toggle mappings in Normal mode
    toggler = {
        --Line-comment toggle keymap
        line = '<C-c>',
        --Block-comment toggle keymap
        block = '<C-x>',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        --Line-comment operator keymap
        line = '<C-c>',
        --Block-comment operator keymap
        block = '<C-x>',
    },
})

-- mason package manager
require("mason").setup()


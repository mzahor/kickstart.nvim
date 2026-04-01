-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree toggle reveal<CR>', desc = 'NeoTree toggle', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    open_files_do_not_replace_types = { 'terminal', 'trouble', 'qf' },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['E'] = 'expand_all_nodes',
          ['W'] = 'close_all_nodes',
          ['/'] = 'fuzzy_finder',
        },
      },
    },
  },
}

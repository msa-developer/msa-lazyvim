return {
  -- Disable LazyVim's conflicting window navigation first
  {
    "LazyVim/LazyVim",
    keys = {
      { "<C-h>", false },
      { "<C-j>", false },
      { "<C-k>", false },
      { "<C-l>", false },
    },
  },
  -- Then add tmux-navigator
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>" },
      { "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>" },
    },
    init = function()
      vim.g.tmux_navigator_no_mappings = 1 -- Disable plugin's default mappings
    end,
  },
}

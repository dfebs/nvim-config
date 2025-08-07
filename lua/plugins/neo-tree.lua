return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  keys = {
    { "\\", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- If you set this to `true`, all "hide" just mean "dimmed out"
        hide_dotfiles = false,
        hide_gitignored = true,
        never_show = { ".git" },
      },
      window = {
        mappings = {
          ["\\"] = "close_window",
        },
      },
    },
  },
}

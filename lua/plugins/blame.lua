return {
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    keys = {
      -- add a keymap
      {
        "<leader>gb",
        "<cmd> ToggleBlame virtual<CR>",
        desc = "git blame",
      },
    },
  },
}

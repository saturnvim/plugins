return {
  'Saecki/crates.nvim',
  tag = 'stable',
  event = "VeryLazy",
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('crates').setup()
  end,
  keys = {
    {
      "<leader>pcu",
      "<cmd>lua require('crates').upgrade_all_crates()<cr>",
      desc = "Update dependency"
    },
  }
}

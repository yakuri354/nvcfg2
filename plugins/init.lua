local overrides = require "custom.plugins.overrides"

return {
  ["ggandor/lightspeed.nvim"] = {},
  ["lukas-reineke/indent-blankline.nvim"] = {
    disable = true,
  },
  ['akinsho/flutter-tools.nvim'] = {
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require "flutter-tools" .setup {}
    end,
    ft = {"dart"},
  },
  ['scalameta/nvim-metals'] = {
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require 'metals' .initialize_or_attach {}
    end,
    ft = {"scala", "sbt"}
  },
  ["folke/which-key.nvim"] = { disable = false },
  ["goolord/alpha-nvim"] = { disable = false },
  ["nmac427/guess-indent.nvim"] = {
    config = function()
      require 'guess-indent' .setup {}
    end
  },

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}

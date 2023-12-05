-- NEOVIM config, a text editor based on vim.
-- Maintainer:	 Jessee Chan <CYPHER0@foxmail.com>
-- Last Change: 2023.07.15


require("lazy").setup({

{ 'williamboman/mason.nvim',
  lazy  = false,
  build = ':MasonUpdate',
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
    },
  },

{ 'hrsh7th/nvim-cmp',
  lazy  = false,
  dependencies = {
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'andersevenrud/cmp-tmux',
    'folke/neodev.nvim',
    },
  },

{ 'nvim-telescope/telescope.nvim',
  lazy  = false,
  tag   = '0.1.2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'scrooloose/nerdtree',
    'majutsushi/tagbar',
    },
  },

{ 'easymotion/vim-easymotion',
  lazy  = false,
  dependencies = {
    'tpope/vim-surround',
    'tomtom/tcomment_vim',
    'godlygeek/tabular',
    'windwp/nvim-autopairs',
    },
  },

{ 'vim-airline/vim-airline',
  lazy  = false,
  dependencies = {
    'ryanoasis/vim-devicons',
    'yggdroot/indentline',
    },
  },

{ 'iamcco/markdown-preview.nvim',
  lazy  = false,
  run   = function() vim.fn["mkdp#util#install"]() end,
  dependencies = { 'dhruvasagar/vim-table-mode' },
  },

{ "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    end,
  },

{ 'nvim-treesitter/nvim-treesitter',
  lazy  = true,
  run   = ':TSUpdate',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-context',
    'nvim-treesitter/nvim-treesitter-textobjects',
    },
  },

})



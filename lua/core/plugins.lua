local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- plugin manager
  use 'wbthomason/packer.nvim'

  -- colorschemes (configure at plugin_config/colorscheme.lua)
  use 'catppuccin/nvim'
  use 'dasupradyumna/midnight.nvim'
  use 'Mofiqul/vscode.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'AlexvZyl/nordic.nvim'
  use 'scottmckendry/cyberdream.nvim'
  use 'patstockwell/vim-monokai-tasty'
  use 'devsjc/vim-jb'
  use 'ramojus/mellifluous.nvim'
  use "blazkowolf/gruber-darker.nvim"
  use 'jacoborus/tender.vim'
  use 'nyoom-engineering/oxocarbon.nvim'
  use 'olivercederborg/poimandres.nvim'

  use 'nvim-tree/nvim-tree.lua'

  use 'nvim-tree/nvim-web-devicons'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'nvim-treesitter/nvim-treesitter'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- lsp
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  -- autocompletion and snippets
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp'
  }
  use({
	  "L3MON4D3/LuaSnip",
	  tag = "v2.*",
	  run = "make install_jsregexp"
  })
  use 'saadparwaiz1/cmp_luasnip'

  -- autopairs
  -- use {
  --   "windwp/nvim-autopairs",
  --   event = "InsertEnter",
  --   config = function()
  --     require("nvim-autopairs").setup {}
  --   end
  -- }

  --better ui
  use 'stevearc/dressing.nvim'
  --comments
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  --colors
  use 'NvChad/nvim-colorizer.lua'
  --cursorline
  use 'yamatsum/nvim-cursorline'
  use 'windwp/nvim-ts-autotag'
  --test
  use "xiyaowong/transparent.nvim"

  --learn vim
  use 'ThePrimeagen/vim-be-good'

  use 'j-hui/fidget.nvim'
  use 'ray-x/lsp_signature.nvim'
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua'

  use 'folke/lsp-colors.nvim'
  use 'stevearc/oil.nvim'
  use 'ej-shafran/compile-mode.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)


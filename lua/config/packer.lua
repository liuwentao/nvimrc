
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
return require("packer").startup(function()
	-- 插件管理器
	use("wbthomason/packer.nvim")
	-- 主题
	use("ful1e5/onedark.nvim")
	use("rmehri01/onenord.nvim")
	use("xiyaowong/nvim-transparent")
	-- 首页
	-- use("goolord/alpha-nvim")
	-- 对齐线
	use("lukas-reineke/indent-blankline.nvim")
	-- 状态栏
	use("nvim-lualine/lualine.nvim")
	-- 编辑历史
	use("simnalamburt/vim-mundo")
	-- lsp支持
	use({ "neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer" })
	-- 语法高亮，折叠代码，缩进处理
	use({ "nvim-treesitter/nvim-treesitter"})
	-- 模糊匹配工具
	use("junegunn/fzf")
	use("junegunn/fzf.vim")
	-- 方便操作
	use("tpope/vim-commentary")
	use("tpope/vim-fugitive")
	use("tpope/vim-repeat")
	use("tpope/vim-surround")
	use("tpope/vim-unimpaired")
	-- syntex
	use("axvr/org.vim")
	-- 代码补全
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
		-- vsnip
	use("hrsh7th/cmp-vsnip")
	-- lsp美化
	use("onsails/lspkind-nvim")
	-- 代码片段
	use({
		"SirVer/ultisnips",
		requires = { { "honza/vim-snippets", rtp = "." } },
	})
	use("quangnguyen30192/cmp-nvim-ultisnips")
	-- 快速跳转
	use({
		"phaazon/hop.nvim",
		branch = "v2",
		config = function()
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	})
	-- 格式化代码
	use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
	use({ "rlue/vim-barbaric" })
	use ({
	  'nvim-tree/nvim-tree.lua',
	  requires = {
	    'nvim-tree/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
	})

  if packer_bootstrap then
    require('packer').sync()
  end
end)

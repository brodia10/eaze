--[[
--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]

----------------------------
-- General
----------------------------
lvim.leader = "space"
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarkpro"
vim.o.background = "dark" -- to load onedark
-- vim.o.background = "light" -- to load onelight
require("onedarkpro").load()

----------------------------
-- Alpha
----------------------------
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

----------------------------
-- Lua Line
----------------------------
lvim.builtin.notify.active = true

----------------------------
-- Terminal
----------------------------
lvim.builtin.terminal.active = true
-- lvim.builtin.terminal.close_on_exit = true
-- lvim.builtin.terminal.hide_numbers = true
-- lvim.builtin.terminal.direction = "floatd"
-- lvim.builtin.terminal.float_opts = {
--   border = "curved",
--   winblend = 20,
--   highlights = {
--     border = "Normal",
--     background = "Normal",
--   },
-- }
-- following option will hide the buffer when it is closed instead of deleting
-- the buffer. This is important to reuse the last terminal buffer
-- IF the option is not set, plugin will open a new terminal every single time
vim.o.hidden = true
lvim.builtin.autopairs = {}

-- Toggleterm
require("toggleterm").setup
{
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 10,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = "float",
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = "shadow",
    winblend = 0,
    highlights = {
      border = "#000",
      background = "black",
    },
  },
}


----------------------------
-- Nvimtree
----------------------------
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.setup.git.enable = true

----------------------------
-- Lua Line
----------------------------
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_b = { "branch", "python_env", "filename", "diagnostics" }
lvim.builtin.lualine.sections.lualine_c = {}
lvim.builtin.lualine.sections.lualine_x = { "filetype" }
lvim.builtin.lualine.sections.lualine_y = { "diff" }
lvim.builtin.lualine.sections.lualine_z = { "progress", "location" }

lvim.builtin.lualine.options = {
  icons_enabled = true,
  theme = 'auto',
  component_separators = { left = '', right = '' },
  section_separators = { left = '', right = '' },
  disabled_filetypes = {},
  -- always_divide_middle = true,
  globalstatus = true,
  path = 1
}

lvim.builtin.lualine.inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = { 'filename' },
  lualine_x = { 'location' },
  lualine_y = {},
  lualine_z = {}
}

----------------------------
-- Treesitter
----------------------------
lvim.builtin.treesitter = {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
  },
  context_commentstring = {
    enable = true
  },
  autotag = {
    enable = true
  },
}

----------------------------
-- Telescope
----------------------------
-- Soft wrap text in preview
vim.cmd([[
  autocmd User TelescopePreviewerLoaded setlocal wrap
]])

lvim.builtin.telescope.defaults.file_ignore_patterns = {
  "node_modules/**",
  ".pycache/**",
  "env/**",
  "venv/**",
  "myenv/**"
}

-- lvim.builtin.telescope.defaults.path_dispLlay = { "smart" }

-- lvim.builtin.telescope = {
--   defaults = {
--     path_display = { "smart" },
--   }
-- }

----------------------------
-- Additional Plugins
----------------------------
lvim.plugins = {
  { 'olimorris/onedarkpro.nvim' },
  { 'martinsione/darkplus.nvim' },
  { 'lukas-reineke/indent-blankline.nvim' },
  { 'rebelot/kanagawa.nvim' },
  { 'kdheepak/lazygit.nvim' },
  -- { 'mg979/vim-visual-multi' },
  { "ray-x/lsp_signature.nvim" },
  { 'folke/lsp-colors.nvim' },
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
  { "ellisonleao/glow.nvim", branch = 'main' },
  { 'iamcco/markdown-preview.nvim' },
  -- { 'wbthomason/packer.nvim' }
}



------------------------------
-- Vim Commands
------------------------------
vim.cmd([[
  "Add blank line above the current line without exiting normal mode"
  "leader + O"
  nnoremap <leader>o o<Esc>0"_D

  "Add blank line below current line without exiting normal mode
  nnoremap <leader>O O<Esc>0"_D

  "Glow Markdown Preview - leader + p + p
  noremap <leader>pp :Glow<CR>"

  set wrap
  set linebreak

]])

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append("space: ")

require("indent_blankline").setup {
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.json", "*.jsonc" },
  -- enable wrap mode for json files only
  command = "setlocal wrap",
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "zsh",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "bash")
  end,
})

-- LSP - Formatting and Linting
-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black", filetypes = { "python" } },
  { command = "isort", filetypes = { "python" } },
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--print-width", "100" },
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "typescript", "typescriptreact", "html", "css", "javascript", "javascriptreact" },
  },
}

-- -- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "flake8", filetypes = { "python" } },
  {
    -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "shellcheck",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--severity", "warning" },
  },
  {
    command = "codespell",
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "javascript", "python" },
  },
}


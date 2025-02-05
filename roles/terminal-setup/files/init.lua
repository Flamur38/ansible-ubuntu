-- Basic settings
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.tabstop = 4           -- Number of spaces per tab
vim.opt.shiftwidth = 4        -- Number of spaces for indentation
vim.opt.expandtab = true      -- Convert tabs to spaces
vim.opt.smartindent = true    -- Auto-indent new lines
vim.opt.autoindent = true
vim.opt.hlsearch = true       -- Highlight search results
vim.opt.ignorecase = true     -- Case-insensitive search
vim.opt.smartcase = true      -- Case-sensitive if uppercase is used
vim.opt.wrap = false          -- Disable line wrapping
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.termguicolors = true  -- Enable true colors
vim.opt.listchars = "tab:> ,trail:+,extends:>,precedes:<"

-- Leader key
vim.g.mapleader = " "         -- Set leader key to space

-- Plugin management with Packer
require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'         -- Packer can manage itself
    use "nvim-treesitter/nvim-treesitter" -- Syntax highlighting
    use "nvim-telescope/telescope.nvim"  -- Fuzzy finder
    use "nvim-lualine/lualine.nvim"      -- Status line
    use "neovim/nvim-lspconfig"          -- LSP configuration
    use "hrsh7th/nvim-cmp"               -- Autocompletion
    use "L3MON4D3/LuaSnip"               -- Snippet engine
    use 'ThePrimeagen/vim-be-good'       -- Practice Vim movements
    use 'audibleblink/hackthebox.vim'    -- Hack The Box theme
end)

-- Treesitter configuration
require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua", "python", "bash", "javascript" }, -- Languages to install
    highlight = { enable = true },
}

-- Telescope keybindings
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })


-- Highlight # comments in plain text files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "text",
    callback = function()
        vim.cmd([[
            syntax enable
            syntax match CustomComment /#.*$/
            highlight link CustomComment Comment
        ]])
    end
})

-- Apply the Hack The Box Theme
vim.cmd('colorscheme hackthebox')

-- Set Jet Black background
vim.cmd('hi Normal guibg=#0A0A0A')  -- Set background to Jet Black (#0A0A0A)

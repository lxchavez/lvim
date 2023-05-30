-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

reload("alex.options")

-- User plugins

lvim.plugins = {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup {
                variant = "auto",
                -- disable_background = true,
                -- disable_float_background = true,
                disable_italics = true,
            }
        end
    },
    -- plugins for python venv switching
    "AckslD/swenv.nvim",
    "stevearc/dressing.nvim",
    -- git
    "tpope/vim-fugitive",
    "airblade/vim-gitgutter",
}

-- change colorscheme
lvim.colorscheme = "rose-pine"

-- language support
lvim.builtin.treesitter.ensure_installed = {
    "python",
}

-- Python linters and formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "black" }, }

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", args = { "--ignore=E203" }, filetypes = { "python" } } }

-- restart language server after switching into a new venv
require('swenv').setup({
    post_set_venv = function()
        vim.cmd("LspRestart")
    end,
})

-- keymapping to call the venv switcher
lvim.builtin.which_key.mappings["C"] = {
    name = "Python",
    c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}

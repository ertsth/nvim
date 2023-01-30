-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
    open_on_setup = true,
    open_on_setup_file = true,
    view = {
        side = "right",
        mappings = {
            list = {
            -- user mappings go here
                { key = "H",   action = "" },
            },
        },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
    },
    renderer = {
        group_empty = true,
        full_name = true,
    },
})

-- keymaps
vim.keymap.set("n", "<c-b>", ":NvimTreeFindFileToggle<CR>", { })

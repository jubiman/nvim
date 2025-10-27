-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("telescope").load_extension("file_browser")
require("telescope").setup({
    extensions = {
        file_browser = {
            hijack_netrw = true,
        },
    },
})
require("render-markdown").enable()
vim.cmd("colorscheme kanagawa-dragon")

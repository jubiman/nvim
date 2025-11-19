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

require("blink.cmp").setup({
    sources = {
        default = {
            "jupynium",
            -- ...
        },
        providers = {
            jupynium = {
                name = "Jupynium",
                module = "jupynium.blink_cmp",
                -- Consider higher priority than LSP
                score_offset = 100,
            },
            -- ...
        },
    },
})
require("cmake-tools").setup({
    cmake_command = "cmake", -- CMake command to run
    cmake_build_directory = "build", -- Default build directory
    cmake_console_size = 10, -- Console buffer height
    cmake_show_console = "always", -- When to show the console window
    cmake_dap_configuration = {}, -- DAP configuration
    cmake_generate_options = {
        "-G Ninja",
        "-DCMAKE_C_COMPILER=clang",
        "-DCMAKE_CXX_COMPILER=clang++",
        "-DCMAKE_EXPORT_COMPILE_COMMANDS=1",
    },
    cmake_notifications = {
        runner = { enabled = false },
        executor = { enabled = false },
    },
})

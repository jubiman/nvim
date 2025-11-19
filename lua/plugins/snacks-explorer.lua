return {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
        picker = {
            explorer = {
                auto_open = true,
                show_hidden = true,
                mappings = {
                    open = "o",
                    close = "q",
                    create = "a",
                    delete = "d",
                    copy = "c",
                    cut = "x",
                    paste = "p",
                    go_home = "gh",
                },
            },
        },
    },
}

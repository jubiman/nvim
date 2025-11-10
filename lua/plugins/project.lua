return {}
--[[return {
    {
        "ahmedkhalf/project.nvim",
        opts = {
            manual_mode = false,
            patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "CMakeLists.txt" },
            show_hidden = true,
            silent_chdir = false,
            ignore_lsp = {},
            datapath = vim.fn.stdpath("data"),
        },
    },
}]]
--[[return {
   {
      "coffebar/neovim-project",
      opts = {
         projects = { -- define project roots
            "~/projects/*",
            "~/.config/*",
            "~/PycharmProjects/*",
            "~/CLionProjects/*",
            "~/WebstormProjects/*",
         },
         dashboard_mode = true,
         picker = {
            type = "telescope", -- one of "telescope", "fzf-lua", or "snacks"
         },
      },
      init = function()
         -- enable saving the state of plugins in the session
         vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
      end,
      dependencies = {
         { "nvim-lua/plenary.nvim" },
         { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
         { "Shatur/neovim-session-manager" },
      },
      lazy = false,
      priority = 100,
   },
}]]

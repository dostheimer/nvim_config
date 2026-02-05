vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

return {
  
  -- auto-session
  {
    "rmagatti/auto-session",
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop/"},
      sessienoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
    },

    keys = {
      { 
        "<leader>wr", 
        function() require("auto-session").RestoreSession() end,
        desc = "Restore session for cwd",
      },
      {
        "<leader>ws",
        function() require("auto-session").SaveSession() end,
        desc = "Save session for auto session root dir",
      }
    }
  },
}



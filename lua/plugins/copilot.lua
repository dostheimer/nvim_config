return {
  -- copilot
  {
    "github/copilot.vim",
    lazy = false,
    config = function() -- Mapping tab is already used in NvChad
        vim.g.copilot_no_tab_map = true; -- Disable tab mapping
        vim.g.copilot_assume_mapped = true; -- Assume that the mapping is already done
    end
  },

  -- copilot-chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy=false,
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- See Configuration section for options
    },
    keys =    {
      { "<leader>zc", ":CopilotChat<cr>", mode = "n", desc = "Chat with Copilot" },
      { "<leader>ze", ":CopilotChatExplain<cr>", mode = "v", desc = "Explain Code" },
      { "<leader>zr", ":CopilotChatReview<cr>", mode = "v", desc = "Review Code" },
      { "<leader>zf", ":CopilotChatFix<cr>", mode = "v", desc = "Fix Code Issues" },
      { "<leader>zo", ":CopilotChatOptimize<cr>", mode = "v", desc = "Optimize Code" },
      { "<leader>zd", ":CopilotChatDocs<cr>", mode = "v", desc = "Generate Docs" },
      { "<leader>zt", ":CopilotChatTests<cr>", mode = "v", desc = "Generate Tests" },
      { "<leader>zm", ":CopilotChatCommit<cr>", mode = "n", desc = "Generate Commit Message" },
      { "<leader>zs", ":CopilotChatCommit<cr>", mode = "v", desc = "Generate Commit for Selection" },
    },
  },
}

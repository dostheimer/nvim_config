return {
	 {
		"NickvanDyke/opencode.nvim",
		dependencies = {
			{ "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
		},
		keys = {
			{
				"<leader>oa",
				function()
					require("opencode").ask("@this: ", { submit = true })
				end,
        mode = {"n","v"},
	      desc = "OpenCode: Ask",
			},
      {
        "<leader>ox",
        function()
          require("opencode").select()
        end,
        mode = {"n","v"},
        desc = "OpenCode: Execute Action",
      },
      {
        "<leader>o.",
        function()
          require("opencode").toggle()
        end,
        mode = {"n","t"},
        desc = "OpenCode: Toggle",
      },
      {
        "go",
        function()
          return require("opencode").operator("@this ")
        end,
        mode = {"n","v"},
        desc = "OpenCode: Add Range",
        expr = true,
      },
      {
        "goo",
        function()
          return require("opencode").operator("@this ") .. "_"
        end,
        mode = "n",
        desc = "OpenCode: Add Line",
        expr = true,
      },
		},
	},
}

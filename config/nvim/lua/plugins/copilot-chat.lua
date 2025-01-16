return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
	  dependencies = {
	    { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      debug = true,
    },
    vim.keymap.set("n", "<leader>copilot", ":CopilotChatToggle<CR>", {})
  },
}

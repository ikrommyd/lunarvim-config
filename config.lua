-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
vim.opt.relativenumber = true
vim.opt.guicursor = ""

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
	return server ~= "pylsp"
end, lvim.lsp.automatic_configuration.skipped_servers)

lvim.plugins = {
	{ "github/copilot.vim" },
	{
		"navarasu/onedark.nvim",
		name = "onedark",
		config = function()
			require("onedark").setup({
				style = "warmer",
				transparent = false,
				term_colors = true,
			})
		end,
	},
}
lvim.colorscheme = "lunar"
lvim.builtin.lualine.style = "lvim"

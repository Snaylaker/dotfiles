-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	'wuelnerdotexe/vim-astro',
	

	{
		'folke/trouble.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	'mbbill/undotree',
	'folke/zen-mode.nvim',
	'ryanoasis/vim-devicons',
	{
		"luckasRanarison/nvim-devdocs",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {
			previewer_cmd = "glow",    -- for example: "glow"
			cmd_args = { "-s", "dark", "-w", "80" }, -- example using glow: { "-s", "dark", "-w", "80" }
			picker_cmd = true,         -- use cmd previewer in picker preview
			picker_cmd_args = { "-s", "dark", "-w", "50" }, -- example using glow: { "-s", "dark", "-w", "50" }		previewer_cmd = "Glow",
			filetypes = {
				-- extends the filetype to docs mappings used by the `DevdocsOpenCurrent` command, the version doesn't have to be specified
				-- scss = "sass",
				typescriptreact = { "node", "javascript", "typescript", "react" }
			},
		}
	},
	'preservim/nerdtree',
}

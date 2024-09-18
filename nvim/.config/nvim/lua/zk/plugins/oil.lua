return {
	"stevearc/oil.nvim",
	opts = {
		-- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
		-- Set to false if you still want to use netrw.
		default_file_explorer = true,
		-- Id is automatically added at the beginning, and name at the end
		-- See :help oil-columns
		columns = {
			-- "icon",
			-- "permissions",
			-- "size",
			-- "mtime",
		},
		buf_options = {
			buflisted = false,
			bufhidden = "hide",
		},
		win_options = {
			wrap = false,
			signcolumn = "no",
			cursorcolumn = false,
			foldcolumn = "0",
			spell = false,
			list = false,
			conceallevel = 3,
			concealcursor = "nvic",
		},
		delete_to_trash = true,
		skip_confirm_for_simple_edits = false,
		prompt_save_on_select_new_entry = true,
		-- Oil will automatically delete hidden buffers after this delay
		-- You can set the delay to false to disable cleanup entirely
		-- Note that the cleanup process only starts when none of the oil buffers are currently displayed
		cleanup_delay_ms = 2000,
		-- Set to true to autosave buffers that are updated with LSP willRenameFiles
		-- Set to "unmodified" to only save unmodified buffers
		-- Constrain the cursor to the editable parts of the oil buffer
		-- Set to `false` to disable, or "name" to keep it on the file names
		constrain_cursor = "editable",
		use_default_keymaps = false,
		keymaps = {
			["g?"] = "actions.show_help",
			["<CR>"] = "actions.select",
			["<C-v>"] = "actions.select_vsplit",
			["<C-y>"] = "actions.select_split",
			["<C-t>"] = "actions.select_tab",
			["<C-p>"] = "actions.preview",
			["<C-c>"] = "actions.close",
			["<C-r>"] = "actions.refresh",
			["-"] = "actions.parent",
			["_"] = "actions.open_cwd",
			["`"] = "actions.cd",
			["~"] = "actions.tcd",
			["gs"] = "actions.change_sort",
			["gx"] = "actions.open_external",
			["g."] = "actions.toggle_hidden",
			["g\\"] = "actions.toggle_trash",
			["gd"] = {
				desc = "Toggle detail view",
				callback = function()
					local oil = require("oil")
					local config = require("oil.config")
					if #config.columns == 0 then
						oil.set_columns({ "permissions", "size", "mtime" })
					else
						oil.set_columns({})
					end
				end,
			},
		},
		view_options = {
			-- Show files and directories that start with "."
			show_hidden = true,
			-- This function defines what is considered a "hidden" file
			is_hidden_file = function(name, bufnr)
				return vim.startswith(name, ".")
			end,
			-- This function defines what will never be shown, even when `show_hidden` is set
			is_always_hidden = function(name, bufnr)
				return false
			end,
			sort = {
				-- sort order can be "asc" or "desc"
				-- see :help oil-columns to see which columns are sortable
				{ "type", "asc" },
				{ "name", "asc" },
			},
		},
		-- Configuration for the floating window in oil.open_float
		float = {
			-- Padding around the floating window
			padding = 2,
			max_width = 0,
			max_height = 0,
			border = "none",
			win_options = {
				winblend = 0,
			},
			-- This is the config that will be passed to nvim_open_win.
			-- Change values here to customize the layout
			override = function(conf)
				return conf
			end,
		},
		-- Configuration for the actions floating preview window
		preview = {
			-- Width dimensions can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
			-- min_width and max_width can be a single value or a list of mixed integer/float types.
			-- max_width = {100, 0.8} means "the lesser of 100 columns or 80% of total"
			max_width = 0.9,
			-- min_width = {40, 0.4} means "the greater of 40 columns or 40% of total"
			min_width = { 40, 0.4 },
			-- optionally define an integer/float for the exact width of the preview window
			width = nil,
			-- Height dimensions can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
			-- min_height and max_height can be a single value or a list of mixed integer/float types.
			-- max_height = {80, 0.9} means "the lesser of 80 columns or 90% of total"
			max_height = 0.9,
			-- min_height = {5, 0.1} means "the greater of 5 columns or 10% of total"
			min_height = { 5, 0.1 },
			-- optionally define an integer/float for the exact height of the preview window
			height = nil,
			border = "none",
			win_options = {
				winblend = 0,
			},
			-- Whether the preview window is automatically updated when the cursor is moved
			update_on_cursor_moved = true,
		},
		-- Configuration for the floating progress window
		progress = {
			max_width = 0.9,
			min_width = { 40, 0.4 },
			width = nil,
			max_height = { 10, 0.9 },
			min_height = { 5, 0.1 },
			height = nil,
			border = "none",
			minimized_border = "none",
			win_options = {
				winblend = 0,
			},
		},
	},
	config = function(_, opts)
		local oil = require("oil")
		oil.setup(opts)
		vim.keymap.set("n", "-", oil.open, { desc = "Open parent directory" })
	end
}

call plug#begin('C:\Users\Tom\.local\share\nvim\plugged')

" LSP related
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'williamboman/nvim-lsp-installer'
Plug 'onsails/lspkind-nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'ray-x/lsp_signature.nvim'

" General
Plug 'glepnir/dashboard-nvim'
Plug 'preservim/tagbar'
Plug 'akinsho/bufferline.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'folke/trouble.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'jiangmiao/auto-pairs'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'anuvyklack/pretty-fold.nvim'
Plug 'andweeb/presence.nvim'
Plug 'folke/zen-mode.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kyazdani42/nvim-web-devicons'

" Themes
Plug 'chriskempson/base16-vim'
Plug 'sainnhe/everforest'
Plug 'karoliskoncevicius/sacredforest-vim'

call plug#end()

set nocompatible
set completeopt=menu,menuone,noinsert,noselect,preview
set clipboard=unnamedplus
set number
set nowrap
set termguicolors
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set mouse=a
set cursorline
set numberwidth=5
set scrolloff=10
set sidescrolloff=10
set updatetime=300
set undofile
set splitright
set splitbelow
set noshowmode
set ignorecase
set nobackup
set nowritebackup
set cmdheight=2
set shortmess+=c
set guifont=Hack\ Nerd\ Font\ Mono:h18
set signcolumn=yes:1
set foldcolumn=0
set list
set listchars+=lead:-,multispace:---+
"set listchars=tab:\│\\u202F,trail:\\u202F

let g:asyncomplete_auto_completeopt = 0

let g:nvim_tree_quit_on_open = 0 "0 by default, closes the tree when you open a file
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 3 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 0 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' ➛ ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 0 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 1 "1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.

let g:nvim_tree_window_picker_exclude = {
\	'filetype': [ 'notify', 'packer', 'qf' ],
\	'buftype': [ 'terminal' ]
\}

let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }
let g:nvim_tree_show_icons = { 'git': 1, 'folders': 1, 'files': 1, 'folder_arrows': 1 }

let g:nvim_tree_icons = {
\	'default':			"",
\	'symlink':			"",
\	'git': {
\		'unstaged':		"✗",
\		'staged':		"✓",
\		'unmerged':		"",
\		'renamed':		"➜",
\		'untracked':	"★",
\		'deleted':		"",
\		'ignored':		"◌"
\	},
\	'folder': {
\		'arrow_open':	"",
\		'arrow_closed':	"",
\		'default':		"",
\		'open':			"",
\		'empty':		"",
\		'empty_open':	"",
\		'symlink':		"",
\		'symlink_open':	""
\	},
\	'lsp': {
\		'hint':			"",
\		'info':			"",
\		'warning':		"",
\		'error':		""
\	}
\}

let g:tagbar_ctags_bin = 'C:\Users\Tom\Downloads\ctags\ctags.exe'

let g:airline_theme = 'everforest'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:dashboard_default_executive ='telescope'

let g:dashboard_custom_header = [
\	'███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\	'████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\	'██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\	'██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\	'██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\	'╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝'
\]

let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_show_trailing_blankline_indent = v:false

let g:everforest_background = 'hard'
let g:everforest_diagnostic_text_highlight = 1
let g:everforest_ui_contrast = 'high'
let g:everforest_sign_column_background = 'default'

colorscheme everforest

highlight NvimTreeFolderIcon guibg=blue

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <F2> :FloatermToggle<CR>
nnoremap <F3> :FloatermNew --width=0.9 --height=0.9<CR>
nnoremap <F4> :FloatermNew --width=0.9 --height=0.9 lazygit<CR>
nnoremap <F5> :Telescope find_files<CR>
nnoremap <F6> :TroubleToggle<CR>
nnoremap <F7> :TagbarToggle<CR>
nnoremap <F9> :execute '!dotnet-format ' . fnamemodify(getcwd() . ".sln", ':t') . ' --include ' . fnamemodify(expand("%"), ":~:.")<CR>
nnoremap <C-F9> :execute '!dotnet-format ' . fnamemodify(getcwd() . ".sln", ':t')<CR>
nnoremap <F10> :ZenMode<CR>

nnoremap <silent>b[ :BufferLineCyclePrev<CR>
nnoremap <silent>b] :BufferLineCycleNext<CR>
nnoremap <silent>m[ :BufferLineMovePrev<CR>
nnoremap <silent>m] :BufferLineMoveNext<CR>
nnoremap <silent>bd :bdelete! %d<CR>

lua <<EOF

cfg = {
	debug = false,		-- set to true to enable debug logging
	log_path = vim.fn.stdpath("cache") .. "/lsp_signature.log",	-- log dir when debug is on
																-- default is  ~/.cache/nvim/lsp_signature.log
	verbose = false,	-- show debug line number
	bind = true,		-- This is mandatory, otherwise border config won't get registered.
						-- If you want to hook lspsaga or other signature handler, pls set to false
	doc_lines = 10,		-- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
						-- set to 0 if you DO NOT want any API comments be shown
						-- This setting only take effect in insert mode, it does not affect signature help in normal
						-- mode, 10 by default
	floating_window = true,	-- show hint in a floating window, set to false for virtual text only mode
	floating_window_above_cur_line = true,	-- try to place the floating above the current line when possible Note:
											-- will set to true when fully tested, set to false will use whichever side has more space
											-- this setting will be helpful if you do not want the PUM and floating win overlap
	floating_window_off_x = 1,	-- adjust float windows x position.
	floating_window_off_y = 1,	-- adjust float windows y position.
	fix_pos = false,			-- set to true, the floating window will not auto-close until finish all parameters
	hint_enable = false,		-- virtual hint enable
	hint_prefix = "🐼 ",		-- Panda for parameter
	hint_scheme = "String",
	hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
	max_height = 16,	-- max height of signature floating_window, if content is more than max_height, you can scroll down
						-- to view the hiding contents
	max_width = 60,		-- max_width of signature floating_window, line will be wrapped if exceed max_width
	handler_opts = {
		border = "rounded"	-- double, rounded, single, shadow, none
	},
	always_trigger = false,		-- sometime show signature on new line or in middle of parameter can be confusing, set it to false for #58
	auto_close_after = nil,		-- autoclose signature float win after x sec, disabled if nil.
	extra_trigger_chars = {},	-- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
	zindex = 200,				-- by default it will be on top of all floating windows, set to <= 50 send it to bottom
	padding = '',				-- character to pad on left and right of signature can be ' ', or '|'  etc
	transparency = nil,			-- disabled by default, allow floating win transparent value 1~100
	shadow_blend = 36,			-- if you using shadow as border use this set the opacity
	shadow_guibg = 'Black',		-- if you using shadow as border use this set the color e.g. 'Green' or '#121315'
	timer_interval = 10,		-- default timer check interval set to lower value if you want to reduce latency
	toggle_key = '<F8>'			-- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'
}

require'lsp_signature'.setup(cfg)	-- no need to specify bufnr if you don't use toggle_key

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
	opts = opts or {}
	opts.border = opts.border or "rounded"
	return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

vim.diagnostic.config({
	virtual_text = false,
	float = {
		update_in_insert = true
	}
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local lspkind = require('lspkind')
local cmp = require'cmp'

cmp.setup({
	formatting = {
		format = lspkind.cmp_format({
			with_text = true,
			menu = ({
				buffer = "[Buffer]",
				nvim_lsp = "[LSP]",
				luasnip = "[LuaSnip]",
				nvim_lua = "[Lua]",
				latex_symbols = "[Latex]"
			})
		}),
	},
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end
	},
	mapping = {
		['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
		['<C-y>'] = cmp.config.disable,
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close()
		}),
		['<CR>'] = cmp.mapping.confirm({ select = true })
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' }
	}, {
		{ name = 'buffer' }
	})
})

cmp.setup.cmdline('/', {
	sources = {
		{ name = 'buffer' }
	}
})

cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

	local opts = { noremap=true, silent=true }

	buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
	buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
	buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
	buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
	buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
	buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
	buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
	buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
	buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
	buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
	buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
	buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
	buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
	buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

local pid = vim.fn.getpid()
local omnisharp_bin = "C:/Users/Tom/AppData/Local/nvim-data/lsp_servers/omnisharp/omnisharp/OmniSharp.exe"

nvim_lsp.omnisharp.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
	flags = {
		debounce_text_changes = 150
	}
}

nvim_lsp.vimls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	flags = {
		debounce_text_changes = 150
	}
}

nvim_lsp.sumneko_lua.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	flags = {
		debounce_text_changes = 150
	}
}

nvim_lsp.jsonls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	flags = {
		debounce_text_changes = 150
	}
}

require'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained",
	sync_install = false,
	ignore_install = { "javascript" },
	highlight = {
		enable = true,
		disable = { "c", "rust" },
		additional_vim_regex_highlighting = false
	},
}

require("trouble").setup{
	position = "bottom", -- position of the list can be: bottom, top, left, right
	height = 10, -- height of the trouble list when position is top or bottom
	width = 50, -- width of the list when position is left or right
	icons = true, -- use devicons for filenames
	mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
	fold_open = "", -- icon used for open folds
	fold_closed = "", -- icon used for closed folds
	group = true, -- group results by file
	padding = true, -- add an extra new line on top of the list
	action_keys = { -- key mappings for actions in the trouble list
		-- map to {} to remove a mapping, for example:
		-- close = {},
		close = "q", -- close the list
		cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
		refresh = "r", -- manually refresh
		jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
		open_split = { "<c-x>" }, -- open buffer in new split
		open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
		open_tab = { "<c-t>" }, -- open buffer in new tab
		jump_close = {"o"}, -- jump to the diagnostic and close the list
		toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
		toggle_preview = "P", -- toggle auto_preview
		hover = "K", -- opens a small popup with the full multiline message
		preview = "p", -- preview the diagnostic location
		close_folds = {"zM", "zm"}, -- close all folds
		open_folds = {"zR", "zr"}, -- open all folds
		toggle_fold = {"zA", "za"}, -- toggle fold of current file
		previous = "k", -- preview item
		next = "j" -- next item
	},
	indent_lines = true, -- add an indent guide below the fold icons
	auto_open = false, -- automatically open the list when you have diagnostics
	auto_close = false, -- automatically close the list when you have no diagnostics
	auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
	auto_fold = false, -- automatically fold a file trouble list at creation
	auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
	signs = {
		-- icons / text used for a diagnostic
		error = "",
		warning = "",
		hint = "",
		information = "",
		other = ""
	},
	use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
}

require'nvim-tree'.setup {
	disable_netrw		= true,
	hijack_netrw		= true,
	open_on_setup		= false,
	ignore_ft_on_setup	= {},
	update_to_buf_dir	= {
		enable			= false,
		auto_open		= false
	},
	auto_close			= false,
	open_on_tab			= false,
	hijack_cursor		= true,
	update_cwd			= false,
	diagnostics			= {
		enable			= true,
		show_on_dirs	= true,
		icons			= {
			hint		= "",
			info		= "",
			warning		= "",
			error		= ""
		}
	},
	update_focused_file = {
		enable			= false,
		update_cwd		= false,
		ignore_list		= {}
	},
	system_open			= {
		cmd				= nil,
		args			= {}
	},
	git = {
		enable			= true,
		ignore			= true,
		timeout			= 400
	},
	view				= {
		hide_root_folder = false,
		width			= "20%",
		height			= 30,
		side			= 'left',
		auto_resize		= true,
		number			= false,
		relativenumber	= false,
		signcolumn		= "yes:1",
		mappings		= {
			custom_only	= false,
			list		= {}
		}
	},
	filters				= {
		dotfiles		= false,
		custom			= {}
	},
	trash				= {
		cmd				= "trash",
		require_confirm	= true
	}
}

require('gitsigns').setup {
	signs = {
		add          = { hl = 'GitSignsAdd'   , text = '▎', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
		change       = { hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
		delete       = { hl = 'GitSignsDelete', text = '▎', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
		topdelete    = { hl = 'GitSignsDelete', text = '▎', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
		changedelete = { hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
	},
	signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
	numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
	linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
	word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
	keymaps = {
		-- Default keymap options
		noremap = true,

		['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'"},
		['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'"},

		['n <leader>hs'] = '<cmd>Gitsigns stage_hunk<CR>',
		['v <leader>hs'] = ':Gitsigns stage_hunk<CR>',
		['n <leader>hu'] = '<cmd>Gitsigns undo_stage_hunk<CR>',
		['n <leader>hr'] = '<cmd>Gitsigns reset_hunk<CR>',
		['v <leader>hr'] = ':Gitsigns reset_hunk<CR>',
		['n <leader>hR'] = '<cmd>Gitsigns reset_buffer<CR>',
		['n <leader>hp'] = '<cmd>Gitsigns preview_hunk<CR>',
		['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line{full=true}<CR>',
		['n <leader>hS'] = '<cmd>Gitsigns stage_buffer<CR>',
		['n <leader>hU'] = '<cmd>Gitsigns reset_buffer_index<CR>',

		-- Text objects
		['o ih'] = ':<C-U>Gitsigns select_hunk<CR>',
		['x ih'] = ':<C-U>Gitsigns select_hunk<CR>'
    },
    watch_gitdir = {
		interval = 1000,
		follow_files = true
	},
	attach_to_untracked = true,
	current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
		delay = 1000,
		ignore_whitespace = false,
	},
	current_line_blame_formatter_opts = {
		relative_time = false
	},
	sign_priority = 6,
	update_debounce = 100,
	status_formatter = nil, -- Use default
	max_file_length = 40000,
	preview_config = {
		-- Options passed to nvim_open_win
		border = 'rounded',
		style = 'minimal',
		relative = 'cursor',
		row = 0,
		col = 1
	},
	yadm = {
		enable = false
	}
}

require('bufferline').setup {
	options = {
		numbers = function(opts)
			return opts.id
		end,
		--- @deprecated, please specify numbers as a function to customize the styling
		--number_style = "superscript",
		close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
		right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
		left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
		middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
		-- NOTE: this plugin is designed with this icon in mind,
		-- and so changing this is NOT recommended, this is intended
		-- as an escape hatch for people who cannot bear it for whatever reason
		indicator_icon = '▎',
		buffer_close_icon = '',
		modified_icon = '●',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',
		--- name_formatter can be used to change the buffer's label in the bufferline.
		--- Please note some names can/will break the
		--- bufferline so use this at your discretion knowing that it has
		--- some limitations that will *NOT* be fixed.
		name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
			-- remove extension from markdown files for example
			if buf.name:match('%.md') then
				return vim.fn.fnamemodify(buf.name, ':t:r')
			end
		end,
		max_name_length = 18,
		max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		tab_size = 18,
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = false,
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			return "("..count..")"
		end,
		-- NOTE: this will be called a lot so don't do any heavy processing here
		custom_filter = function(buf_number, buf_numbers)
			-- filter out filetypes you don't want to see
			if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
				return true
			end
			-- filter out by buffer name
			if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
				return true
			end
			-- filter out based on arbitrary rules
			-- e.g. filter out vim wiki buffer from tabline in your work repo
			if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
				return true
			end
			-- filter out by it's index number in list (don't show first buffer)
			if buf_numbers[1] ~= buf_number then
				return true
			end
		end,
		offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
		show_buffer_icons = true, -- disable filetype icons for buffers
		show_buffer_close_icons = true,
		show_close_icon = true,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		-- can also be a table containing 2 custom separators
		-- [focused and unfocused]. eg: { '|', '|' }
		separator_style = "thin",
		enforce_regular_tabs = false,
		always_show_bufferline = true,
		sort_by = 'id'
	}
}

require('pretty-fold').setup{
	keep_indentation = false,
	fill_char = '━',
	sections = {
		left = {
			'━ ', function() return string.rep('*', vim.v.foldlevel) end, ' ━┫', 'content', '┣'
		},
		right = {
			'┫ ', 'number_of_folded_lines', ': ', 'percentage', ' ┣━━',
		}
	}
}

require('pretty-fold.preview').setup{
	key = 'h',
	border = "rounded"
}

require("zen-mode").setup{
	window = {
		backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
		-- height and width can be:
		-- * an absolute number of cells when > 1
		-- * a percentage of the width / height of the editor when <= 1
		-- * a function that returns the width or the height
		width = 0.85, -- width of the Zen window
		height = 1.0, -- height of the Zen window
		-- by default, no options are changed for the Zen window
		-- uncomment any of the options below, or add other vim.wo options you want to apply
		options = {
			number = true, -- disable number column
			relativenumber = false, -- disable relative numbers
			cursorline = true, -- disable cursorline
			cursorcolumn = false, -- disable cursor column
			foldcolumn = "0", -- disable fold column
			list = true, -- disable whitespace characters
			signcolumn = "yes:1" -- disable signcolumn
		},
	},
	plugins = {
		-- disable some global vim options (vim.o...)
		-- comment the lines to not apply the options
		options = {
			enabled = true,
			ruler = false, -- disables the ruler text in the cmd line area
			showcmd = false -- disables the command in the last line of the screen
		},
		twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
		gitsigns = { enabled = false }, -- disables git signs
		tmux = { enabled = false }, -- disables the tmux statusline
		-- this will change the font size on kitty when in zen mode
		-- to make this work, you need to set the following kitty options:
		-- - allow_remote_control socket-only
		-- - listen_on unix:/tmp/kitty
		kitty = {
			enabled = false,
			font = "+4" -- font size increment
		},
	},
	-- callback where you can add custom code when the Zen window opens
	on_open = function(win)
	end,
	-- callback where you can add custom code when the Zen window closes
	on_close = function()
	end
}

require("indent_blankline").setup{}

EOF


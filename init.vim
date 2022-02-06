call plug#begin('C:\Users\Tom\.local\share\nvim\plugged')

" LSP related
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
"Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'
"Plug 'rafamadriz/friendly-snippets'
"Plug 'williamboman/nvim-lsp-installer'
"Plug 'onsails/lspkind-nvim'
"Plug 'folke/lsp-colors.nvim'
"Plug 'ray-x/lsp_signature.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" General
Plug 'glepnir/dashboard-nvim'
Plug 'akinsho/bufferline.nvim'
"Plug 'sheerun/vim-polyglot'
"Plug 'tpope/vim-fugitive'
Plug 'folke/trouble.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'jiangmiao/auto-pairs'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'anuvyklack/pretty-fold.nvim'
Plug 'andweeb/presence.nvim'
Plug 'folke/zen-mode.nvim'
Plug 'famiu/bufdelete.nvim'
Plug 'RRethy/vim-illuminate'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'kyazdani42/nvim-web-devicons'

" Themes
Plug 'chriskempson/base16-vim'
Plug 'sainnhe/everforest'

Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'

call plug#end()

set hidden
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
set scrolloff=4
set sidescrolloff=4
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
set listchars+=lead:-,multispace:---+,tab:▎⠀⠀

let g:asyncomplete_auto_completeopt = 0

let g:nvim_tree_quit_on_open = 0
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 3
let g:nvim_tree_root_folder_modifier = ':~'
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_group_empty = 0
let g:nvim_tree_disable_window_picker = 1
let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_symlink_arrow = ' ➛ '
let g:nvim_tree_respect_buf_cwd = 0
let g:nvim_tree_create_in_closed_folder = 1
let g:nvim_tree_refresh_wait = 500

let g:nvim_tree_window_picker_exclude = {
\	'filetype': [ 'notify', 'packer', 'qf' ],
\	'buftype': [ 'terminal' ]
\}

let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }
let g:nvim_tree_show_icons = { 'git': 1, 'folders': 1, 'files': 1, 'folder_arrows': 1 }

let g:nvim_tree_icons = {
\	'default': "",
\	'symlink': "",
\	'git': {
\		'unstaged': "✗",
\		'staged': "✓",
\		'unmerged': "",
\		'renamed': "➜",
\		'untracked': "★",
\		'deleted': "",
\		'ignored': "◌"
\	},
\	'folder': {
\		'arrow_open': "",
\		'arrow_closed': "",
\		'default': "",
\		'open': "",
\		'empty': "",
\		'empty_open': "",
\		'symlink': "",
\		'symlink_open': ""
\	},
\	'lsp': {
\		'hint': "",
\		'info': "",
\		'warning': "",
\		'error': ""
\	}
\}

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

let g:everforest_background = 'hard'
let g:everforest_diagnostic_text_highlight = 1
let g:everforest_ui_contrast = 'high'
let g:everforest_sign_column_background = 'default'

colorscheme everforest

highlight NvimTreeFolderIcon guibg=blue

nnoremap <C-n> :NvimTreeToggle<CR>

nnoremap <F2> :FloatermToggle<CR>
nnoremap <S-F2> :FloatermNew --width=1.0 --height=1.0<CR>
nnoremap <C-F2> :FloatermNew --width=0.75 --height=0.75<CR>

nnoremap <F3> :Telescope find_files<CR>
nnoremap <S-F3> :Telescope fd<CR>

nnoremap <F4> :TroubleToggle<CR>

nnoremap <F5> :lua require'dap'.continue()<CR>
nnoremap <S-F5> :lua require'dap'.step_over()<CR>
nnoremap <C-F5> :lua require'dap'.step_into()<CR>

nnoremap <F9> :lua require("dapui").toggle()<CR>
nnoremap <S-F9> :lua require'dap'.toggle_breakpoint()<CR>

nnoremap <F10> :ZenMode<CR>

nnoremap <silent>b[ :BufferLineCyclePrev<CR>
nnoremap <silent>b] :BufferLineCycleNext<CR>
nnoremap <silent>m[ :BufferLineMovePrev<CR>
nnoremap <silent>m] :BufferLineMoveNext<CR>
nnoremap <silent>bd :Bdelete<CR>



" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>



lua <<EOF

local dap = require("dap")

dap.adapters.netcoredbg = {
	type = 'executable',
	command = 'C:/Users/Tom/Downloads/Software/netcoredbg-win64/netcoredbg/netcoredbg.exe',
	args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
	{
		type = "netcoredbg",
		name = "launch - netcoredbg",
		request = "launch",
		program = function()
			return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/net6.0/RL3.dll', 'file')
		end,
	},
}

require("dapui").setup({
	icons = { expanded = "▾", collapsed = "▸" },
	 mappings = {
		-- Use a table to apply multiple mappings
		expand = { "<CR>", "<2-LeftMouse>" },
		open = "o",
		remove = "d",
		edit = "e",
		repl = "r",
	},
	sidebar = {
		-- You can change the order of elements in the sidebar
		elements = {
			-- Provide as ID strings or tables with "id" and "size" keys
			{
				id = "scopes",
				size = 0.25, -- Can be float or integer > 1
			},
			{ id = "breakpoints", size = 0.25 },
			{ id = "stacks", size = 0.25 },
			{ id = "watches", size = 00.25 },
		},
		size = 40,
		position = "left", -- Can be "left", "right", "top", "bottom"
	},
	tray = {
		elements = { "repl" },
		size = 10,
		position = "bottom", -- Can be "left", "right", "top", "bottom"
	},
	floating = {
		max_height = nil, -- These can be integers or a float between 0 and 1.
		max_width = nil, -- Floats will be treated as percentage of your screen.
		border = "rounded", -- Border style. Can be "single", "double" or "rounded"
		mappings = {
			close = { "q", "<Esc>" },
		},
	},
	windows = { indent = 1 },
})

require('telescope').setup {
	extensions = {
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
		}
	}
}

require('telescope').load_extension('fzy_native')

--cfg = {
--	debug = false,
--	log_path = vim.fn.stdpath("cache") .. "/lsp_signature.log",
--	verbose = false,
--	bind = true,
--	doc_lines = 10,
--	floating_window = false,
--	floating_window_above_cur_line = true,
--	floating_window_off_x = 1,
--	floating_window_off_y = 1,
--	fix_pos = false,
--	hint_enable = true,
--	hint_prefix = "🐼 ",
--	hint_scheme = "String",
--	hi_parameter = "LspSignatureActiveParameter",
--	max_height = 20,
--	max_width = 80,
--	handler_opts = { border = "rounded" },
--	always_trigger = true,
--	auto_close_after = nil,
--	extra_trigger_chars = { "(", "," },
--	zindex = 200,
--	padding = '',
--	transparency = nil,
--	shadow_blend = 36,
--	shadow_guibg = 'Black',
--	timer_interval = 1,
--	toggle_key = '<F8>'
--}

--require'lsp_signature'.setup(cfg)

--local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
--function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
--	opts = opts or {}
--	opts.border = opts.border or "rounded"
--	return orig_util_open_floating_preview(contents, syntax, opts, ...)
--end

--vim.diagnostic.config({
--	virtual_text = true,
--	float = {
--		update_in_insert = true
--	}
--})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

--local cmp = require('cmp')

--cmp.setup({
--	formatting = {
--		format = require('lspkind').cmp_format({
--			with_text = true,
--			menu = ({
--				buffer = "[Buffer]",
--				nvim_lsp = "[LSP]",
--				luasnip = "[LuaSnip]",
--				nvim_lua = "[Lua]",
--				latex_symbols = "[Latex]"
--			})
--		}),
--	},
--	snippet = {
--		expand = function(args)
--			vim.fn["vsnip#anonymous"](args.body)
--		end
--	},
--	mapping = {
--		['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
--		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
--		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
--		['<C-y>'] = cmp.config.disable,
--		['<C-e>'] = cmp.mapping({
--			i = cmp.mapping.abort(),
--			c = cmp.mapping.close()
--		}),
--		['<CR>'] = cmp.mapping.confirm({ select = true })
--	},
--	sources = cmp.config.sources({
--		{ name = 'nvim_lsp' },
--		{ name = 'vsnip' }
--	}, {
--		{ name = 'buffer' }
--	})
--})

--cmp.setup.cmdline('/', {
--	sources = {
--		{ name = 'buffer' }
--	}
--})

--cmp.setup.cmdline(':', {
--	sources = cmp.config.sources({
--		{ name = 'path' }
--	}, {
--		{ name = 'cmdline' }
--	})
--})

--local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--local nvim_lsp = require('lspconfig')

--local on_attach = function(client, bufnr)
--	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
--
--	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
--
--	local opts = { noremap=true, silent=true }
--
--	buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--	buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
--	buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
--	buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--	buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--	buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--	buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--	buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--	buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--	buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--	buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--	buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--	buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
--	buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
--	buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
--	buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
--	buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
--
--	require'illuminate'.on_attach(client)
--end

--local pid = vim.fn.getpid()
--local omnisharp_bin = "C:/Users/Tom/AppData/Local/nvim-data/lsp_servers/omnisharp/omnisharp/OmniSharp.exe"

--nvim_lsp.omnisharp.setup {
--	on_attach = on_attach,
--	capabilities = capabilities,
--	cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
--	flags = { debounce_text_changes = 150 }
--}

--nvim_lsp.vimls.setup {
--	on_attach = on_attach,
--	capabilities = capabilities,
--	flags = { debounce_text_changes = 150 }
--}

--nvim_lsp.sumneko_lua.setup {
--	on_attach = on_attach,
--	capabilities = capabilities,
--	flags = { debounce_text_changes = 150 }
--}

--nvim_lsp.jsonls.setup {
--	on_attach = on_attach,
--	capabilities = capabilities,
--	flags = { debounce_text_changes = 150 }
--}

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

--require("trouble").setup{
--	position = "bottom",
--	height = 6,
--	width = 50,
--	icons = true,
--	mode = "workspace_diagnostics",
--	fold_open = "",
--	fold_closed = "",
--	group = true,
--	padding = true,
--	action_keys = {
--		close = "q",
--		cancel = "<esc>",
--		refresh = "r",
--		jump = {"<cr>", "<tab>"},
--		open_split = { "<c-x>" },
--		open_vsplit = { "<c-v>" },
--		open_tab = { "<c-t>" },
--		jump_close = { "o" },
--		toggle_mode = "m",
--		toggle_preview = "P",
--		hover = "K",
--		preview = "p",
--		close_folds = { "zM", "zm" },
--		open_folds = { "zR", "zr" },
--		toggle_fold = { "zA", "za" },
--		previous = "k",
--		next = "j"
--	},
--	indent_lines = true,
--	auto_open = false,
--	auto_close = false,
--	auto_preview = false,
--	auto_fold = true,
--	auto_jump = {"lsp_definitions"},
--	signs = {
--		error = "",
--		warning = "",
--		hint = "",
--		information = "",
--		other = ""
--	},
--	use_diagnostic_signs = false
--}

require'nvim-tree'.setup {
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = false,
	ignore_ft_on_setup = {},
	update_to_buf_dir = {
		enable = false,
		auto_open = false
	},
	auto_close = false,
	open_on_tab = false,
	hijack_cursor = true,
	update_cwd = false,
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = ""
		}
	},
	update_focused_file = {
		enable = false,
		update_cwd = false,
		ignore_list = {}
	},
	system_open = {
		cmd = nil,
		args = {}
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 400
	},
	view = {
		hide_root_folder = false,
		width = 38,
		height = "100%",
		side = 'left',
		auto_resize = false,
		number = false,
		relativenumber = false,
		signcolumn = "yes:1",
		mappings = {
			custom_only = false,
			list = {}
		}
	},
	filters = {
		dotfiles = false,
		custom = {}
	},
	trash = {
		cmd = "trash",
		require_confirm = true
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
	signcolumn = true,
	numhl      = false,
	linehl     = false,
	word_diff  = false,
	keymaps = {
		noremap = true,
	},
	watch_gitdir = {
		interval = 1000,
		follow_files = true
	},
	attach_to_untracked = true,
	current_line_blame = false,
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = 'eol',
		delay = 1000,
		ignore_whitespace = false,
	},
	current_line_blame_formatter_opts = {
		relative_time = false
	},
	sign_priority = 6,
	update_debounce = 100,
	status_formatter = nil,
	max_file_length = 40000,
	preview_config = {
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
		close_command = function(bufnum)
			if vim.fn.bufnr() == bufnum then
				require('bufdelete').bufdelete(bufnum, true)
			else
				vim.cmd('bdelete '..bufnum)
			end
		end,
		right_mouse_command = "vertical sbuffer %d",
		left_mouse_command = "buffer %d",
		middle_mouse_command = "sbuffer %d",
		indicator_icon = '▎',
		buffer_close_icon = '',
		modified_icon = '●',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',
		name_formatter = function(buf)
			if buf.name:match('%.md') then
				return vim.fn.fnamemodify(buf.name, ':t:r')
			end
		end,
		max_name_length = 18,
		max_prefix_length = 15,
		tab_size = 18,
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = false,
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			return "("..count..")"
		end,
		custom_filter = function(buf_number, buf_numbers)
			if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
				return true
			end
			if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
				return true
			end
			if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
				return true
			end
			if buf_numbers[1] ~= buf_number then
				return true
			end
		end,
		offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = true,
		show_tab_indicators = true,
		persist_buffer_sort = true,
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
		backdrop = 0.95,
		width = 0.75,
		height = 1.0,
		options = {
			number = true,
			relativenumber = false,
			cursorline = true,
			cursorcolumn = false,
			foldcolumn = "0",
			list = true,
			signcolumn = "yes:1"
		},
	},
	plugins = {
		options = {
			enabled = true,
			ruler = false,
			showcmd = false
		},
		twilight = { enabled = false },
		gitsigns = { enabled = false },
		tmux = { enabled = false },
		kitty = {
			enabled = false,
			font = "+4"
		},
	},
	on_open = function(win)
	end,
	on_close = function()
	end
}

EOF


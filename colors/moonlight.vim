"    o  ┓━┓ ┏┏┓ ┳━┓
"    ┃  ┗━┓ ┃┃┃ ┃━━┓
"    ┇  ━━┛ ┛ ┇ ┛  ┇
" a wave questioning and growth descends upon your editor
" blatantly plagerized code from:
" https://github.com/xero/miasma.nvim
" #0e1218
" 38,$s/#121212/#121212/g
" 38,$s/#111111/#080808/g
" 38,$s/#151515/#111111/g
" 38,$s/#1c1c1c/#181818/g
" 38,$s/#111111/#222222/g
" 38,$s/#242d1d/#282828/
" 38,$s/#43492a/#333333/g
" 38,$s/#333333/#121212/g
" 38,$s/#666666/#888888/g
" 38,$s/#685742/#999999/g
" 38,$s/#c2c2../#aaaaaa/g
" 38,$s/#c9a554/#bbbbbb/g
" 38,$s/#d7c483/#cccccc/g
" 38,$s/#fbec9f/#dddddd/g
" 38,$s/#5f875f/#5bcefa/g
" 38,$s/#78824b/#7ec2ff/g
" 38,$s/#78834b/#a5b4ff/g
" 38,$s/#b36d43/#c8a5f5/g
" & (for error messages) #ef6a6a
" 38,$s/#bb7744/#eea9d3/g
" 38,$s/#fd9720/#f5a9b8/g
"
" additional changes:
" Telescope prompt border has the
" same fg as Visual bf, and no bg
" cursorline fg is black and bg is
" the bluest color

set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="ismr"
let g:colors_name="ismr"

" hi! link TelescopeMatching Special
hi Boolean guifg=#a5b4ff guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ColorColumn guifg=NONE guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi Comment guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Constant guifg=#eea9d3 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Cursor guifg=#0e1218 guibg=#2d3654 guisp=NONE blend=NONE gui=NONE
hi CursorColumn guifg=NONE guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi CursorLine guifg=NONE guibg=#1f2335 guisp=NONE blend=NONE gui=NONE
hi CursorLineNr guifg=#0e1218 guibg=#7386d0 guisp=NONE blend=NONE gui=bold
hi Delimiter guifg=#cbcfe7 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticDeprecated guifg=NONE guibg=NONE guisp=#2d3654 blend=NONE gui=strikethrough
hi DiagnosticError guifg=#ef6a6a guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticHint guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticHintFloating guifg=#7ec2ff guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticInfo guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticOk guifg=#7ec2ff guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticSignError guifg=#ef6a6a guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi DiagnosticSignHint guifg=#5bcefa guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi DiagnosticSignInfo guifg=#7ec2ff guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi DiagnosticSignWarn guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
hi DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
hi DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
hi DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
hi DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
hi DiagnosticUnnecessary guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=underline
hi DiagnosticVirtualTextError guifg=#ef6a6a guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticVirtualTextHint guifg=#7ec2ff guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi DiagnosticVirtualTextInfo guifg=#7ec2ff guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi DiagnosticVirtualTextWarn guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi DiagnosticVirtualTextWarning guifg=#cbcfe7 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticWarn guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticWarning guifg=#ef6a6a guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticWarningFloating guifg=#cbcfe7 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiffAdd guifg=#0e1218 guibg=#5bcefa guisp=NONE blend=NONE gui=NONE
hi DiffAdded guifg=#5bcefa guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi DiffChange guifg=#0e1218 guibg=#2d3654 guisp=NONE blend=NONE gui=NONE
hi DiffDelete guifg=#0e1218 guibg=#ef6a6a guisp=NONE blend=NONE gui=bold
hi DiffRemoved guifg=#ef6a6a guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi DiffText guifg=#0e1218 guibg=#2d3654 guisp=NONE blend=NONE gui=bold
hi Directory guifg=#7ec2ff guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi Error guifg=#2d3654 guibg=#eea9d3 guisp=NONE blend=NONE gui=NONE
hi ErrorMsg guifg=#ef6a6a guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi FloatShadow guifg=NONE guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi FloatShadowThrough guifg=NONE guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi FoldColumn guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi Folded guifg=#c8a5f5 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi Function guifg=#a5b4ff guibg=NONE guisp=NONE blend=NONE gui=NONE
hi GitSignsAdd guifg=#5bcefa guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi GitSignsChange guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi GitSignsDelete guifg=#ef6a6a guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi IblIndent guifg=#0e1218 guibg=NONE guisp=NONE blend=NONE gui=nocombine
hi IblScope guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=nocombine
hi IblWhitespace guifg=#0e1218 guibg=NONE guisp=NONE blend=NONE gui=nocombine
hi Identifier guifg=#cbcfe7 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Ignore guifg=#0e1218 guibg=NONE guisp=NONE blend=NONE gui=underline
hi IncSearch guifg=#0e1218 guibg=#eea9d3 guisp=NONE blend=NONE gui=NONE
hi Keyword guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyButton guifg=NONE guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi LazyButtonActive guifg=#0e1218 guibg=#a5b4ff guisp=NONE blend=NONE gui=NONE
hi LazyComment guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyCommit guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyCommitIssue guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyCommitScope guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyCommitType guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyDimmed guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyDir guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyH1 guifg=#a5b4ff guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi LazyH2 guifg=#a5b4ff guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi LazyLocal guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyNoCond guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyNormal guifg=NONE guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi LazyProgressDone guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyProgressTodo guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyProp guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyReasonCmd guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyReasonEvent guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyReasonFt guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyReasonImport guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyReasonKeys guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyReasonPlugin guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyReasonRuntime guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyReasonSource guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyReasonStart guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazySpecial guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyTaskError guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyTaskOutput guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyUrl guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LazyValue guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi LineNr guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi LspBorderBG guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi LspFloatWinNormal guifg=#cbcfe7 guibg=#cbcfe7 guisp=NONE blend=NONE gui=NONE
hi LspReferenceRead guifg=#5bcefa guibg=NONE guisp=#f5a9b8 blend=NONE gui=bold,undercurl
hi LspReferenceText guifg=#cbcfe7 guibg=#cbcfe7 guisp=#f5a9b8 blend=NONE gui=bold,undercurl
hi LspReferenceWrite guifg=#5bcefa guibg=NONE guisp=#f5a9b8 blend=NONE gui=bold,undercurl
hi LspSignatureActiveParameter guifg=NONE guibg=NONE guisp=#2d3654 blend=NONE gui=bold,italic,underline
hi MasonError guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi MasonHeader guifg=#cbcfe7 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi MasonHeading guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi MasonHighlight guifg=#7ec2ff guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi MasonHighlightBlockBoldSecondary guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi MasonHighlightBlockSecondary guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi MasonHighlightSecondary guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi MasonMuted guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi MasonWarning guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi MatchParen guifg=#cbcfe7 guibg=NONE guisp=NONE blend=NONE gui=bold,underline
hi ModeMsg guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
hi MoreMsg guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=bold
hi NonText guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=bold
hi Normal guifg=#eeeeee guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi Number guifg=#7ec2ff guibg=NONE guisp=NONE blend=NONE gui=NONE
hi NvimInternalError guifg=#0e1218 guibg=#ef6a6a guisp=NONE blend=NONE gui=NONE
hi Pmenu guifg=#cbcfe7 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi PmenuSbar guifg=NONE guibg=#2d3654 guisp=NONE blend=NONE gui=NONE
hi PmenuSel guifg=#0e1218 guibg=#a5b4ff guisp=NONE blend=NONE gui=NONE
hi PmenuThumb guifg=#cbcfe7 guibg=#cbcfe7 guisp=NONE blend=NONE gui=NONE
hi Question guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=bold
hi RedrawDebugClear guifg=#0e1218 guibg=#2d3654 guisp=NONE blend=NONE gui=NONE
hi RedrawDebugComposed guifg=#0e1218 guibg=#a5b4ff guisp=NONE blend=NONE gui=NONE
hi RedrawDebugNormal guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=reverse
hi RedrawDebugRecompose guifg=#0e1218 guibg=#eea9d3 guisp=NONE blend=NONE gui=NONE
hi ScrollbarCursor guifg=#0e1218 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ScrollbarCursorHandle guifg=#0e1218 guibg=#0e1218 guisp=NONE blend=0 gui=NONE
hi ScrollbarError guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ScrollbarErrorHandle guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=0 gui=NONE
hi ScrollbarGitAdd guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ScrollbarGitAddHandle guifg=#5bcefa guibg=#0e1218 guisp=NONE blend=0 gui=NONE
hi ScrollbarGitChange guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ScrollbarGitChangeHandle guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=0 gui=NONE
hi ScrollbarGitDelete guifg=#ef6a6a guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ScrollbarGitDeleteHandle guifg=#ef6a6a guibg=#0e1218 guisp=NONE blend=0 gui=NONE
hi ScrollbarHandle guifg=NONE guibg=#0e1218 guisp=NONE blend=0 gui=NONE
hi ScrollbarHint guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ScrollbarHintHandle guifg=#5bcefa guibg=#0e1218 guisp=NONE blend=0 gui=NONE
hi ScrollbarInfo guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ScrollbarInfoHandle guifg=#5bcefa guibg=#0e1218 guisp=NONE blend=0 gui=NONE
hi ScrollbarMisc guifg=#eea9d3 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ScrollbarMiscHandle guifg=#eea9d3 guibg=#0e1218 guisp=NONE blend=0 gui=NONE
hi ScrollbarSearch guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ScrollbarSearchHandle guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=0 gui=NONE
hi ScrollbarWarn guifg=#ef6a6a guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ScrollbarWarnHandle guifg=#ef6a6a guibg=#0e1218 guisp=NONE blend=0 gui=NONE
hi Search guifg=#0e1218 guibg=#5bcefa guisp=NONE blend=NONE gui=NONE
hi SignColumn guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi Special guifg=#eea9d3 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi SpecialKey guifg=#cbcfe7 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi SpellBad guifg=#cbcfe7 guibg=NONE guisp=#cbcfe7 blend=NONE gui=underline
hi SpellCap guifg=#5bcefa guibg=NONE guisp=#cbcfe7 blend=NONE gui=underline
hi SpellLocal guifg=#eea9d3 guibg=NONE guisp=#cbcfe7 blend=NONE gui=underline
hi SpellRare guifg=#c8a5f5 guibg=NONE guisp=#cbcfe7 blend=NONE gui=underline
hi Statement guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=bold
hi StatusLine guifg=#cbcfe7 guibg=#0e1218 guisp=NONE blend=NONE gui=bold
hi StatusLineNC guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=bold
hi String guifg=#c8a5f5 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi SyntasticErrorSign guifg=#ef6a6a guibg=NONE guisp=NONE blend=NONE gui=NONE
hi SyntasticWarningSign guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TabLine guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi TabLineFill guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi TabLineSel guifg=#0e1218 guibg=#a5b4ff guisp=NONE blend=NONE gui=bold
hi TabLineSelSep guifg=#a5b4ff guibg=#0e1218 guisp=NONE blend=NONE gui=bold
hi TabLineSep guifg=#0e1218 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi TelescopeBorder guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeMatching guifg=#0e1218 guibg=#eea9d3
hi TelescopeMultiIcon guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeMultiSelection guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeNormal guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewBlock guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewCharDev guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewDate guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewDirectory guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewExecute guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewGroup guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewHyphen guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewLink guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewMatch guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewMessage guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewMessageFillchar guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewNormal guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewPipe guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewRead guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewSize guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewSocket guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewSticky guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewUser guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePreviewWrite guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopePromptBorder guifg=#7ec2ff guibg=NONE
hi TelescopePromptNormal guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsClass guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsComment guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsConstant guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsDiffUntracked guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsField guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsFunction guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsIdentifier guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsLineNr guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsMethod guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsNormal guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsNumber guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsOperator guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsSpecialComment guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsStruct guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeResultsVariable guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TelescopeSelectionCaret guifg=#cbcfe7 guibg=#7ec2ff guisp=NONE blend=NONE gui=NONE
hi TelescopeTitle guifg=#5bcefa guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi TermCursor guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=reverse
hi Title guifg=#c8a5f5 guibg=NONE guisp=NONE blend=NONE gui=bold
hi Todo guifg=#cbcfe7 guibg=NONE guisp=NONE blend=NONE gui=bold,underline
hi Type guifg=#a5b4ff guibg=NONE guisp=NONE blend=NONE gui=bold
hi Underlined guifg=#a5b4ff guibg=NONE guisp=NONE blend=NONE gui=underline
hi User1 guifg=#cbcfe7 guibg=#eea9d3 guisp=NONE blend=NONE gui=NONE
hi User2 guifg=#cbcfe7 guibg=#cbcfe7 guisp=NONE blend=NONE gui=NONE
hi User3 guifg=#cbcfe7 guibg=#c8a5f5 guisp=NONE blend=NONE gui=NONE
hi User4 guifg=#cbcfe7 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi User5 guifg=#cbcfe7 guibg=#eea9d3 guisp=NONE blend=NONE gui=NONE
hi User6 guifg=#cbcfe7 guibg=#cbcfe7 guisp=NONE blend=NONE gui=NONE
hi User7 guifg=#cbcfe7 guibg=#7ec2ff guisp=NONE blend=NONE gui=NONE
hi User8 guifg=#cbcfe7 guibg=#c8a5f5 guisp=NONE blend=NONE gui=NONE
hi User9 guifg=#cbcfe7 guibg=#cbcfe7 guisp=NONE blend=NONE gui=NONE
hi VertSplit guifg=#0e1218 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi Visual guifg=#0e1218 guibg=#7ec2ff guisp=NONE blend=NONE gui=NONE
hi WarningMsg guifg=#ef6a6a guibg=NONE guisp=NONE blend=NONE gui=NONE
hi WhichKey guifg=#cbcfe7 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi WhichKeyBorder guifg=NONE guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi WhichKeyDesc guifg=#5bcefa guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi WhichKeyFloat guifg=NONE guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi WhichKeyGroup guifg=NONE guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi WhichKeySeparator guifg=#2d3654 guibg=#0e1218 guisp=NONE blend=NONE gui=NONE
hi WhichKeyValue guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi WildMenu guifg=black guibg=#2d3654 guisp=NONE blend=NONE gui=NONE
hi WinBar guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
hi gitCommitBranch guifg=#c8a5f5 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi gitCommitSelectedFile guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=NONE
hi gitCommitSelectedType guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=NONE
hi gitCommitUnmergedFile guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi gitCommitUnmergedType guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi htmlArg guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=NONE
hi htmlBold guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
hi htmlBoldItalic guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold,underline
hi htmlBoldUnderline guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold,underline
hi htmlBoldUnderlineItalic guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold,underline
hi htmlH1 guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
hi htmlItalic guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
hi htmlTag guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=NONE
hi htmlTagName guifg=#5bcefa guibg=NONE guisp=NONE blend=NONE gui=NONE
hi htmlUnderline guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
hi htmlUnderlineItalic guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
hi lCursor guifg=bg guibg=fg guisp=NONE blend=NONE gui=NONE
hi lessVariable guifg=#c8a5f5 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi markdownBold guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
hi markdownItalic guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
hi mustacheMarker guifg=#eea9d3 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi mustachePartial guifg=#eea9d3 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi mustacheSection guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
hi mustacheVariable guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi mustacheVariableUnescape guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi netrwClassify guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=bold
hi netrwExe guifg=#2d3654 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi phpIdentifier guifg=#c8a5f5 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi phpSpecialFunction guifg=#eea9d3 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi shDerefSimple guifg=#c8a5f5 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi xmlTag guifg=#7ec2ff guibg=NONE guisp=NONE blend=NONE gui=NONE
hi xmlTagName guifg=#a5b4ff guibg=NONE guisp=NONE blend=NONE gui=NONE
hi! link @boolean Boolean
hi! link @comment Comment
hi! link @constant Constant
hi! link @constant.builtin Special
hi! link @constructor Special
hi! link @field Identifier
hi! link @function Function
hi! link @function.builtin Special
hi! link @keyword Keyword
hi! link @lsp.type.comment Comment
hi! link @lsp.type.decorator Function
hi! link @lsp.type.enumMember Constant
hi! link @lsp.type.function Function
hi! link @lsp.type.method Function
hi! link @lsp.type.parameter Identifier
hi! link @lsp.type.property Identifier
hi! link @lsp.type.type Type
hi! link @lsp.type.variable Identifier
hi! link @method Function
hi! link @namespace Identifier
hi! link @number Number
hi! link @parameter Identifier
hi! link @preproc PreProc
hi! link @property Identifier
hi! link @punctuation Delimiter
hi! link @string String
hi! link @text.diff.add DiffAdd
hi! link @text.diff.delete DiffDelete
hi! link @text.literal Comment
hi! link @text.reference Identifier
hi! link @text.title Title
hi! link @text.todo Todo
hi! link @text.underline Underlined
hi! link @text.uri Underlined
hi! link @type Type
hi! link @variable Identifier
hi! link Character Constant
hi! link Conceal Ignore
hi! link Conditional Statement
hi! link CtrlPLinePre Comment
hi! link CtrlPMatch String
hi! link CurSearch Search
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link Debug Special
hi! link Define PreProc
hi! link DiagnosticErrorFloating DiagnosticError
hi! link DiagnosticFloatingError DiagnosticError
hi! link DiagnosticFloatingHint DiagnosticHint
hi! link DiagnosticFloatingInfo DiagnosticInfo
hi! link DiagnosticFloatingOk DiagnosticOk
hi! link DiagnosticFloatingWarn DiagnosticWarn
hi! link DiagnosticFloatingWarning DiagnosticWarning
hi! link DiagnosticSignOk DiagnosticOk
hi! link DiagnosticVirtualTextOk DiagnosticOk
hi! link EndOfBuffer NonText
hi! link Exception Statement
hi! link Float Number
hi! link FloatTitle Title
hi! link FzfLuaBorder Normal
hi! link FzfLuaCursor Cursor
hi! link FzfLuaCursorLine CursorLine
hi! link FzfLuaCursorLineNr CursorLineNr
hi! link FzfLuaNormal Normal
hi! link FzfLuaScrollFloatEmpty PmenuSbar
hi! link FzfLuaScrollFloatFull PmenuThumb
hi! link FzfLuaSearch IncSearch
hi! link Include PreProc
hi! link Label Statement
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link LspCodeLens Comment
hi! link Macro PreProc
hi! link MasonHeaderSecondary LazyButtonActive
hi! link MasonHighlightBlock LazyButtonActive
hi! link MasonHighlightBlockBold LazyButtonActive
hi! link MasonMutedBlock MasonMuted
hi! link MasonMutedBlockBold MasonHighlight
hi! link MsgSeparator StatusLine
hi! link NERDTreeExecFile String
hi! link NERDTreeHelp Comment
hi! link NormalFloat Pmenu
hi! link NvimArrow Delimiter
hi! link NvimColon Delimiter
hi! link NvimComma Delimiter
hi! link NvimFigureBrace NvimInternalError
hi! link NvimIdentifier Identifier
hi! link NvimInvalid Error
hi! link NvimInvalidSingleQuotedUnknownEscape NvimInternalError
hi! link NvimInvalidSpacing ErrorMsg
hi! link NvimNumber Number
hi! link NvimNumberPrefix Type
hi! link NvimOptionSigil Type
hi! link NvimParenthesis Delimiter
hi! link NvimSingleQuotedUnknownEscape NvimInternalError
hi! link NvimSpacing Normal
hi! link NvimString String
hi! link Operator Delimiter
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel PmenuSel
hi! link PmenuKind Pmenu
hi! link PmenuKindSel PmenuSel
hi! link PreCondit PreProc
hi! link PreProc Keyword
hi! link QuickFixLine Search
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi! link Structure Type
hi! link Substitute Search
hi! link Tag Special
hi! link TelescopePreviewBorder TelescopeBorder
hi! link TelescopePreviewLine TelescopeSelection
hi! link TelescopePreviewTitle TelescopeTitle
hi! link TelescopePromptCounter TelescopeBorder
hi! link TelescopePromptPrefix TelescopeTitle
hi! link TelescopePromptTitle TelescopeTitle
hi! link TelescopeResultsBorder TelescopeBorder
hi! link TelescopeResultsFileIcon Special
hi! link TelescopeResultsTitle TelescopeTitle
hi! link TelescopeSelection Visual
hi! link Typedef Type
hi! link Whitespace NonText
hi! link WinBarNC WinBar
hi! link WinSeparator VertSplit
hi! link gitCommitDiscardedFile gitCommitUnmergedFile
hi! link gitCommitDiscardedType gitCommitUnmergedType
hi! link gitCommitFile Directory
hi! link gitCommitUntrackedFile gitCommitUnmergedFile
hi! link helpExample String
hi! link helpHeadline Title
hi! link helpHyperTextEntry Statement
hi! link helpHyperTextJump Underlined
hi! link helpSectionDelim Comment
hi! link helpURL Underlined
hi! link htmlEndTag htmlTag
hi! link htmlLink Underlined
hi! link javaScript Normal
hi! link javaScriptBraces Delimiter
hi! link lessVariableValue Normal
hi! link markdownCodeBlock String
hi! link markdownCodeDelimiter NonText
hi! link markdownHeadingRule NonText
hi! link markdownLinkDelimiter Delimiter
hi! link markdownURLDelimiter Delimiter
hi! link phpDefine Statement
hi! link phpHereDoc String
hi! link phpVarSelector phpIdentifier
hi! link rubyConstant Constant
hi! link rubyDefine Statement
hi! link rubyInstanceVariable Number
hi! link rubyLocalVariableOrMethod Identifier
hi! link shDerefVar shDerefSimple
hi! link vimContinue Delimiter
hi! link vimHiAttrib Constant
hi! link vimSetSep Delimiter
hi! link xmlAttrib xmlTag
hi! link xmlEndTag xmlTag
hi! link xmlEqual xmlTag
hi! link xmlString xmlTagName

--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

-- stylua: ignore start
local c = {
    neutral        = hsl(0, 0, 73),     -- #BBBBBB
    white          = hsl(0, 0, 100),    -- #FFFFFF
    black          = hsl(0, 0, 0),      -- #000000
    mid_red        = hsl(0,100,27),     -- #880000
    steal_blue     = hsl(180, 25, 25),  -- #2F4F4F
    dark_blue      = hsl(240, 100, 27), -- #000088
    royal_blue     = hsl(240, 100, 63), -- #4444FF
    steal_teal     = hsl(207,44,49),    -- #4682b4
    mid_teal       = hsl(180,100,63),   -- #44FFFF

    bgreen  = hsl(120, 100, 63),
    byellow = hsl(60, 100, 50),
    borange = hsl(29, 100, 55),
    bred    = hsl(0,100,37),

    teal0  = hsl(180,100,000),
    teal1  = hsl(180,100,010),
    teal2  = hsl(180,100,020),
    teal3  = hsl(180,100,030),
    teal4  = hsl(180,100,040),
    teal5  = hsl(180,100,050),
    teal6  = hsl(180,100,060),
    teal7  = hsl(180,100,070),
    teal8  = hsl(180,100,080),
    teal9  = hsl(180,100,090),
    teal10 = hsl(180,100,100),

    sky0  = hsl(203,100,000),
    sky1  = hsl(203,100,010),
    sky2  = hsl(203,100,020),
    sky3  = hsl(203,100,030),
    sky4  = hsl(203,100,040),
    sky5  = hsl(203,100,050),
    sky6  = hsl(203,100,060),
    sky7  = hsl(203,100,070),
    sky8  = hsl(203,100,080),
    sky9  = hsl(203,100,090),
    sky10 = hsl(203,100,100),

    blue0  = hsl(255,100,000),
    blue1  = hsl(255,100,010),
    blue2  = hsl(255,100,020),
    blue3  = hsl(255,100,030),
    blue4  = hsl(255,100,040),
    blue5  = hsl(255,100,050),
    blue6  = hsl(255,100,060),
    blue7  = hsl(255,100,070),
    blue8  = hsl(255,100,080),
    blue9  = hsl(255,100,090),
    blue10 = hsl(255,100,100),

    purp0  = hsl(275,100,000),
    purp1  = hsl(275,100,010),
    purp2  = hsl(275,100,020),
    purp3  = hsl(275,100,030),
    purp4  = hsl(275,100,040),
    purp5  = hsl(275,100,050),
    purp6  = hsl(275,100,060),
    purp7  = hsl(275,100,070),
    purp8  = hsl(275,100,080),
    purp9  = hsl(275,100,090),
    purp10 = hsl(275,100,100),

    grey0  = hsl(000,000,000),
    grey02 = hsl(000,000,002),
    grey03 = hsl(000,000,003),
    grey1  = hsl(000,000,010),
    grey2  = hsl(000,000,020),
    grey3  = hsl(000,000,030),
    grey4  = hsl(000,000,040),
    grey5  = hsl(000,000,050),
    grey6  = hsl(000,000,060),
    grey7  = hsl(000,000,070),
    grey8  = hsl(000,000,080),
    grey9  = hsl(000,000,090),
    grey10 = hsl(000,000,100),
}

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    --   <HighlightGroupName> { bg = <hsl>|<string>, -- background
    --                          fg = <hsl>|<string>, -- foreground
    --                          sp = <hsl>|<string>, -- special character
    --                          gui = <string> },    -- bold, underline, undercurl, etc (:he attr-list)
    --
    --   Relative adjustment (rotate(), saturate(), desaturate(), lighten(), darken())
    --   Absolute adjustment (prefix above with abs_)
    --   Combination         (mix())
    --   Overrides           (hue(), saturation(), lightness())
    --   Access              (.h, .s, .l)
    --   Coercion            (tostring(), "Concatination: " .. color)
    --   Helpers             (readable())
    --
    --   Adjustment functions have shortcut aliases, ro, sa, de, li, da
    --                                               abs_sa, abs_de, abs_li, abs_da
    --
    -- See :h highlight-groups
    --
    Normal          { fg = c.neutral, bg = c.black  }, -- Normal text
    NormalNC        { fg = Normal.fg, bg = Normal.bg.li(1) }, -- normal text in non-current windows
    -- NormalFloat     { fg = teal8 }, -- Normal text in floating windows.
    -- Conceal         { fg = Normal.fg.da(20), gui="italic" }, -- Placeholder characters substituted for concealed text (see 'conceallevel')

    Search          { fg = c.grey0, bg = c.borange }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    CurSearch       { fg = Search.fg.da(20), bg = Search.bg.da(20) }, -- highlighting search pattern under the cursor (see 'hlsearch').
    IncSearch       { fg = c.grey0, bg = c.byellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute      { fg = c.teal1, bg = c.teal4 }, -- |:substitute| replacement text highlighting
    MatchParen      { fg = c.teal0, bg = c.teal8 }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|

    -- haven't figured out why these don't appear to have any effect
    Cursor          { fg = c.black, bg = c.bgreen }, -- Character under the cursor
    lCursor         { fg = Cursor.fg, bg = Cursor.bg }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM        { fg = Cursor.fg, bg = Cursor.bg }, -- Like Cursor, but used when in IME mode |CursorIM|
    TermCursor      { fg = Cursor.fg, bg = Cursor.bg }, -- Cursor in a focused terminal
    TermCursorNC    { fg = Cursor.fg, bg = Cursor.bg }, -- Cursor in an unfocused terminal

    ColorColumn     { bg = c.purp8 }, -- Columns set with 'colorcolumn'
    CursorColumn    { bg = c.purp1.da(42) }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine      { fg = CursorColumn.fg, bg = CursorColumn.bg, gui=CursorColumn.gui }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.

    Directory       { fg=c.mid_teal }, -- Directory names (and other special names in listings)

    DiffAdd         { fg=c.byellow, bg=c.grey03 }, -- |diff.txt|
    DiffChange      { fg=c.white, bg=c.grey03 }, -- Diff mode: Changed line |diff.txt|
    DiffDelete      { fg = c.grey3, bg = c.grey03 }, -- Diff mode: Deleted line |diff.txt|
    DiffText        { fg = c.mid_red, bg = c.grey03 }, -- Diff mode: Changed text within a changed line |diff.txt|

    EndOfBuffer     { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    ErrorMsg        { fg = c.white, bg = c.mid_red }, -- Error messages on the command line


    Folded          { fg = c.dark_blue }, -- Line used for closed folds
    FoldColumn      { }, -- 'foldcolumn'

    VertSplit       { }, -- Column separating vertically split windows
    SignColumn      { }, -- Column where |signs| are displayed
    LineNr          { fg = c.steal_teal, bg = c.grey02 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr    { fg = c.byellow, bg = c.black }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

    ModeMsg         { fg = c.white }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea         { fg = c.sky5 }, -- Area for messages and cmdline
    MsgSeparator    { fg = c.teal5 }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg         { fg = c.bgreen }, -- |more-prompt|

    NonText         { fg = c.teal3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.

    -- Pmenu           { fg=c.dark_blue, bg=c.mid_teal }, -- Popup menu: Normal item.
    -- PmenuSel        { fg = c.mid_teal, bg = c.dark_blue, gui="underline" }, -- Popup menu: Selected item.
    Pmenu           { fg = c.teal5, bg = c.teal0 }, -- Popup menu: Normal item.
    PmenuSel        { fg = c.teal5, bg = c.blue4, gui="bold,underline" }, -- Popup menu: Selected item.
    PmenuSbar       { }, -- Popup menu: Scrollbar.
    PmenuThumb      { }, -- Popup menu: Thumb of the scrollbar.

    Question        { fg = c.byellow }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

    SpecialKey      { fg = c.royal_blue }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.

    StatusLine      { fg = c.white, bg = c.steal_blue }, -- Status line of current window
    StatusLineNC    { fg = c.black, bg = c.neutral }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.

    -- TabLine      { }, -- Tab pages line, not active tab page label
    -- TabLineFill  { }, -- Tab pages line, where there are no labels
    -- TabLineSel   { }, -- Tab pages line, active tab page label

    Title           { fg = c.white }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual          { fg = c.black, bg = c.sky5 }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".

    WarningMsg      { fg = c.byellow }, -- Warning messages
    Whitespace      { fg = c.purp1 }, -- "nbsp", "space", "tab" and "trail" in 'listchars' (indentation markers)

    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment           { fg = Normal.fg.darken(40) }, -- Any comment

    Constant          { fg = hsl("#00aaaa") }, -- (*) Any constant
    String            { fg = hsl("#4682B4"), gui="none" }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    Boolean           { fg = hsl("#9BCD9B") }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier        { fg = hsl("#00E5EE") }, -- (*) Any variable name
    Function          { fg = hsl("#1E90FF") }, --   Function name (also: methods for classes)

    Statement         { fg = hsl("#00FFFF") }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    Operator          { fg = hsl("#00BFFF"), gui="none" }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    PreProc           { fg = hsl("#8470FF") }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type              { fg = c.white }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special           { fg = hsl("#87CEFA"), gui="none" }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    Underlined        { fg = hsl("#4444FF"), gui = "bold" }, -- gui = "underline" }, -- Text that stands out, HTML links
    Ignore            { fg = hsl("#444444") }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error             { fg = hsl("#BB0000"), bg = c.black }, -- Any erroneous construct
    Todo              { fg = hsl("#FFF300"), bg = hsl("#AA0006") }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
    --
    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- TSAttribute          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    -- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
    -- TSCharacter          { } , -- Character literals: `'a'` in C.
    -- TSCharacterSpecial   { } , -- Special characters.
    -- TSComment            { } , -- Line comments and block comments.
    -- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    -- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    -- TSConstBuiltin       { } , -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
    -- TSConstructor        { } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSDebug              { } , -- Debugging statements.
    -- TSDefine             { } , -- Preprocessor #define statements.
    -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    -- TSField              { } , -- Object and struct fields.
    -- TSFloat              { } , -- Floating-point number literals.
    -- TSFunction           { } , -- Function calls and definitions.
    -- TSFuncBuiltin        { } , -- Built-in functions: `print` in Lua.
    -- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    -- TSKeyword            { } , -- Keywords that don't fit into other categories.
    -- TSKeywordFunction    { } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    -- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      { } , -- Keywords like `return` and `yield`.
    -- TSLabel              { } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    -- TSMethod             { } , -- Method calls and definitions.
    -- TSNamespace          { } , -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             { } , -- Numeric literals that don't fit into other categories.
    -- TSOperator           { } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    -- TSParameter          { } , -- Parameters of a function.
    -- TSParameterReference { } , -- References to parameters of a function.
    -- TSPreProc            { } , -- Preprocessor #if, #else, #endif, etc.
    -- TSProperty           { } , -- Same as `TSField`.
    -- TSPunctDelimiter     { } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    -- TSPunctBracket       { } , -- Brackets, braces, parentheses, etc.
    -- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat             { } , -- Keywords related to loops: `for`, `while`, etc.
    -- TSStorageClass       { } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    -- TSString             { } , -- String literals.
    -- TSStringRegex        { } , -- Regular expression literals.
    -- TSStringEscape       { } , -- Escape characters within a string: `\n`, `\t`, etc.
    -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
    -- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
    -- TSTag                { } , -- Tags like HTML tag names.
    -- TSTagAttribute       { } , -- HTML tag attributes.
    -- TSTagDelimiter       { } , -- Tag delimiters like `<` `>` `/`.
    -- TSText               { } , -- Non-structured text. Like text in a markup language.
    -- TSStrong             { } , -- Text to be represented in bold.
    -- TSEmphasis           { } , -- Text to be represented with emphasis.
    -- TSUnderline          { } , -- Text to be represented with an underline.
    -- TSStrike             { } , -- Strikethrough text.
    -- TSTitle              { } , -- Text that is part of a title.
    -- TSLiteral            { } , -- Literal or verbatim text.
    -- TSURI                { } , -- URIs like hyperlinks or email addresses.
    -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
    -- TSTextReference      { } , -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    -- TSNote               { } , -- Text representation of an informational note.
    -- TSWarning            { } , -- Text representation of a warning note.
    -- TSDanger             { } , -- Text representation of a danger note.
    -- TSType               { } , -- Type (and class) definitions and annotations.
    -- TSTypeBuiltin        { } , -- Built-in types: `i32` in Rust.
    -- TSVariable           { } , -- Variable names that don't fit into other categories.
    -- TSVariableBuiltin    { } , -- Variable names defined by the language: `this` or `self` in Javascript.
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- stylua: ignore end
-- vi:nowrap

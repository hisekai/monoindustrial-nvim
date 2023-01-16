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

local lush = require('lush')
-- local hsl = lush.hsl

local colors = {
  carbon = "#222C28",
  carbon_darker = "#1D2521",
  carbon_darkest = "#151C19",
  white = "#ffffff",
  steel = "#A8B3AB",
  steel_lighter = "#C5C9C9",
  steel_darker = "#666C68",
  rust = "#C23B00",
  rust_lighter = "#C87500",
  rust_lightest = "#E98800",
  fluorite = "#588E60",
  emerald = "#159099",
  iron = "#A39E64",
  lapis = "#5778B6",
  lapis_lighter = "#648BD2",
  amethyst = "#A65EFF"
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
    -- See :h highlight-groups
    --
    ColorColumn { bg = colors.carbon_darker, fg = colors.white }, -- Columns set with 'colorcolumn'
    Conceal { bg = colors.steel_lighter, fg = colors.carbon }, -- Placeholder characters substituted for concealed text (see 'conceallevel')`
    Cursor { bg = colors.steel, fg = colors.carbon }, -- Character under the cursor
    lCursor { bg = colors.steel, fg = colors.carbon }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM { bg = colors.steel, fg = colors.carbon }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = colors.carbon_darker, fg = colors.white }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine { bg = colors.carbon_darker, fg = colors.steel_lightest }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory { fg = colors.iron }, -- Directory names (and other special names in listings)
    DiffAdd { bg = colors.lapis }, -- Diff mode: Added line |diff.txt|
    DiffChange { bg = colors.steel }, -- Diff mode: Changed line |diff.txt|
    DiffDelete { bg = colors.rust }, -- Diff mode: Deleted line |diff.txt|
    DiffText {}, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer { bg = colors.carbon_darker, fg = colors.carbon_darker }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor { bg = colors.white }, -- Cursor in a focused terminal
    TermCursorNC { bg = colors.steel }, -- Cursor in an unfocused terminal
    ErrorMsg { gui = "bold", bg = colors.rust, fg = colors.white }, -- Error messages on the command line
    VertSplit { bg = colors.carbon_darker, fg = colors.carbon_darker }, -- Column separating vertically split windows
    Folded { gui = "italic", bg = colors.carbon, fg = colors.steel_lightest }, -- Line used for closed folds
    FoldColumn { bg = colors.rust, fg = colors.white }, -- 'foldcolumn'
    SignColumn { bg = colors.carbon_darker, fg = colors.white }, -- Column where |signs| are displayed
    IncSearch { gui = "bold", bg = colors.steel_lighter, fg = colors.carbon_darker }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute { gui = "bold", bg = colors.steel_lighter, fg = colors.carbon_darker }, -- |:substitute| replacement text highlighting
    LineNr { bg = colors.carbon_darker, fg = colors.steel_lighter }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = colors.carbon_darker, fg = colors.steel_lighter }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen { fg = colors.emerald }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg { fg = colors.steel }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea { bg = colors.carbon_darkest, fg = colors.white }, -- Area for messages and cmdline
    MsgSeparator { bg = colors.lapis, fg = colors.carbon_darkest }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg { fg = colors.lapis }, -- |more-prompt|
    NonText { fg = colors.lapis }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { bg = colors.carbon, fg = colors.white }, -- Normal text
    NormalFloat { bg = colors.carbon, fg = colors.white }, -- Normal text in floating windows.
    NormalNC { fg = colors.white }, -- normal text in non-current windows
    Pmenu { bg = colors.carbon_darker, fg = colors.white }, -- Popup menu: Normal item.
    PmenuSel { bg = colors.steel_darker, fg = colors.white }, -- Popup menu: Selected item.
    PmenuSbar { bg = colors.carbon_darker, fg = colors.steel }, -- Popup menu: Scrollbar.
    PmenuThumb { bg = colors.carbon }, -- Popup menu: Thumb of the scrollbar.
    Question { gui = "italic", fg = colors.emerald }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { gui = "italic", fg = colors.lapis }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search { bg = colors.steel_darker, fg = colors.white }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey { fg = colors.emerald }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine { bg = colors.carbon_darkest, fg = colors.steel_lighter }, -- Status line of current window
    StatusLineNC { bg = colors.carbon_darker, fg = colors.steel_lighter }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine { bg = colors.steel, fg = colors.carbon_darker }, -- Tab pages line, not active tab page label
    TabLineFill { bg = colors.steel, fg = colors.carbon_darker }, -- Tab pages line, where there are no labels
    TabLineSel { bg = colors.carbon_darker, fg = colors.white }, -- Tab pages line, active tab page label
    Title { fg = colors.white }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual { bg = colors.carbon_darkest }, -- Visual mode selection
    VisualNOS { bg = colors.carbon_darker, fg = colors.steel_lighter }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg { gui = "bold", bg = colors.steel_lighter, fg = colors.rust }, -- Warning messages
    Whitespace { fg = colors.steel_lighter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu { gui = "bold", bg = colors.steel, fg = colors.carbon_darker }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment { bg = colors.carbon_darkest, fg = colors.steel_darker }, -- Any comment

    Constant { bg = colors.carbon_darker, fg = colors.white }, -- (*) Any constant
    String { bg = colors.carbon_darker, fg = colors.white }, --   A string constant: "this is a string"
    Character { bg = colors.carbon_darker, fg = colors.white }, --   A character constant: 'c', '\n'
    Number { fg = colors.rust_lighter }, --   A number constant: 234, 0xff
    Boolean { fg = colors.rust_lighter }, --   A boolean constant: TRUE, false
    Float { fg = colors.rust_lighter }, --   A floating point constant: 2.3e10

    Identifier { fg = colors.white }, -- (*) Any variable name
    Function { fg = colors.iron }, --   Function name (also: methods for classes)

    Statement { fg = colors.steel }, -- (*) Any statement
    Conditional { fg = colors.iron }, --   if, then, else, endif, switch, etc.
    Repeat { fg = colors.iron }, --   for, do, while, etc.
    Label { fg = colors.iron }, --   case, default, etc.
    Operator { fg = colors.steel }, --   "sizeof", "+", "*", etc.
    Keyword { fg = colors.iron }, --   any other keyword
    Exception { fg = colors.iron }, --   try, catch, throw

    PreProc { fg = colors.rust_lighter }, -- (*) Generic Preprocessor
    Include { fg = colors.rust_lighter }, --   Preprocessor #include
    Define { fg = colors.rust_lighter }, --   Preprocessor #define
    Macro { fg = colors.white }, --   Same as Define
    PreCondit { fg = colors.rust_lighter }, --   Preprocessor #if, #else, #endif, etc.

    Type { fg = colors.rust_lighter }, -- (*) int, long, char, etc.
    StorageClass { fg = colors.iron }, --   static, register, volatile, etc.
    Structure { fg = colors.iron }, --   struct, union, enum, etc.
    Typedef { fg = colors.iron }, --   A typedef

    Special { fg = colors.iron }, -- (*) Any special symbol
    SpecialChar { fg = colors.rust_lighter }, --   Special character in a constant
    Tag { fg = colors.amethyst }, --   You can use CTRL-] on this
    Delimiter { fg = colors.rust_lighter }, --   Character that needs attention
    SpecialComment { fg = colors.amethyst }, --   Special things inside a comment (e.g. '\n')
    Debug { bg = colors.carbon_darkest, fg = colors.steel_lighter }, --   Debugging statements

    Underlined { gui = "underline", fg = colors.lapis_lighter }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error { gui = "bold", fg = colors.rust }, -- Any erroneous construct
    Todo { gui = "bold", bg = colors.rust_lightest }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

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
    TSAttribute { fg = colors.iron }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    TSBoolean { fg = colors.rust_lighter }, -- Boolean literals: `True` and `False` in Python.
    TSCharacter { bg = colors.carbon_darker, fg = colors.white }, -- Character literals: `'a'` in C.
    TSCharacterSpecial { fg = colors.amethyst }, -- Special characters.
    TSComment { bg = colors.carbon_darkest, fg = colors.steel_darker }, -- Line comments and block comments.
    TSConditional { fg = colors.iron }, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    TSConstant { fg = colors.white }, -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstBuiltin { fg = colors.rust_lighter }, -- Built-in constant values: `nil` in Lua.
    TSConstMacro { fg = colors.rust_lighter }, -- Constants defined by macros: `NULL` in C.
    TSConstructor { fg = colors.iron }, -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    TSDebug {}, -- Debugging statements.
    TSDefine { fg = colors.rust_lighter }, -- Preprocessor #define statements.
    TSError { fg = colors.rust }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    TSException { fg = colors.iron }, -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField { fg = colors.steel_lighter }, -- Object and struct fields.
    TSFloat { fg = colors.rust_lighter }, -- Floating-point number literals.
    TSFunction { fg = colors.steel }, -- Function calls and definitions.
    TSFuncBuiltin { fg = colors.white }, -- Built-in functions: `print` in Lua.
    TSFuncMacro { fg = colors.white }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSInclude { fg = colors.iron }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSKeyword { fg = colors.iron }, -- Keywords that don't fit into other categories.
    TSKeywordFunction { fg = colors.iron }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    TSKeywordOperator { fg = colors.white }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    TSKeywordReturn { fg = colors.iron }, -- Keywords like `return` and `yield`.
    TSLabel { fg = colors.rust_lighter }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
    TSMethod { fg = colors.steel_lighter }, -- Method calls and definitions.
    TSNamespace { fg = colors.rust_lightest }, -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    TSNumber { fg = colors.rust_lightest }, -- Numeric literals that don't fit into other categories.
    TSOperator { fg = colors.steel }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter { fg = colors.white }, -- Parameters of a function.
    TSParameterReference { fg = colors.white }, -- References to parameters of a function.
    TSPreProc { fg = colors.fluorite }, -- Preprocessor #if, #else, #endif, etc.
    TSProperty { fg = colors.steel_lighter }, -- Same as `TSField`.
    TSPunctDelimiter { fg = colors.white }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctBracket { fg = colors.white }, -- Brackets, braces, parentheses, etc.
    TSPunctSpecial { fg = colors.rust_lightest }, -- Special punctuation that doesn't fit into the previous categories.
    TSRepeat { fg = colors.iron }, -- Keywords related to loops: `for`, `while`, etc.
    TSStorageClass { fg = colors.iron }, -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    TSString { bg = colors.carbon_darkest, fg = colors.white }, -- String literals.
    TSStringRegex { fg = colors.amethyst }, -- Regular expression literals.
    TSStringEscape { bg = colors.carbon_darkest, fg = colors.steel_lighter }, -- Escape characters within a string: `\n`, `\t`, etc.
    --TSStringSpecial { gui = "italic", fg = colors.lapis }, -- Strings with special meaning that don't fit into the previous categories.
    TSSymbol { fg = colors.fluorite }, -- Identifiers referring to symbols or atoms.
    TSTag { fg = colors.amethyst }, -- Tags like HTML tag names.
    TSTagAttribute { fg = colors.steel_lighter }, -- HTML tag attributes.
    TSTagDelimiter { fg = colors.steel_lighter }, -- Tag delimiters like `<` `>` `/`.
    TSText { fg = colors.white }, -- Non-structured text. Like text in a markup language.
    TSStrong { gui = "bold", fg = colors.white }, -- Text to be represented in bold.
    TSEmphasis { gui = "italic", fg = colors.white }, -- Text to be represented with emphasis.
    TSUnderline { gui = "underline", fg = colors.white }, -- Text to be represented with an underline.
    TSStrike { gui = "strikethrough", fg = colors.white }, -- Strikethrough text.
    -- TSTitle              { } , -- Text that is part of a title.
    -- TSLiteral            { } , -- Literal or verbatim text.
    TSURI { gui = "underline", fg = colors.lapis_lighter }, -- URIs like hyperlinks or email addresses.
    -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
    TSTextReference { gui = "italic", fg = colors.steel }, -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSNote { gui = "italic", fg = colors.lapis }, -- Text representation of an informational note.
    -- TSWarning            { } , -- Text representation of a warning note.
    -- TSDanger             { } , -- Text representation of a danger note.
    -- TSType               { } , -- Type (and class) definitions and annotations.
    TSTypeBuiltin { fg = colors.rust }, -- Built-in types: `i32` in Rust.
    TSVariable { fg = colors.white }, -- Variable names that don't fit into other categories.
    TSVariableBuiltin { gui = "italic", fg = colors.lapis_lighter }, -- Variable names defined by the language: `this` or `self` in Javascript.
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap

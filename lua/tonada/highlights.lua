
local colors = require("tonada.colors").palette
local M = {}

M.groups = {
  "ColorColumn",                          { bg = colors.carbon, fg = colors.NONE },
  "Conceal",                              { bg = colors.NONE, fg = colors.NONE }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
  "Cursor",                               { bg = colors.lavender, fg = colors.chaos_black }, -- Character under the cursor
  -- CurSearch                            {}, -- Highlighting a search pattern under the cursor (see 'hlsearch')
  -- lCursor                              {}, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
  -- CursorIM                             {}, -- Like Cursor, but used when in IME mode |CursorIM|
  "CursorColumn",                         { bg = colors.dynamic_black , fg = colors.NONE },
  "CursorLine",                           { bg = colors.carbon, fg = colors.NONE },
  "Directory",                            { bg = colors.gentle_blue, fg = colors.NONE },
  "DiffAdd",                              { bg = colors.NONE, fg = colors.green },
  "DiffChange",                           { bg = colors.NONE, fg = colors.nickel },
  "DiffDelete",                           { bg = colors.NONE, fg = colors.red },
  "DiffText",                             { bg = colors.lead, fg = colors.white },
  "EndOfBuffer",                          { bg = colors.NONE, fg = colors.carbon },
  -- TermCursor                           {}, -- Cursor in a focused terminal
  -- TermCursorNC                         {}, -- Cursor in an unfocused terminal
  "ErrorMsg",                             { bg = colors.chaos_black, fg = colors.white_chocolate },
  "VertSplit",                            { bg = colors.NONE, fg = colors.carbon },
  "Folded",                               { bg = colors.lead, fg = colors.nickel },
  "FoldColumn",                           { bg = colors.NONE, fg = colors.NONE }, -- 'foldcolumn'
  "SignColumn",                           { bg = colors.NONE, fg = colors.nickel }, -- Column where |signs| are displayed
  "IncSearch",                            { bg = colors.silver, fg = colors.dynamic_black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
  "Substitute",                           { bg = colors.weldon, fg = colors.dynamic_black }, -- |:substitute| replacement text highlighting
  "LineNr",                               { bg = colors.NONE, fg = colors.arsenic }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
  -- LineNrAbove                          {}, -- Line number for when the 'relativenumber' option is set, above the cursor line
  -- LineNrBelow                          {}, -- Line number for when the 'relativenumber' option is set, below the cursor line
  "CursorLineNr",                         { bg = colors.NONE, fg = colors.white },
  "CursorLineFold",                       { bg = colors.lead, fg = colors.nickel },
  "CursorLineSign",                       { bg = colors.NONE, fg = colors.onyx },
  "MatchWord",                            { bg = colors.arsenic, fg = colors.white },
  "MatchParen",                           { link = "MatchWord" },
  "ModeMsg",                              { bg = colors.NONE, fg = colors.light_slate },
  "MsgArea",                              { bg = colors.NONE, fg = colors.light_slate }, -- Area for messages and cmdline
  -- MsgSeparator                         {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
  "MoreMsg",                              { bg = colors.NONE, fg = colors.light_slate }, -- |more-prompt|
  -- NonText                              {}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
  "Normal",                               { bg = colors.lead, fg = colors.lavender }, -- Normal text
  "NormalFloat",                          { bg = colors.dynamic_black, fg = colors.NONE }, -- Normal text in floating windows.
  "FloatBorder",                          { bg = colors.NONE, fg = colors.blue }, -- Border of floating windows.
  "FloatTitle",                           { bg = colors.arsenic, fg = colors.white }, -- Title of floating windows.
  "NormalNC",                             { bg = colors.NONE, fg = colors.NONE }, -- normal text in non-current windows
  "Pmenu",                                { bg = colors.raisin, fg = colors.NONE }, -- Popup menu: Normal item.
  "PmenuSel",                             { bg = colors.weldon, fg = colors.chaos_black }, -- Popup menu: Selected item.
  -- PmenuKind                            {}, -- Popup menu: Normal item "kind"
  -- PmenuKindSel                         {}, -- Popup menu: Selected item "kind"
  -- PmenuExtra                           {}, -- Popup menu: Normal item "extra text"
  -- PmenuExtraSel                        {}, -- Popup menu: Selected item "extra text"
  "PmenuSbar",                            { bg = colors.raisin, fg = colors.NONE },
  "PmenuThumb",                           { bg = colors.arsenic, fg = colors.NONE },
  "Question",                             { bg = colors.NONE, fg = colors.gentle_blue },
  "QuickFixLine",                         { bg = colors.dynamic_black, fg = colors.NONE },
  "Search",                               { bg = colors.weldon, fg = colors.dynamic_black },
  "SpecialKey",                           { bg = colors.NONE, fg = colors.onyx },
  -- SpellBad                             {}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
  -- SpellCap                             {}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
  -- SpellLocal                           {}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
  -- SpellRare                            {}, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
  "StatusLine",                           { bg = colors.dynamic_black, fg = colors.NONE }, -- Status line of current window
  -- StatusLineNC                         {}, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
  -- TabLine                              {}, -- Tab pages line, not active tab page label
  "TabLineFill",                          { bg = colors.eerie_black, fg = colors.NONE }, -- Tab pages line, where there are no labels
  -- TabLineSel                           { }, -- Tab pages line, active tab page label
  "Title",                                { bg = colors.NONE, fg = colors.gentle_blue  }, -- Titles for output from ":set all", ":autocmd" etc.
  "Visual",                               { bg = colors.onyx, fg = colors.NONE }, -- Visual mode selection
  "VisualNOS",                            { bg = colors.NONE, fg = colors.white_chocolate }, -- Visual mode selection when vim is "Not Owning the Selection".
  "WarningMsg",                           { bg = colors.NONE, fg = colors.white_chocolate }, -- Warning messages
  -- Whitespace                           { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
  "Winseparator",                         { bg = colors.NONE, fg = colors.carbon }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
  "WildMenu",                             { bg = colors.weldon, fg = colors.white_chocolate }, -- Current match in 'wildmenu' completion
  "WinBar",                               { bg = colors.NONE, fg = colors.NONE }, -- Window bar of current window
  "WinBarNC",                             { bg = colors.NONE, fg = colors.NONE }, -- Window bar of not-current windows
  "Comment",                              { bg = colors.NONE, fg = colors.quartz }, -- Any comment
  "Constant",                             { bg = colors.NONE, fg = colors.white_chocolate }, -- (*) Any constant
  "String",                               { bg = colors.NONE, fg = colors.light_blue }, --   A string constant: "this is a string"
  "Character",                            { bg = colors.NONE, fg = colors.light_blue }, --   A character constant: 'c', '\n'
  "Number",                               { bg = colors.NONE, fg = colors.purple }, --   A number constant: 234, 0xff
  "Boolean",                              { bg = colors.NONE, fg = colors.purple }, --   A boolean constant: TRUE, false
  "Float",                                { bg = colors.NONE, fg = colors.purple }, --   A floating point constant: 2.3e10
  "Identifier",                           { bg = colors.NONE, fg = colors.lavender, sp = "none" }, -- (*) Any variable name
  "Function",                             { bg = colors.NONE, fg = colors.gentle_blue }, --   Function name (also: methods for classes)
  "Statement",                            { bg = colors.NONE, fg = colors.pastel_gray }, -- (*) Any statement
  "Conditional",                          { bg = colors.NONE, fg = colors.pastel_gray }, --   if, then, else, endif, switch, etc.
  "Repeat",                               { bg = colors.NONE, fg = colors.pastel_gray }, --   for, do, while, etc.
  "Label",                                { bg = colors.NONE, fg = colors.pastel_gray }, --   case, default, etc.
  "Operator",                             { bg = colors.NONE, fg = colors.orange, sp = "none" }, --   "sizeof", "+", "*", etc.
  "Keyword",                              { bg = colors.NONE, fg = colors.pastel_gray }, --   any other keyword
  "Exception",                            { bg = colors.NONE, fg = colors.white_chocolate }, --   try, catch, throw
  "PreProc",                              { bg = colors.NONE, fg = colors.weldon }, -- (*) Generic Preprocessor
  "Include",                              { bg = colors.NONE, fg = colors.light_blue }, --   Preprocessor #include
  "Define",                               { bg = colors.NONE, fg = colors.pastel_gray, sp = "none" }, --   Preprocessor #define
  "Macro",                                { bg = colors.NONE, fg = colors.white_chocolate }, --   Same as Define
  "PreCondit",                            { bg = colors.NONE, fg = colors.white_chocolate }, --   Preprocessor #if, #else, #endif, etc.
  "Type",                                 { bg = colors.NONE, fg = colors.white_chocolate, sp = "none" }, -- (*) int, long, char, etc.
  "StorageClass",                         { bg = colors.NONE, fg = colors.white_chocolate }, --   static, register, volatile, etc.
  "Structure",                            { bg = colors.NONE, fg = colors.white_chocolate }, --   struct, union, enum, etc.
  "Typedef",                              { bg = colors.NONE, fg = colors.white_chocolate }, --   A typedef
  "Special",                              { bg = colors.NONE, fg = colors.gainsboro }, -- (*) Any special symbol
  "SpecialChar",                          { bg = colors.NONE, fg = colors.gentle_blue }, --   Special character in a constant
  "Tag",                                  { bg = colors.NONE, fg = colors.weldon }, --   You can use CTRL-] on this
  -- Delimiter                            {}, --   Character that needs attention
  -- SpecialComment                       {}, --   Special things inside a comment (e.g. '\n')
  -- Debug                                {}, --   Debugging statements
  -- Underlined                           { gui = "underline" }, -- Text that stands out, HTML links
  -- Ignore                               { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
  "Error",                                { bg = colors.white_chocolate, fg = colors.chaos_black }, -- Any erroneous construct
  "Todo",                                 { bg = colors.dynamic_black, fg = colors.weldon }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
  --********************
  -- NVIM-LSP
  --********************
  "LspReferenceText",                     { bg = colors.onyx, fg = colors.NONE }, -- Used for highlighting "text" references
  "LspReferenceRead",                     { bg = colors.onyx, fg = colors.NONE }, -- Used for highlighting "read" references
  "LspReferenceWrite",                    { bg = colors.onyx, fg = colors.NONE }, -- Used for highlighting "write" references
  -- LspCodeLens                          { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
  -- LspCodeLensSeparator                 { } , -- Used to color the seperator between two or more code lens.
  "LspSignatureActiveParameter",          { bg = colors.light_blue, fg = colors.chaos_black } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
  "DiagnosticError",                      { bg = colors.NONE, fg = colors.red },
  "DiagnosticWarn",                       { bg = colors.NONE, fg = colors.yellow },
  "DiagnosticInfo",                       { bg = colors.NONE, fg = colors.blue },
  "DiagnosticHint",                       { bg = colors.NONE, fg = colors.green },
  "DiagnosticOk",                         { bg = colors.NONE, fg = colors.purple},
  --********************
  -- TREESITTER
  --********************
  "@text.literal",                        { bg = colors.NONE, fg = colors.silver }, -- Comment
  "@text.reference",                      { bg = colors.NONE, fg = colors.lavender }, -- Identifier
  "@text.title",                          { bg = colors.NONE, fg = colors.silver }, -- Title
  "@text.uri",                            { bg = colors.NONE, fg = colors.silver }, -- Underlined
  "@text.underline",                      { bg = colors.NONE, fg = colors.gentle_blue, underline = true }, -- Underlined
  "@text.todo",                           { bg = colors.NONE, fg = colors.silver }, -- Todo
  "@comment",                             { bg = colors.NONE, fg = colors.quartz }, -- Comment
  "@punctuation",                         { bg = colors.NONE, fg = colors.gentle_blue }, -- Delimiter
  "@punctuation.delimiter",               { bg = colors.NONE, fg = colors.nickel }, -- Delimiter
  "@punctuation.bracket",                 { bg = colors.NONE, fg = colors.red }, -- Delimiter
  "@constant",                            { bg = colors.NONE, fg = colors.white_chocolate }, -- Constant
  "@constant.builtin",                    { bg = colors.NONE, fg = colors.purple }, -- Special
  "@constant.macro",                      { bg = colors.NONE, fg = colors.white_chocolate }, -- Define
  "@define",                              { bg = colors.NONE, fg = colors.white_chocolate }, -- Define
  "@macro",                               { link = "Macro" }, -- Macro
  "@string",                              { bg = colors.NONE, fg = colors.light_blue }, -- String
  "@string.regex",                        { bg = colors.NONE, fg = colors.gainsboro }, -- SpecialChar
  "@string.escape",                       { bg = colors.NONE, fg = colors.gainsboro }, -- SpecialChar
  "@string.special",                      { bg = colors.NONE, fg = colors.gainsboro }, -- SpecialChar
  "@character",                           { bg = colors.NONE, fg = colors.white_chocolate }, -- Character
  "@character.special",                   { bg = colors.NONE, fg = colors.white_chocolate }, -- SpecialChar
  "@number",                              { bg = colors.NONE, fg = colors.purple }, -- Number
  "@boolean",                             { link = "Boolean" }, -- Boolean
  "@float",                               { link = "Float" }, -- Float
  "@function",                            { bg = colors.NONE, fg = colors.gentle_blue }, -- Function
  "@function.call",                       { bg = colors.NONE, fg = colors.gentle_blue }, -- Function
  "@function.builtin",                    { bg = colors.NONE, fg = colors.gentle_blue }, -- Special
  "@function.macro",                      { bg = colors.NONE, fg = colors.white_chocolate }, -- Macro
  "@function.method",                     { bg = colors.NONE, fg = colors.gentle_blue }, -- Function
  "@function.method.call",                { bg = colors.NONE, fg = colors.gentle_blue }, -- Function
  "@parameter",                           { link = "Identifier" }, -- Identifier
  "@method",                              { bg = colors.NONE, fg = colors.gentle_blue }, -- Function
  "@field",                               { link = "Identifier" }, -- Identifier
  "@property",                            { link = "Identifier" }, -- Identifier
  "@constructor",                         { bg = colors.NONE, fg = colors.gainsboro }, -- Special
  "@conditional",                         { link = "Conditional" }, -- Conditional
  "@repeat",                              { link = "Repeat" }, -- Repeat
  "@label",                               { link = "Label" }, -- Label
  "@operator",                            { bg = colors.NONE, fg = colors.orange }, -- Operator
  "@keyword",                             { bg = colors.NONE, fg = colors.pastel_gray }, -- Keyword
  "@keyword.return",                      { bg = colors.NONE, fg = colors.pastel_gray }, -- Keyword
  "@exception",                           { bg = colors.NONE, fg = colors.white_chocolate }, -- Exception
  "@variable",                            { bg = colors.NONE, fg = colors.lavender }, -- Identifier
  "@variable.parameter",                  { bg = colors.NONE, fg = colors.pastel_gray }, -- Identifier
  "@variable.member",                     { bg = colors.NONE, fg = colors.blue }, -- Identifier
  "@type",                                { bg = colors.NONE, fg = colors.blue }, -- Type
  "@type.definition",                     { bg = colors.NONE, fg = colors.weldon }, -- Typedef
  "@type.definition",                     { bg = colors.NONE, fg = colors.light_blue }, -- Typedef
  "@module",                              { bg = colors.NONE, fg = colors.light_blue }, -- Typedef
  "@storageclass",                        { link = "StorageClass"}, -- StorageClass
  "@structure",                           { link = "Structure"}, -- Structure
  "@namespace",                           { link = "Identifier"}, -- Identifier
  "@include",                             { link = "Include"}, -- Include
  --CPP
  --"@preproc",                           {}, -- PreProc
  --"@debug",                             {}, -- Debug
  --"@tag",                               {}, -- Tag
  "@lsp.mod.constructorOrDestructor",     { bg = colors.NONE, fg = colors.pastel_gray },
  --********************
  -- NVIM-TREE
  --********************
  "NvimTreeEmptyFolderName",              { bg = colors.NONE, fg = colors.blue },
  "NvimTreeEndOfBuffer",                  { bg = colors.NONE, fg = colors.dynamic_black },
  "NvimTreeFolderIcon",                   { bg = colors.NONE, fg = colors.cardigan },
  "NvimTreeFolderName",                   { bg = colors.NONE, fg = colors.blue },
  "NvimTreeFolderArrowOpen",              { bg = colors.NONE, fg = colors.cardigan },
  "NvimTreeFolderArrowClosed",            { bg = colors.NONE, fg = colors.quartz },
  "NvimTreeGitDirty",                     { bg = colors.NONE, fg = colors.red },
  "NvimTreeNormal",                       { bg = colors.eerie_black, fg = colors.white },
  "NvimTreeNormalNC",                     { bg = colors.eerie_black, fg = colors.white },
  "NvimTreeOpenedFolderName",             { bg = colors.NONE, fg = colors.blue },
  "NvimTreeGitIgnored",                   { bg = colors.NONE, fg = colors.nickel },
  "NvimTreeIndentMarker",                 { bg = colors.NONE, fg = colors.carbon },
  --********************
  -- NAVIC
  --********************
  "NavicIconsConstant",                   { bg = colors.NONE, fg = colors.silver },
  "NavicIconsFunction",                   { bg = colors.NONE, fg = colors.gentle_blue },
  "NavicIconsIdentifier",                 { bg = colors.NONE, fg = colors.white_chocolate },
  "NavicIconsField",                      { bg = colors.NONE, fg = colors.white_chocolate },
  "NavicIconsVariable",                   { bg = colors.NONE, fg = colors.pastel_gray },
  "NavicIconsSnippet",                    { bg = colors.NONE, fg = colors.red },
  "NavicIconsText",                       { bg = colors.NONE, fg = colors.light_slate },
  "NavicIconsStructure",                  { bg = colors.NONE, fg = colors.pastel_gray },
  "NavicIconsType",                       { bg = colors.NONE, fg = colors.weldon },
  "NavicIconsKeyword",                    { bg = colors.NONE, fg = colors.gentle_blue },
  "NavicIconsMethod",                     { bg = colors.NONE, fg = colors.gentle_blue },
  "NavicIconsConstructor",                { bg = colors.NONE, fg = colors.blue },
  "NavicIconsFolder",                     { bg = colors.NONE, fg = colors.gentle_blue },
  "NavicIconsModule",                     { bg = colors.NONE, fg = colors.weldon },
  "NavicIconsProperty",                   { bg = colors.NONE, fg = colors.white_chocolate },
  "NavicIconsEnum",                       { bg = colors.NONE, fg = colors.blue },
  "NavicIconsUnit",                       { bg = colors.NONE, fg = colors.pastel_gray },
  "NavicIconsClass",                      { bg = colors.NONE, fg = colors.rackley },
  "NavicIconsFile",                       { bg = colors.NONE, fg = colors.gentle_blue },
  "NavicIconsInterface",                  { bg = colors.NONE, fg = colors.green },
  "NavicIconsColor",                      { bg = colors.NONE, fg = colors.white },
  "NavicIconsReference",                  { bg = colors.NONE, fg = colors.lavender },
  "NavicIconsEnumMember",                 { bg = colors.NONE, fg = colors.purple },
  "NavicIconsStruct",                     { bg = colors.NONE, fg = colors.pastel_gray },
  "NavicIconsValue",                      { bg = colors.NONE, fg = colors.cyan },
  "NavicIconsEvent",                      { bg = colors.NONE, fg = colors.yellow },
  "NavicIconsOperator",                   { bg = colors.NONE, fg = colors.lavender },
  "NavicIconsTypeParameter",              { bg = colors.NONE, fg = colors.white_chocolate },
  "NavicIconsNamespace",                  { bg = colors.NONE, fg = colors.rackley },
  "NavicIconsPackage",                    { bg = colors.NONE, fg = colors.green },
  "NavicIconsString",                     { bg = colors.NONE, fg = colors.green },
  "NavicIconsNumber",                     { bg = colors.NONE, fg = colors.pink },
  "NavicIconsBoolean",                    { bg = colors.NONE, fg = colors.orange },
  "NavicIconsArray",                      { bg = colors.NONE, fg = colors.blue },
  "NavicIconsObject",                     { bg = colors.NONE, fg = colors.pastel_gray },
  "NavicIconsKey",                        { bg = colors.NONE, fg = colors.red },
  "NavicIconsNull",                       { bg = colors.NONE, fg = colors.cyan },
  "NavicText",                            { bg = colors.NONE, fg = colors.lavender },
  "NavicSeparator",                       { bg = colors.NONE, fg = colors.red },
  --********************
  -- NVIM-CMP
  --********************
  "CmpItemAbbr",                          { bg = colors.NONE, fg = colors.white },
  "CmpItemAbbrMatch",                     { bg = colors.NONE, fg = colors.blue, bold = true },
  "CmpDoc",                               { bg = colors.chaos_black, fg = colors.NONE },
  "CmpDocBorder",                         { bg = colors.NONE, fg = colors.quartz },
  "CmpPmenu",                             { bg = colors.chaos_black, fg = colors.NONE },
  "CmpSel",                               { link = "PmenuSel", bold = true },
  "CmpItemKindConstant",                  { bg = colors.NONE, fg = colors.silver },
  "CmpItemKindFunction",                  { bg = colors.NONE, fg = colors.gentle_blue },
  "CmpItemKindIdentifier",                { bg = colors.NONE, fg = colors.white_chocolate },
  "CmpItemKindField",                     { bg = colors.NONE, fg = colors.white_chocolate },
  "CmpItemKindVariable",                  { bg = colors.NONE, fg = colors.pastel_gray },
  "CmpItemKindSnippet",                   { bg = colors.NONE, fg = colors.red },
  "CmpItemKindText",                      { bg = colors.NONE, fg = colors.light_slate },
  "CmpItemKindStructure",                 { bg = colors.NONE, fg = colors.pastel_gray },
  "CmpItemKindType",                      { bg = colors.NONE, fg = colors.weldon },
  "CmpItemKindKeyword",                   { bg = colors.NONE, fg = colors.gentle_blue },
  "CmpItemKindMethod",                    { bg = colors.NONE, fg = colors.gentle_blue },
  "CmpItemKindConstructor",               { bg = colors.NONE, fg = colors.blue },
  "CmpItemKindFolder",                    { bg = colors.NONE, fg = colors.gentle_blue },
  "CmpItemKindModule",                    { bg = colors.NONE, fg = colors.weldon },
  "CmpItemKindProperty",                  { bg = colors.NONE, fg = colors.white_chocolate },
  "CmpItemKindEnum",                      { bg = colors.NONE, fg = colors.blue },
  "CmpItemKindUnit",                      { bg = colors.NONE, fg = colors.pastel_gray },
  "CmpItemKindClass",                     { bg = colors.NONE, fg = colors.rackley },
  "CmpItemKindFile",                      { bg = colors.NONE, fg = colors.gentle_blue },
  "CmpItemKindInterface",                 { bg = colors.NONE, fg = colors.green },
  "CmpItemKindColor",                     { bg = colors.NONE, fg = colors.white },
  "CmpItemKindReference",                 { bg = colors.NONE, fg = colors.lavender },
  "CmpItemKindEnumMember",                { bg = colors.NONE, fg = colors.purple },
  "CmpItemKindStruct",                    { bg = colors.NONE, fg = colors.pastel_gray },
  "CmpItemKindValue",                     { bg = colors.NONE, fg = colors.cyan },
  "CmpItemKindEvent",                     { bg = colors.NONE, fg = colors.yellow },
  "CmpItemKindOperator",                  { bg = colors.NONE, fg = colors.lavender },
  "CmpItemKindTypeParameter",             { bg = colors.NONE, fg = colors.white_chocolate },
  "CmpItemKindCopilot",                   { bg = colors.NONE, fg = colors.green },
  "CmpItemKindCodeium",                   { bg = colors.NONE, fg = colors.green },
  "CmpItemKindTabNine",                   { bg = colors.NONE, fg = colors.light_pink },
  "CmpItemKindSuperMaven",                { bg = colors.NONE, fg = colors.yellow },
  --********************
  -- TELESCOPE
  --********************
  "TelescopeNormal",                      { bg = colors.raisin, fg = colors.lavender },
  "TelescopeSelection",                   { bg = colors.carbon, fg = colors.white },
  "TelescopeMatching",                    { bg = colors.raisin, fg = colors.blue },
  "TelescopePromptBorder",                { bg = colors.onyx, fg = colors.onyx },
  "TelescopePromptNormal",                { bg = colors.onyx, fg = colors.lavender },
  "TelescopePromptPrefix",                { bg = colors.lead, fg = colors.red },
  "TelescopePreviewBorder",               { bg = colors.raisin, fg = colors.raisin },
  "TelescopePreviewTitle",                { bg = colors.green, fg = colors.chaos_black },
  "TelescopePromptTitle",                 { bg = colors.red, fg = colors.chaos_black },
  "TelescopeResultsBorder",               { bg = colors.raisin, fg = colors.raisin },
  "TelescopeResultsDiffAdd",              { bg = colors.NONE, fg = colors.green },
  "TelescopeResultsDiffChange",           { bg = colors.NONE, fg = colors.yellow },
  "TelescopeResultsDiffDelete",           { bg = colors.NONE, fg = colors.red },
  --********************
  -- NOTIFY
  --********************
  "NotifyBackground",                     { bg = colors.raisin, fg = colors.gainsboro },
  "NotifyERRORBorder",                    { bg = colors.NONE, fg = colors.red },
  "NotifyERRORIcon",                      { bg = colors.NONE, fg = colors.red },
  "NotifyERRORTitle",                     { bg = colors.NONE, fg = colors.red },
  "NotifyWARNBorder",                     { bg = colors.NONE, fg = colors.orange },
  "NotifyWARNIcon",                       { bg = colors.NONE, fg = colors.orange },
  "NotifyWARNTitle",                      { bg = colors.NONE, fg = colors.orange },
  "NotifyINFOBorder",                     { bg = colors.NONE, fg = colors.green },
  "NotifyINFOIcon",                       { bg = colors.NONE, fg = colors.green },
  "NotifyINFOTitle",                      { bg = colors.NONE, fg = colors.green },
  "NotifyDEBUGBorder",                    { bg = colors.NONE, fg = colors.arsenic },
  "NotifyDEBUGIcon",                      { bg = colors.NONE, fg = colors.arsenic },
  "NotifyDEBUGTitle",                     { bg = colors.NONE, fg = colors.arsenic },
  "NotifyTRACEBorder",                    { bg = colors.NONE, fg = colors.purple },
  "NotifyTRACEIcon",                      { bg = colors.NONE, fg = colors.purple },
  "NotifyTRACETitle",                     { bg = colors.NONE, fg = colors.purple },
  --********************
  -- NEOGIT
  --********************
  "NeogitTagName",                        { bg = colors.NONE, fg = colors.yellow },
  "NeogitTagDistance",                    { bg = colors.NONE, fg = colors.cyan },
  "NeogitFloatHeader",                    { bg = colors.eerie_black, fg = colors.lavender },
  "NeogitFloatHeaderHighlight",           { bg = colors.dynamic_black, fg = colors.cyan },
  --********************
  -- BARBAR
  --********************
  "BufferCurrent",                        { bg = colors.lead, fg = colors.white },
  "BufferCurrentIndex",                   { bg = colors.lead, fg = colors.white },
  "BufferCurrentMod",                     { bg = colors.lead, fg = colors.white_chocolate },
  "BufferCurrentModBtn",                  { bg = colors.lead, fg = colors.white_chocolate },
  "BufferCurrentSign",                    { bg = colors.lead, fg = colors.light_blue },
  "BufferCurrentTarget",                  { bg = colors.lead, fg = colors.dark_purple },
  "BufferCurrentIcon",                    { bg = colors.lead, fg = colors.NONE },
  "BufferCurrentERROR",                   { bg = colors.lead, fg = colors.red },
  "BufferCurrentWARN",                    { bg = colors.lead, fg = colors.yellow },
  "BufferCurrentINFO",                    { bg = colors.lead, fg = colors.blue },
  "BufferCurrentHINT",                    { bg = colors.lead, fg = colors.green },
  "BufferCurrentADDED",                   { bg = colors.lead, fg = colors.green },
  "BufferCurrentCHANGED",                 { bg = colors.lead, fg = colors.nickel },
  "BufferCurrentDELETED",                 { bg = colors.lead, fg = colors.red },
  "BufferVisible",                        { bg = colors.lead, fg = colors.silver },
  "BufferVisibleIndex",                   { bg = colors.lead, fg = colors.silver },
  "BufferVisibleMod",                     { bg = colors.lead, fg = colors.white_chocolate },
  "BufferVisibleModBtn",                  { bg = colors.lead, fg = colors.white_chocolate },
  "BufferVisibleSign",                    { bg = colors.lead, fg = colors.lead },
  "BufferVisibleTarget",                  { bg = colors.lead, fg = colors.dark_purple },
  "BufferVisibleIcon",                    { bg = colors.lead, fg = colors.NONE },
  "BufferVisibleERROR",                   { bg = colors.lead, fg = colors.red },
  "BufferVisibleWARN",                    { bg = colors.lead, fg = colors.yellow },
  "BufferVisibleINFO",                    { bg = colors.lead, fg = colors.blue },
  "BufferVisibleHINT",                    { bg = colors.lead, fg = colors.green },
  "BufferVisibleADDED",                   { bg = colors.lead, fg = colors.green },
  "BufferVisibleCHANGED",                 { bg = colors.lead, fg = colors.nickel },
  "BufferVisibleDELETED",                 { bg = colors.lead, fg = colors.red },
  "BufferInactive",                       { bg = colors.eerie_black, fg = colors.granite },
  "BufferInactiveIndex",                  { bg = colors.eerie_black, fg = colors.granite },
  "BufferInactiveMod",                    { bg = colors.eerie_black, fg = colors.white_chocolate },
  "BufferInactiveModBtn",                 { bg = colors.eerie_black, fg = colors.white_chocolate },
  "BufferInactiveSign",                   { bg = colors.eerie_black, fg = colors.eerie_black },
  "BufferInactiveTarget",                 { bg = colors.eerie_black, fg = colors.dark_purple },
  "BufferInactiveIcon",                   { bg = colors.eerie_black, fg = colors.granite },
  "BufferInactiveERROR",                  { bg = colors.eerie_black, fg = colors.red },
  "BufferInactiveWARN",                   { bg = colors.eerie_black, fg = colors.yellow },
  "BufferInactiveINFO",                   { bg = colors.eerie_black, fg = colors.blue },
  "BufferInactiveHINT",                   { bg = colors.eerie_black, fg = colors.green },
  "BufferInactiveADDED",                  { bg = colors.eerie_black, fg = colors.green },
  "BufferInactiveCHANGED",                { bg = colors.eerie_black, fg = colors.nickel },
  "BufferInactiveDELETED",                { bg = colors.eerie_black, fg = colors.red },
  "BufferTabpages",                       { bg = colors.eerie_black, fg = colors.silver },
  "BufferTabpageFill",                    { bg = colors.eerie_black, fg = colors.NONE },
  "BufferOffset",                         { bg = colors.eerie_black, fg = colors.NONE }
}

return M

local Color, colors, Group, groups, styles = require('colorbuddy').setup()

-- Color.new('yellow', '#ffc600')
-- Color.new('orange', '#ff9d00')
-- Color.new('mint', '#2affdf')
-- Color.new('blue', '#193549')
-- Color.new('off_blue', '#0d3a58 ')
-- Color.new('dusty_blue', '#35434d')
-- Color.new('dark_blue', '#15232d')
-- Color.new('pink', '#fb94ff')
-- Color.new('light_blue', '#9effff')

-- NOTE: default
require('lualine').setup {
  options = {
    -- theme = 'auto',
    theme = 'cobalt2',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', fmt = string.upper } },
    lualine_b = { { 'branch', icon = '' } },
    lualine_c = {
      { 'filetype', icon_only = true },
      { 'filename', path = 1 },
      {
        'diagnostics',
        sources = { 'coc' },
        -- sources = { 'nvim_lsp' },
        symbols = {
          error = ' :',
          warn = ' :',
          info = ' :',
          hint = '💡',
        },
        diagnostics_color = {
          error = { fg = '#E06C75' },
          warn = { fg = '#FF922B' },
          info = { fg = '#15AABF' },
          hint = { fg = '#fab005' },
        },
        update_in_insert = true,
      },
      { 'b:coc_current_function', 'g:coc_status' },
      { 'diff' },
    },
    lualine_x = { { 'filesize' } },
    lualine_y = { { 'progress' } },
    lualine_z = { { 'location' } },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { { 'filename', path = 0 } },
    lualine_x = { 'filetype' },
    lualine_z = { 'location' },
  },
  -- tabline = {
  --   lualine_a = { 'buffers' },
  --   lualine_b = {},
  --   lualine_c = {},
  --   lualine_x = {},
  --   lualine_y = {},
  --   lualine_z = { 'tabs' },
  -- },
  extensions = { 'fzf', 'fugitive', 'nvim-tree', 'quickfix', 'toggleterm' },
}

-- " General colors
Color.new('cobalt_bg', '#193549')
Color.new('black', '#1C1C1C')
Color.new('darkest_grey', '#3A3A3A')
Color.new('darker_grey', '#444444')
Color.new('dark_grey', '#626262')
Color.new('grey', '#808080')
Color.new('light_grey', '#9E9E9E')
Color.new('lighter_grey', '#BCBCBC')
Color.new('lightest_grey', '#CCCCCC')
Color.new('white', '#FFFFFF')

Color.new('dark_orange', '#FF9A00')
Color.new('light_orange', '#FF9D00')
Color.new('yellow', '#FFC600')
Color.new('light_yellow', '#F2ED7F')

Color.new('darkest_green', '#2D7067')
Color.new('dirty_green', '#70b950')
Color.new('green', '#3AD900')
Color.new('light_green', '#88FF88')
Color.new('lighter_green', '#9EFF80')
Color.new('lightest_green', '#BBFFDD')

Color.new('dark_purple', '#345FA8')
Color.new('purple', '#967EFB')
Color.new('light_purple', '#DEEBFE')

Color.new('darkest_blue', '#0000df')
Color.new('darker_blue', '#0050A4')
Color.new('dark_blue', '#0088FF')
Color.new('blue', '#00AAFF')
Color.new('light_blue', '#80FCFF')
Color.new('greyish_blue', '#8fbfdc')
Color.new('dirty_blue', '#668799')
Color.new('cursor_line', '#1f282e')

Color.new('aubergine', '#4F0037')
Color.new('darker_red', '#700009')
Color.new('dark_red', '#902020')
Color.new('red', '#FF0000')
Color.new('dark_pink', '#FF628C')
Color.new('pink', '#FF00FF')
Color.new('light_pink', '#EE80E1')
Color.new('lightest_pink', '#FFA5F3')
Color.new('pale_pink', '#F0A0C0')
Color.new('dirty_pink', '#EB939A')

Group.new('Normal', colors.white, colors.cobalt_bg, nil)
Group.new('Comment', colors.dark_blue, nil, styles.italic)
Group.new('Todo', colors.dark_blue, nil, styles.bold)
Group.new('Constant', colors.dark_pink, nil, nil)
Group.new('Special', colors.light_green, nil, nil)
Group.new('MoreMsg', colors.light_green, nil, nil)
Group.new('Delimiter', colors.dirty_blue, nil, nil)
Group.new('String', colors.green, nil, nil)
Group.new('Identifier', colors.dark_orange, nil, nil)
Group.new('Structure', colors.dark_blue, nil, styles.italic)
Group.new('Function', colors.yellow, nil, nil)
Group.new('Statement', colors.dark_orange, nil, nil)
Group.new('PreProc', colors.dark_orange, nil, nil)
Group.new('Operator', colors.dark_blue, nil, styles.italic)
Group.new('Type', colors.yellow, nil, nil)
Group.new('NonText', colors.dark_grey, colors.cobalt_bg, nil)
Group.new('SpecialKey', colors.darker_grey, colors.black, nil)
Group.new('MatchParen', colors.white, colors.dark_purple, styles.bold)
Group.new('MatchWord', colors.white, colors.dark_purple, styles.bold)
Group.new('Directory', colors.yellow, nil, nil)
Group.new('ErrorMsg', nil, colors.dark_red, nil)
Group.new('Question', colors.green, nil, nil)
Group.new('StorageClass', colors.light_orange, nil, nil)
Group.new('TabLine', colors.black, colors.lighter_grey, styles.italic)
Group.new('TabLineFill', colors.light_grey, nil, nil)
Group.new('TabLineSel', colors.black, colors.yellow, styles.bold)
Group.new('PMenu', colors.lightest_grey, colors.darkest_grey, nil)
Group.new('PMenuSel', colors.darkest_grey, colors.yellow, nil)
Group.new('PMenuSBar', nil, colors.dark_grey, nil)
Group.new('PMenuThumb', nil, colors.lightest_grey, nil)
Group.new('Visual', nil, colors.darker_blue, nil)
Group.new('Cursor', colors.yellow, colors.cobalt_bg, nil)
Group.new('CursorColumn', nil, colors.yellow, nil)
Group.new('CursorLine', nil, colors.cursor_line, nil)
Group.new('CursorLineNr', colors.yellow, nil, styles.bold)
Group.new('LineNr', colors.white, colors.cobalt_bg, styles.NONE)
Group.new('StatusLine', colors.black, colors.lightest_grey, styles.italic)
Group.new('StatusLineNC', colors.white, colors.darker_grey, styles.italic)
Group.new('VertSplit', colors.yellow, nil, nil)
Group.new('WildMenu', colors.pale_pink, colors.darkest_grey, nil)
Group.new('Folded', colors.light_grey, colors.darker_grey, styles.italic)
Group.new('FoldColumn', colors.dark_grey, colors.black, nil)
Group.new('SignColumn', colors.cobalt_bg, nil, nil)
Group.new('ColorColumn', nil, colors.black, nil)
Group.new('Title', colors.dirty_green, nil, styles.bold)
Group.new('Search', colors.dark_blue, colors.greyish_blue, styles.underline)
Group.new('SpellBad', colors.dark_red, nil, styles.underline)
Group.new('SpellCap', nil, colors.darkest_blue, styles.underline)
Group.new('SpellRare', nil, colors.aubergine, styles.underline)
Group.new('SpellLocal', nil, colors.darkest_green, styles.underline)
Group.new('DiffDelete', colors.black, colors.darker_red, nil)
Group.new('DiffChange', nil, colors.darkest_green, nil)
Group.new('DiffText', colors.greyish_blue, colors.black, nil)
Group.new('IndentBlankLineChar', colors.grey, nil, nil)
Group.new('BufferCurrent', colors.grey, colors.cobalt_bg, nil)

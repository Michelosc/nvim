local rainbow_delimiters = require('rainbow_delimiters')

vim.g.rainbow_delimiters = {
  strategy = {
    [''] = rainbow_delimiters.strategy['globlal'],
    vim = rainbow_delimiters.strategy['local'],
  },
  query = {
    [''] = 'rainbow_delimiters',
    lua = 'rainbow_delimiters'
  },
  highlight = {
    'RainbowDelimiterRed',
    'RainbowDelimiterYellow',
    'RainbowDelimiterBlue',
    'RainbowDelimiterOrange',
    'RainbowDelimiterGreen',
    'RainbowDelimiterViolet',
    'RainbowDelimiterCyan',
  },
}

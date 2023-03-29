vim.cmd([[let g:startify_session_dir='~/.config/.nvim/sessions']])

vim.cmd([[
let g:startify_bookmarks = [
  \ {'b': '~/Work/webapp-alpha/app/common/workflow/data/buying_workflow_v0.2'},
  \ {'s': '~/Work/webapp-alpha/app/common/workflow/data/selling_workflow_v0.1'},
  \ {'l': '~/Work/webapp-alpha/app/common/workflow/data/lending_workflow_v1'},
  \ {'r': '~/Work/webapp-alpha/app/common/workflow/data/remortgaging_workflow_v1'},
  \ {'c': '~/Work/client-app'}
  \ ]
]])

vim.cmd([[
let g:startify_lists = [
  \ {'type': 'sessions',  'header': ['Sessions']},
  \ {'type': 'files',     'header': ['Recent Files']},
  \ {'type': 'bookmarks', 'header': ['Juno']},
  \ ]
]])

vim.cmd([[let g:startify_session_persistence = 1]])
vim.cmd([[let g:startify_enable_special = 0]])

vim.cmd([[
let g:startify_custom_header = [
  \ " _ __   ___  _____   _(_)_ __ ___  ",
  \ "| '_ \\ / _ \\/ _ \\ \\ / / | '_ ` _ \\ ",
  \ "| | | |  __/ (_) \\ V /| | | | | | |",
  \ "|_| |_|\\___|\\___/ \\_/ |_|_| |_| |_|",
  \ ]
]])

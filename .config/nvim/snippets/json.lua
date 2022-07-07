local ls = require('luasnip')
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local d = ls.dynamic_node

local snippets, autosnippets = {}, {}

local precheck = s('precheck', {
  t('"pre_checks": ['),
  t({'', '  {'}),
  t({'', '    "'}),
  i(1, 'fieldname'),
  t('": "'),
  i(2, 'fieldvalue'),
  t('"'),
  t({'', '  }'}),
  t({'', ']'})
})
table.insert(snippets, precheck)

local newfield = s('newfield', {
  t('{'),
  t({'', '  "name": "'}),
  i(1, 'fieldname'),
  t('",'),
  t({'', '  "field_type": "'}),
  i(2, 'fieldtype'),
  t('",'),
  t({'', '  "display_name": "'}),
  i(3, 'displayname'),
  t('",'),
  t({'', '  "required": '}),
  i(4, 'true'),
  t({'', '}'})
})
table.insert(snippets, newfield)

-- NEW TASK
local newtask = s('newtask', {
  t('['),
  t({'', '  {'}),
  t({'', '    "identifier": "'}),
  i(1, 'task_identifier'),
  t('",'),
  t({'', '    "title": "'}),
  i(2, 'task_title'),
  t('",'),
  t({'', '    "description": ['}),
  t({'', '      "'}),
  i(3, 'task_description'),
  t('"'),
  t({'', '    ],'}),
  t({'', '    "steps": ['}),
  t({'', '      {}'}),
  t({'', '    ],'}),
  t({'', '    "required_capabilities": ['}),
  t({'', '      "'}),
  i(4, 'capability'),
  t('"'),
  t({'', '    ]'}),
  t({'', '  }'}),
  t({'', ']'})
})
table.insert(snippets, newtask)

-- NEW AUTOTASK
local newauto = s('newauto', {
  t('{'),
  t({'', '  "identifier": "'}),
  i(1, 'autotask_identifier'),
  t({'', '",'}),
  t({'', '  "title": "'}),
  i(2, 'autotask_title'),
  t({'', '",'}),
  t({'', '  "action_type": "'}),
  i(3, 'autotask_type'),
  t({'', '",'}),
  t({'', '  "action_params": {'}),
  t({'', '    "template": "'}),
  i(4, 'template_identifier'),
  t({'', '",'}),
  t({'', '    "send_to_all_clients": true'}),
  t({'', '  }'}),
  t({'', '}'})
})
table.insert(snippets, newauto)

-- JINJA
-- If
-- If case field
-- Elif
-- Elif case field
-- Else
-- Endif

return snippets, autosnippets

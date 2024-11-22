local ls = require 'luasnip'

-- local fmta = require('luasnip.extras.fmt').fmta
local fmt = require('luasnip.extras.fmt').fmt
local repetition = require('luasnip.extras').rep

local s = ls.snippet
local choiceNode = ls.choice_node
local dynamicNode = ls.dynamic_node
local insertNode = ls.insert_node
local textNode = ls.text_node
local snippetNode = ls.snippet_node

ls.add_snippets('javascript', {
  s('cl', {
    textNode 'console.log(',
    insertNode(1),
    textNode ');',
  }),
})

ls.add_snippets('javascript', {
  s(
    'fce',
    fmt(
      [[
      export const {} = () => {{
        return (
          <div>
            {}
          </div>
        );
      }};
    ]],
      {
        insertNode(1),
        -- NOTE: repeat contents of node 1
        repetition(1),
      }
    )
  ),
})

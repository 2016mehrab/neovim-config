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

-- ls.add_snippets('javascript', {
--   s('cl', {
--     textNode 'console.log(',
--     insertNode(1),
--     textNode ');',
--   }),
-- })

-- NOTE: REACT FUNCTIONAL COMPONENT NAMED EXPORT
ls.add_snippets('javascript', {
  s(
    'rafce',
    fmt(
      [[
      export const {} = () => {{
        return (
          <div>
            {}
          </div>
        );
      }}
    ]],
      {
        insertNode(1),
        -- NOTE: repeat contents of node 1
        repetition(1),
      }
    )
  ),
})

-- NOTE: BASIC FUNCTION
ls.add_snippets('javascript', {
  s(
    'func',
    fmt(
      [[
      export function {}() {{
        return {{}};
      }}
    ]],
      {
        insertNode(1),
      }
    )
  ),
})

-- NOTE: BASIC ASYNC FUNCTION
ls.add_snippets('javascript', {
  s(
    'afunc',
    fmt(
      [[
      export async function {}() {{
        return {{}};
      }}
    ]],
      {
        insertNode(1),
      }
    )
  ),
})

ls.add_snippets('javascript', {
  s(
    'tne',
    fmt(
      [[
      throw new Error({});
    ]],
      {
        insertNode(1),
      }
    )
  ),
})

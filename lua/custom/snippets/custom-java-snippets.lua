local ls = require 'luasnip'

local s = ls.snippet
local textNode = ls.text_node
local fmt = require('luasnip.extras.fmt').fmt
local insertNode = ls.insert_node
local repetition = require('luasnip.extras').rep

-- NOTE: Pretty print 2D matrix
ls.add_snippets('java', {
  s(
    'printMatrix',
    fmt(
      [[
      public static void printMatrix({}[][] matrix) {{
          System.out.println();
          for ({}[] row : matrix) {{
              for ({} element : row) {{
                  System.out.print(element + "\t");
              }}
              System.out.println();
          }}
          System.out.println("<--------------------------------------------->");
      }}
      ]],
      {
        insertNode(1, 'int'),
        repetition(1),
        repetition(1),
      }
    )
  ),
})

-- NOTE: Leetcode snippet
ls.add_snippets('java', {
  s(
    'lc',
    fmt(
      [[
      class LC{} {{
          public static void main(String[] args) {{
              LC{} solution = new LC{}();
              
          }}
      }}
      ]],
      {
        insertNode(1),
        repetition(1),
        repetition(1),
      }
    )
  ),
})

-- NOTE: Nested for-loop snippet
ls.add_snippets('java', {
  s(
    'nloop',
    fmt(
      [[
              for ({} r = 0; r < {}; ++r) {{
                  for ({} c = 0; c < {}; ++c) {{

                  }}
              }}
      ]],
      {
        insertNode(1, 'int'),
        insertNode(2, '10'),
        repetition(1),
        insertNode(3, '10'),
      }
    )
  ),
})

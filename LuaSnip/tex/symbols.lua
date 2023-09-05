local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
local in_mathzone = function()
-- ------------
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
return {
  -- Examples of Greek letter snippets, autotriggered for efficiency
  s({trig="@a", snippetType="autosnippet"},
  {
    t("\\alpha"),
  }
  ),
  s({trig="@b", snippetType="autosnippet"},
  {
    t("\\beta"),
  }
  ),
  s({trig="@g", snippetType="autosnippet"},
  {
    t("\\gamma"),
  }
  ),
  s({trig="@d", snippetType="autosnippet"},
  {
    t("\\delta"),
  }
  ),
  s({trig="@e", snippetType="autosnippet"},
  {
    t("\\varepsilon"),
  }
  ),
  s({trig="@k", snippetType="autosnippet"},
  {
    t("\\kappa"),
  }
  ),
  s({trig="@l", snippetType="autosnippet"},
  {
    t("\\lambda"),
  }
  ),
  s({trig="@g", snippetType="autosnippet"},
  {
    t("\\gamma"),
  }
  ),
  s({trig="@t", snippetType="autosnippet"},
  {
    t("\\tau"),
  }
  ),
  s({trig="@o", snippetType="autosnippet"},
  {
    t("\\omega"),
  }
  ),
  s({trig="@p", snippetType="autosnippet"},
  {
    t("\\partial"),
  }
  ),
  s({trig="**", snippetType="autosnippet"},
  {
    t("\\cdot"),
  }
  ),
  s({trig="xx", snippetType="autosnippet"},
  {
    t("\\times"),
  }
  ),



  s({trig="theta", snippetType="autosnippet"},
  {
    t("\\theta"),
  },
  {condition= in_mathzone}
  ),
  s({trig="phi", snippetType="autosnippet"},
  {
    t("\\phi"),
  },
  {condition= in_mathzone}
  ),
  s({trig="Phi", snippetType="autosnippet"},
  {
    t("\\Phi"),
  },
  {condition= in_mathzone}
  ),
  s({trig="psi", snippetType="autosnippet"},
  {
    t("\\varpsi"),
  },
  {condition= in_mathzone}
  ),
  s({trig="Psi", snippetType="autosnippet"},
  {
    t("\\varPsi"),
  },
  {condition= in_mathzone}
  ),
  s({trig="hbar", snippetType="autosnippet"},

  {
    t("\\hbar"),
  },
  {condition= in_mathzone}
  ),
  s({trig="inf", snippetType="autosnippet"},
  {
    t("\\infty"),
  },
  {condition= in_mathzone}
  ),
  s({trig="pi", snippetType="autosnippet"},
  {
    t("\\pi"),
  },
  {condition= in_mathzone}
  ),
  s({trig="grad", snippetType="autosnippet"},
  {
    t("\\vec{\\nabla}"),
  },
  {condition= in_mathzone}
  ),
  s({trig="sin", snippetType="autosnippet"},
  {
    t("\\sin"),
  },
  {condition= in_mathzone}
  ),
  s({trig="cos", snippetType="autosnippet"},
  {
    t("\\cos"),
  },
  {condition= in_mathzone}
  ),
  s({trig="tan", snippetType="autosnippet"},
  {
    t("\\tan"),
  },
  {condition= in_mathzone}
  ),
  s({trig="qty", snippetType="autosnippet"},
  {
    t("\\qty"),
  },
  {condition= in_mathzone}
  ),
  s({trig="int", snippetType = "autosnippet", dscr = "Expand intgral command"},
  fmta(
  "\\int  d<>",
  {i(1)},
  {i(0)}
  ), {condition= in_mathzone}
  ),
  s({trig="e^", snippetType = "autosnippet", dscr = "Expand intgral command"},
  fmta(
  "e^{<>}",
  {i(1)},
  {i(0)}
  ), {condition= in_mathzone}
  ),
  s({trig="dint", snippetType = "autosnippet", dscr = "Expand intgral command"},
  fmta(
  "\\int_{<>}^{<>} <> \\ d <>",
  {i(1),
  i(2),
  i(3),
  i(4)}
  ), {condition = in_mathzone}
  ),
  s({trig="sum", snippetType = "autosnippet", dscr = "Expand intgral command"},
  fmta(
  "\\sum_{<>}",
  {i(1)},
  {i(0)}
  ), {condition= in_mathzone}
  ),
  s({trig="dsum", snippetType = "autosnippet", dscr = "Expand intgral command"},
  fmta(
  "\\sum_{<>}^{<>}",
  {i(1),
  i(2)},
  {i(0)}
  ), {condition= in_mathzone}
  ),
  s({trig="ket", snippetType = "autosnippet", dscr="Expands 'ket' into '\\ ket'"},
  fmta(
  "\\ket{<>}",
  { i(1) },
  {i (0) }
  ),
  {condition= in_mathzone}
  ),
  s({trig="vec", snippetType = "autosnippet", dscr="Expands 'ket' into '\\ ket'"},
  fmta(
  "\\vec{<>}",
  { i(1) },
  {i (0) }
  ),
  {condition= in_mathzone}
  ),
  s({trig="hat", snippetType = "autosnippet", dscr="Expands 'ket' into '\\ ket'"},
  fmta(
  "\\hat{<>}",
  { i(1) },
  {i (0) }
  ),
  {condition= in_mathzone}
  ),
  s({trig="vec", snippetType = "autosnippet", dscr="Expands 'ket' into '\\ ket'"},
  fmta(
  "\\vec{<>}",
  { i(1) },
  {i (0) }
  ),
  {condition= in_mathzone}
  ),
  s({trig="bra", snippetType = "autosnippet", dscr="Expands 'bra' into '\\ bra'"},
  fmta(
  "\\bra{<>}",
  { i(1) },
  {i (0) }
  ),
  {condition= in_mathzone}
  ),
  s({trig="bkt", snippetType = "autosnippet", dscr="Expands 'bkt' into '\\ brraket'"},
  fmta(
  "\\braket{<>}{<>}",
  { i(1), i(2) },
  {i (0) }
  ),
  {condition= in_mathzone}
  ),
  s({trig="frac", snippetType= "autosnippet", dscr="Expands 'ff' into '\frac{}{}'"},
  fmta(
  "\\frac{<>}{<>}",
  {
    i(1),
    i(2)
  },
  {i(0)}
  ),
  {condition= in_mathzone}
  ),
  s({trig="abs", snippetType = "autosnippet", dscr="Expands 'ket' into '\\ abs'"},
  fmta(
  "\\abs{<>}",
  { i(1) },
  {i (0) }
  ),
  {condition= in_mathzone}
  ),


  -- Equation
  s({trig="beq", dscr="Expands 'eq' into an equation environment"},
  fmta(
  [[
  \begin{equation*}
  <>
  \end{equation*}

  ]],
  { i(1) },
  { i(0) }
  )
  ),
  s({trig="bneq", dscr="Expands 'eq' into an numbered equation environment"},
  fmta(
  [[
  \begin{equation}
  <>
  \end{equation}

  ]],
  { i(1) },
  { i(0) }
  )
  ),
  s({trig="section", dscr="Expaned numbered section environment"},
  fmta(
  "\\section*{<>}",
  { i(1) },
  { i(0) }
  )
  ),
  s({trig="beg", dscr="Expands latex environments"},
  fmta(
  [[
  \begin{<>}
  <>
  \end{<>}

  ]],
  {
    i(1),
    i(2),
    rep(1),  -- this node repeats insert node i(1)
  }
  )
  ),
  s({trig="ali", dscr="Expand 'ali' into Latex Alignment Environment"},
  fmta(
  [[
  \begin{align*}
  <>
  \end{align*}

  ]],
  { i(1) },
  { i(0) }
  )
  ),
  s({trig="pmat", dscr="Expand 'ali' into Latex Alignment Environment"},
  fmta(
  [[
  \begin{pmatrix}
  <>
  \end{pmatrix}
  ]],
  { i(1) },
  { i(0) }
  )
  ),
  s({trig="2pmat", dscr="Expand 'ali' into Latex Alignment Environment"},
  fmta(
  [[
  \begin{pmatrix}
  <> & <>  \\ 
  <> & <>   
  \end{pmatrix}
  ]],
  { i(1), i(2), i(3), i(4) },
  { i(0) }
  )
  ),
  s({trig="3pmat", dscr="Expand 'ali' into Latex Alignment Environment"},
  fmta(
  [[
  \begin{pmatrix}
  <> & <> & <> \\ 
  <> & <> & <> \\ 
  <> & <> & <>  
  \end{pmatrix}
  ]],
  { i(1), i(2), i(3), i(4), i(5), i(6), i(7), i(8), i(9) },
  { i(0) }
  )
  ),
}




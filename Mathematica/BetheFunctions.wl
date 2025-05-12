(* ::Package:: *)

BeginPackage["BetheFunctions`"];


G::usage = "\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{StyleBox[\"G\", \"TI\"], \"(\", RowBox[{\"\[Xi]\", \";\", SubscriptBox[StyleBox[\"J\", \"TI\"], \"1\"], \",\", \"\[Ellipsis]\", \",\", SubscriptBox[StyleBox[\"J\", \"TI\"], StyleBox[\"k\", \"TI\"]]}], \")\"}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"G(\\\\xi;J_1,\\\\ldots,J_k)\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{\"\[LongEqual]\", UnderscriptBox[\"\[Product]\", RowBox[{\"1\", \"\[LessEqual]\", StyleBox[\"i\", \"TI\"], \"<\", StyleBox[\"j\", \"TI\"], \"\[LessEqual]\", StyleBox[\"k\", \"TI\"]}], LimitsPositioning -> True], RowBox[{\"(\", RowBox[{UnderscriptBox[\"\[Product]\", RowBox[{\"\[Alpha]\", \"\[Element]\", SubscriptBox[StyleBox[\"J\", \"TI\"], StyleBox[\"i\", \"TI\"]], \",\", \"\[Beta]\", \"\[Element]\", SubscriptBox[StyleBox[\"J\", \"TI\"], StyleBox[\"j\", \"TI\"]]}], LimitsPositioning -> True], RowBox[{\"(\", RowBox[{\"1\", \"+\", SubscriptBox[\"\[Xi]\", \"\[Alpha]\"], SubscriptBox[\"\[Xi]\", \"\[Beta]\"], \"-\", \"2\", SubscriptBox[\"\[CapitalDelta]\[Xi]\", \"\[Alpha]\"]}], \")\"}], UnderscriptBox[\"\[Product]\", RowBox[{\"\[Alpha]\", \">\", \"\[Beta]\", \"\\\n\", \"\[Alpha]\", \"\[Element]\", SubscriptBox[StyleBox[\"J\", \"TI\"], StyleBox[\"i\", \"TI\"]], \",\", \"\[Beta]\", \"\[Element]\", SubscriptBox[StyleBox[\"J\", \"TI\"], StyleBox[\"j\", \"TI\"]]}], LimitsPositioning -> True], RowBox[{\"(\", \"-1\", \")\"}]}], \")\"}]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"=\\\\prod_{1\\\\leq i < j \\\\leq k}\\\\left(\\\\prod_{\\\\alpha\\\\in J_i, \\\\beta\\\\in J_j}(1+\\\\xi_\\\\alpha\\\\xi_\\\\beta -2\\\\Delta\\\\xi_\\\\alpha)  \\\\prod_{\\\\substack{\\\\alpha>\\\\beta \\\\\\\\ \\\\alpha\\\\in J_i, \\\\beta\\\\in J_j}}(-1)\\\\right)\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


F::usage = "\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{StyleBox[\"F\", \"TI\"], RowBox[{\"(\", RowBox[{StyleBox[\"x\", \"TI\"], \",\", StyleBox[\"z\", \"TI\"], \";\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"1\"], \",\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"2\"]}], \")\"}], \"\[LongEqual]\", UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"k\", \"TI\"], \"\[LongEqual]\", \"1\"}], TemplateBox[{RowBox[{SubscriptBox[StyleBox[\"I\", \"TI\"], \"1\"], \"|\", \"\[LongEqual]\", \"|\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"2\"]}]}, \"Abs\"], LimitsPositioning -> True], SubscriptBox[StyleBox[\"x\", \"TI\"], SubscriptBox[StyleBox[\"i\", \"TI\"], RowBox[{\"1\", \",\", StyleBox[\"k\", \"TI\"]}]]], SubscriptBox[StyleBox[\"z\", \"TI\"], SubscriptBox[StyleBox[\"i\", \"TI\"], RowBox[{\"2\", \",\", StyleBox[\"k\", \"TI\"]}]]]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"F(x,z;I_1,I_2)=\\\\prod_{k=1}^{|I_1|=|I_2|}x_{i_{1,k}}z_{i_{2,k}}\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


\[CapitalLambda]::usage = "\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{\"\[CapitalLambda]\", RowBox[{\"(\", RowBox[{\"\[Delta]\", \",\", StyleBox[\"x\", \"TI\"], \",\", StyleBox[\"z\", \"TI\"], \";\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"1\"], \",\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"2\"]}], \")\"}], \"\[LongEqual]\", StyleBox[\"D\", \"TI\"], StyleBox[\"e\", \"TI\"], StyleBox[\"t\", \"TI\"], RowBox[{\"(\", FractionBox[RowBox[{UnderscriptBox[\"\[Product]\", RowBox[{StyleBox[\"l\", \"TI\"], \"\[NotEqual]\", StyleBox[\"k\", \"TI\"]}], LimitsPositioning -> True], SubscriptBox[StyleBox[\"x\", \"TI\"], SubscriptBox[StyleBox[\"i\", \"TI\"], RowBox[{\"1\", \",\", StyleBox[\"j\", \"TI\"]}]]], \"+\", SubscriptBox[StyleBox[\"z\", \"TI\"], SubscriptBox[StyleBox[\"i\", \"TI\"], RowBox[{\"2\", \",\", StyleBox[\"l\", \"TI\"]}]]], \"-\", \"2\", \"\[CapitalDelta]\", SubscriptBox[StyleBox[\"x\", \"TI\"], SubscriptBox[StyleBox[\"i\", \"TI\"], RowBox[{\"1\", \",\", StyleBox[\"j\", \"TI\"]}]]], SubscriptBox[StyleBox[\"z\", \"TI\"], SubscriptBox[StyleBox[\"i\", \"TI\"], RowBox[{\"2\", \",\", StyleBox[\"l\", \"TI\"]}]]]}], RowBox[{\"(\", RowBox[{\"1\", \"-\", SubscriptBox[StyleBox[\"x\", \"TI\"], SubscriptBox[StyleBox[\"i\", \"TI\"], RowBox[{\"1\", \",\", StyleBox[\"j\", \"TI\"]}]]], SubscriptBox[StyleBox[\"z\", \"TI\"], SubscriptBox[StyleBox[\"i\", \"TI\"], RowBox[{\"2\", \",\", StyleBox[\"k\", \"TI\"]}]]]}], \")\"}]], \")\"}]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"\\\\Lambda(\\\\delta,x,z;I_1,I_2)=Det\\\\left(\\\\frac{\\\\prod_{l\\\\neq k}x_{i_{1,j}}+z_{i_{2,l}}-2\\\\Delta x_{i_{1,j}}z_{i_{2,l}}}{(1-x_{i_{1,j}}z_{i_{2,k}})} \\\\right)\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


Cterm::usage = "?"


Vandremonde::usage = "\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{UnderscriptBox[\"\[Product]\", RowBox[{StyleBox[\"i\", \"TI\"], \"<\", StyleBox[\"j\", \"TI\"]}], LimitsPositioning -> True], SubscriptBox[StyleBox[\"x\", \"TI\"], StyleBox[\"i\", \"TI\"]], \"-\", SubscriptBox[StyleBox[\"x\", \"TI\"], StyleBox[\"j\", \"TI\"]]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"\\\\prod_{i<j}x_i-x_j\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


\[CapitalLambda]i::usage = "\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{\"\[CapitalLambda]\", StyleBox[\"i\", \"TI\"], RowBox[{\"(\", RowBox[{StyleBox[\"x\", \"TI\"], \",\", StyleBox[\"z\", \"TI\"], \";\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"1\"], \",\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"2\"]}], \")\"}], \"\[LongEqual]\", \"\[CapitalLambda]\", RowBox[{\"(\", RowBox[{SuperscriptBox[StyleBox[\"x\", \"TI\"], \"-1\"], \",\", SuperscriptBox[StyleBox[\"z\", \"TI\"], \"-1\"], \";\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"1\"], \",\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"2\"]}], \")\"}]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"\\\\Lambda i(x,z;I_1,I_2) = \\\\Lambda(x^{-1},z^{-1};I_1,I_2)\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


BetheEquations::usage = "Generates list of Bethe equations for n variables. \!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{SubsuperscriptBox[StyleBox[\"x\", \"TI\"], StyleBox[\"i\", \"TI\"], StyleBox[\"L\", \"TI\"]], \"\[LongEqual]\", SuperscriptBox[RowBox[{\"(\", \"-1\", \")\"}], RowBox[{StyleBox[\"n\", \"TI\"], \"-\", \"1\"}]], UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"j\", \"TI\"], \"\[LongEqual]\", \"1\"}], StyleBox[\"n\", \"TI\"], LimitsPositioning -> True], FractionBox[RowBox[{\"1\", \"+\", SubscriptBox[StyleBox[\"x\", \"TI\"], StyleBox[\"i\", \"TI\"]], SubscriptBox[StyleBox[\"x\", \"TI\"], StyleBox[\"j\", \"TI\"]], \"-\", \"2\", \"\[CapitalDelta]\", SubscriptBox[StyleBox[\"x\", \"TI\"], StyleBox[\"i\", \"TI\"]]}], RowBox[{\"1\", \"+\", SubscriptBox[StyleBox[\"x\", \"TI\"], StyleBox[\"i\", \"TI\"]], SubscriptBox[StyleBox[\"x\", \"TI\"], StyleBox[\"j\", \"TI\"]], \"-\", \"2\", \"\[CapitalDelta]\", SubscriptBox[StyleBox[\"x\", \"TI\"], StyleBox[\"j\", \"TI\"]]}]]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"x_i^L = (-1)^{n-1}\\\\prod_{j=1}^n \\\\frac{1+x_i x_j - 2\\\\Delta x_i}{1+ x_i x_j - 2\\\\Delta x_j}\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


BetheRoots::usage = "Generates a non-trivial solution to the Bethe Equations"


Asigma::usage = "\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{SubscriptBox[StyleBox[\"A\", \"TI\"], \"\[Sigma]\"], RowBox[{\"(\", \"\[Xi]\", \")\"}], \"\[LongEqual]\", StyleBox[\"s\", \"TI\"], StyleBox[\"g\", \"TI\"], StyleBox[\"n\", \"TI\"], RowBox[{\"(\", \"\[Sigma]\", \")\"}], UnderscriptBox[\"\[Product]\", RowBox[{\"1\", \"\[LessEqual]\", StyleBox[\"i\", \"TI\"], \"<\", StyleBox[\"j\", \"TI\"], \"\[LessEqual]\", StyleBox[\"n\", \"TI\"]}], LimitsPositioning -> True], FractionBox[RowBox[{\"1\", \"+\", SubscriptBox[\"\[Xi]\", RowBox[{\"\[Sigma]\", \"(\", StyleBox[\"i\", \"TI\"], \")\"}]], SubscriptBox[\"\[Xi]\", RowBox[{\"\[Sigma]\", \"(\", StyleBox[\"j\", \"TI\"], \")\"}]], \"-\", \"2\", SubscriptBox[\"\[CapitalDelta]\[Xi]\", RowBox[{\"\[Sigma]\", \"(\", StyleBox[\"i\", \"TI\"], \")\"}]]}], RowBox[{\"1\", \"+\", SubscriptBox[\"\[Xi]\", StyleBox[\"i\", \"TI\"]], SubscriptBox[\"\[Xi]\", StyleBox[\"j\", \"TI\"]], \"-\", \"2\", SubscriptBox[\"\[CapitalDelta]\[Xi]\", StyleBox[\"j\", \"TI\"]]}]]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"A_\\\\sigma(\\\\xi) = sgn(\\\\sigma)\\\\prod_{1\\\\leq i < j \\\\leq n}\\\\frac{1 + \\\\xi_{\\\\sigma(i)}\\\\xi_{\\\\sigma(j)} - 2\\\\Delta\\\\xi_{\\\\sigma(i)}}{1+\\\\xi_i \\\\xi_j - 2\\\\Delta \\\\xi_j}\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


Bsigma::usage = "\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{SubscriptBox[StyleBox[\"B\", \"TI\"], \"\[Sigma]\"], RowBox[{\"(\", RowBox[{SubscriptBox[\"\[Xi]\", \"1\"], \",\", \"\[Ellipsis]\", \",\", SubscriptBox[\"\[Xi]\", StyleBox[\"N\", \"TI\"]]}], \")\"}], \"\[LongEqual]\", StyleBox[\"sgn\", FontSlant -> \"Plain\"], RowBox[{\"(\", \"\[Sigma]\", \")\"}], UnderscriptBox[\"\[Product]\", RowBox[{\"1\", \"\[LessEqual]\", StyleBox[\"i\", \"TI\"], \"<\", StyleBox[\"j\", \"TI\"], \"\[LessEqual]\", StyleBox[\"N\", \"TI\"]}], LimitsPositioning -> True], RowBox[{\"(\", RowBox[{\"1\", \"+\", SubscriptBox[\"\[Xi]\", RowBox[{\"\[Sigma]\", \"(\", StyleBox[\"i\", \"TI\"], \")\"}]], SubscriptBox[\"\[Xi]\", RowBox[{\"\[Sigma]\", \"(\", StyleBox[\"j\", \"TI\"], \")\"}]], \"-\", \"2\", SubscriptBox[\"\[CapitalDelta]\[Xi]\", RowBox[{\"\[Sigma]\", \"(\", StyleBox[\"i\", \"TI\"], \")\"}]]}], \")\"}], UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"j\", \"TI\"], \"\[LongEqual]\", \"1\"}], StyleBox[\"N\", \"TI\"], LimitsPositioning -> True], SubsuperscriptBox[\"\[Xi]\", RowBox[{\"\[Sigma]\", \"(\", StyleBox[\"j\", \"TI\"], \")\"}], StyleBox[\"j\", \"TI\"]]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"B_{\\\\sigma} (\\\\xi_1, \\\\dots, \\\\xi_N) = \\\\mathrm{sgn}(\\\\sigma) \\\\prod_{1 \\\\leq i <j \\\\leq N}\\\\left(1 + \\\\xi_{\\\\sigma(i)}\\\\xi_{\\\\sigma(j)} - 2 \\\\Delta \\\\xi_{\\\\sigma(i)}\\\\right) \\\\prod_{j=1}^N\\\\xi_{\\\\sigma(j)}^j\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


U::usage = "Coefficient for Bethe vectors. \!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{StyleBox[\"u\", \"TI\"], RowBox[{\"(\", RowBox[{\"\[Xi]\", \",\", StyleBox[\"x\", \"TI\"]}], \")\"}], \"\[LongEqual]\", UnderscriptBox[\"\[Sum]\", RowBox[{\"\[Sigma]\", \"\[Element]\", SubscriptBox[StyleBox[\"S\", \"TI\"], StyleBox[\"N\", \"TI\"]]}], LimitsPositioning -> True], SubscriptBox[StyleBox[\"A\", \"TI\"], \"\[Sigma]\"], RowBox[{\"(\", \"\[Xi]\", \")\"}], UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"i\", \"TI\"], \"\[LongEqual]\", \"1\"}], StyleBox[\"N\", \"TI\"], LimitsPositioning -> True], SubsuperscriptBox[\"\[Xi]\", RowBox[{\"\[Sigma]\", \"(\", StyleBox[\"i\", \"TI\"], \")\"}], SubscriptBox[StyleBox[\"x\", \"TI\"], StyleBox[\"i\", \"TI\"]]]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"u(\\\\xi,x) = \\\\sum_{\\\\sigma \\\\in S_N}A_\\\\sigma(\\\\xi)\\\\prod_{i=1}^N \\\\xi_{\\\\sigma(i)}^{x_i}\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


BetheInverseDet::usage = "Determinant in the Bethe Inverse functions \!\(\*TemplateBox[<|\"boxes\" -> FormBox[\"\[ScriptL]\", TraditionalForm], \"errors\" -> {}, \"input\" -> \"\\\\ell\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\), \!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{SubscriptBox[RowBox[{\"[\", RowBox[{\"\[CapitalLambda]\", \"(\", \"\[Xi]\", \")\"}], \"]\"}], RowBox[{StyleBox[\"i\", \"TI\"], \",\", StyleBox[\"j\", \"TI\"]}]], \"\[LongEqual]\", FractionBox[RowBox[{\"-\", \"\[CapitalDelta]\", RowBox[{\"(\", RowBox[{\"1\", \"+\", SubsuperscriptBox[\"\[Xi]\", StyleBox[\"j\", \"TI\"], \"2\"], \"-\", SubscriptBox[\"\[CapitalDelta]\[Xi]\", StyleBox[\"j\", \"TI\"]]}], \")\"}]}], RowBox[{RowBox[{\"(\", RowBox[{\"1\", \"+\", SubscriptBox[\"\[Xi]\", StyleBox[\"i\", \"TI\"]], SubscriptBox[\"\[Xi]\", StyleBox[\"j\", \"TI\"]], \"-\", SubscriptBox[\"\[CapitalDelta]\[Xi]\", StyleBox[\"i\", \"TI\"]]}], \")\"}], \"(\", RowBox[{\"1\", \"+\", SubscriptBox[\"\[Xi]\", StyleBox[\"i\", \"TI\"]], SubscriptBox[\"\[Xi]\", StyleBox[\"j\", \"TI\"]], \"-\", SubscriptBox[\"\[CapitalDelta]\[Xi]\", StyleBox[\"j\", \"TI\"]]}], \")\"}]], \",  \", StyleBox[\"i\", \"TI\"], \"\[NotEqual]\", StyleBox[\"j\", \"TI\"], \"\\\n\", \"\[CapitalLambda]\", SubscriptBox[RowBox[{\"(\", \"\[Xi]\", \")\"}], RowBox[{StyleBox[\"i\", \"TI\"], \",\", StyleBox[\"i\", \"TI\"]}]], \"\[LongEqual]\", FractionBox[StyleBox[\"L\", \"TI\"], SubscriptBox[\"\[Xi]\", StyleBox[\"i\", \"TI\"]]], \"-\", UnderscriptBox[\"\[Sum]\", RowBox[{StyleBox[\"j\", \"TI\"], \"\[NotEqual]\", StyleBox[\"i\", \"TI\"]}], LimitsPositioning -> True], SubscriptBox[RowBox[{\"[\", RowBox[{\"\[CapitalLambda]\", \"(\", \"\[Xi]\", \")\"}], \"]\"}], RowBox[{StyleBox[\"i\", \"TI\"], \",\", StyleBox[\"j\", \"TI\"]}]], \",  \", StyleBox[\"i\", \"TI\"], \"\[LongEqual]\", \"1\", \",\", \"\[Ellipsis]\", \",\", StyleBox[\"N\", \"TI\"], \",\"}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"[\\\\Lambda(\\\\xi)]_{i, j} &= \\\\frac{-\\\\Delta(1 + \\\\xi_j^2 - \\\\Delta \\\\xi_j)}{(1 + \\\\xi_i \\\\xi_j - \\\\Delta \\\\xi_i)(1 + \\\\xi_i \\\\xi_j - \\\\Delta \\\\xi_j)}, \\\\quad i \\\\neq j\\\\\\\\\\\n    \\\\Lambda(\\\\xi)_{i, i} &= \\\\frac{L}{\\\\xi_i} - \\\\sum_{j \\\\neq i} [\\\\Lambda(\\\\xi)]_{i, j}, \\\\quad i=1, \\\\dots, N,\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


ell::usage = "\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{\"\[ScriptL]\", RowBox[{\"(\", RowBox[{StyleBox[\"x\", \"TI\"], \",\", \"\[Xi]\"}], \")\"}], \"\[LongEqual]\", UnderscriptBox[\"\[Sum]\", RowBox[{\"\[Sigma]\", \"\[Element]\", SubscriptBox[StyleBox[\"S\", \"TI\"], StyleBox[\"N\", \"TI\"]]}], LimitsPositioning -> True], SuperscriptBox[RowBox[{\"(\", RowBox[{SubscriptBox[StyleBox[\"A\", \"TI\"], \"\[Sigma]\"], RowBox[{\"(\", \"\[Xi]\", \")\"}], \"det\", RowBox[{\"[\", RowBox[{\"\[CapitalLambda]\", \"(\", \"\[Xi]\", \")\"}], \"]\"}], UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"i\", \"TI\"], \"\[LongEqual]\", \"1\"}], StyleBox[\"N\", \"TI\"], LimitsPositioning -> True], SubsuperscriptBox[\"\[Xi]\", RowBox[{\"\[Sigma]\", \"(\", StyleBox[\"i\", \"TI\"], \")\"}], RowBox[{SubscriptBox[StyleBox[\"x\", \"TI\"], StyleBox[\"i\", \"TI\"]], \"+\", \"1\"}]]}], \")\"}], \"-1\"]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"\\\\ell(x, \\\\xi) = \\\\sum_{\\\\sigma \\\\in S_N}\\\\left( A_{\\\\sigma}(\\\\xi) \\\\det[\\\\Lambda(\\\\xi)] \\\\prod_{i =1}^N \\\\xi_{\\\\sigma(i)}^{x_i +1} \\\\right)^{-1}\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


Energy::usage = "Returns energy/eigenvalue"


OnePtConfigs::usage = "Generates list of possible one point configurations for chain of length l, n down spins, and a down spin at location pt"


OnePtAlt::usage = "One point function via identities. \[Rho](x, t)= One point function\[IndentingNewLine]=\!\(\*SubscriptBox[\(\[CapitalSigma]\), \(\[Xi], \[Stigma] \[Element] BetheRoots\)]\) l(y, \[Xi])l(y, \[Zeta])(\!\(\*SuperscriptBox[SubscriptBox[\(\[CapitalSigma]\), \(s = 1\)], \(\(N\)\(\\\ \)\)]\)LHS1)(\!\(\*SubscriptBox[\(\[CapitalPi]\), \(1\\\  <= i < j <= n\)]\)(1 + \!\(\*SubscriptBox[\(\[Xi]\), \(i\)]\)\!\(\*SubscriptBox[\(\[Xi]\), \(j\)]\) -2\!\(\*SubscriptBox[\(\[CapitalDelta]\[Xi]\), \(i\)]\) )(1+\!\(\*SubscriptBox[\(\[Stigma]\), \(i\)]\)\!\(\*SubscriptBox[\(\[Stigma]\), \(j\)]\)-2\!\(\*SubscriptBox[\(\[CapitalDelta]\[Stigma]\), \(i\)]\))\!\(\*SuperscriptBox[\()\), \(-1\)]\)\!\(\*SuperscriptBox[\(e\), \(\(-i\)\\\ t\\\ \((E \((\[Xi])\) - E \((\[Stigma])\))\)\)]\)"


MasterSum::usage = "\!\(\*FormBox[\(\*SubscriptBox[\(\[CapitalSigma]\), \(\*SubscriptBox[\(x\), \(1\)] = 0\)] \*SubscriptBox[\(\[CapitalSigma]\), \(\[Sigma], \[Mu]\\\  \[Element] \*SubscriptBox[\(S\), \(N\)]\)] \*SubscriptBox[\(B\), \(\[Sigma]\)] \((\[Xi])\) \*SubscriptBox[\(B\), \(\[Mu]\)] \((\[Stigma])\) \*SuperscriptBox[SubscriptBox[\(\[CapitalPi]\), \(j = 1\)], \(N\)] \*SuperscriptBox[SubscriptBox[\(\[Xi]\), \(\[Sigma](j)\)], \(\*SubscriptBox[\(x\), \(j\)] - j\)] \*SuperscriptBox[SubscriptBox[\(\[Stigma]\), \(\[Mu](j)\)], \(\*SubscriptBox[\(x\), \(j\)] - j\)]\),
TraditionalForm]\)"


Identity1Term::usage ="Term in identity 1 (Lemma 7.1)"


Identity1::usage="Identity 1 (Lemma 7.1)"


GeoSumIdentity1::usage="Geometric sum on the lhs of identity 1 (Lemma 7.1)"


CsTerm::usage="\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{FractionBox[RowBox[{\"1\", \"-\", SubsuperscriptBox[StyleBox[\"F\", \"TI\"], RowBox[{\"1\", \",\", SubscriptBox[StyleBox[\"s\", \"TI\"], \"1\"], \"-\", \"1\"}], RowBox[{\"\[Sigma]\", \",\", \"\[Mu]\"}]]}], SubsuperscriptBox[StyleBox[\"F\", \"TI\"], RowBox[{\"1\", \",\", SubscriptBox[StyleBox[\"s\", \"TI\"], \"1\"], \"-\", \"1\"}], RowBox[{\"\[Sigma]\", \",\", \"\[Mu]\"}]]], SuperscriptBox[RowBox[{\"(\", SubsuperscriptBox[StyleBox[\"F\", \"TI\"], RowBox[{SubscriptBox[StyleBox[\"s\", \"TI\"], \"1\"], \",\", StyleBox[\"N\", \"TI\"]}], RowBox[{\"\[Sigma]\", \",\", \"\[Mu]\"}]], \")\"}], RowBox[{StyleBox[\"L\", \"TI\"], \"-\", StyleBox[\"N\", \"TI\"]}]], UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"i\", \"TI\"], \"\[LongEqual]\", \"0\"}], StyleBox[\"k\", \"TI\"], LimitsPositioning -> True], FractionBox[\"1\", RowBox[{UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"j\", \"TI\"], \"\[LongEqual]\", SubscriptBox[StyleBox[\"s\", \"TI\"], StyleBox[\"i\", \"TI\"]]}], RowBox[{SubscriptBox[StyleBox[\"s\", \"TI\"], RowBox[{StyleBox[\"i\", \"TI\"], \"+\", \"1\"}]], \"-\", \"1\"}], LimitsPositioning -> True], \"(\", RowBox[{\"1\", \"-\", SubsuperscriptBox[StyleBox[\"F\", \"TI\"], RowBox[{StyleBox[\"j\", \"TI\"], \",\", SubscriptBox[StyleBox[\"s\", \"TI\"], RowBox[{StyleBox[\"i\", \"TI\"], \"+\", \"1\"}]], \"-\", \"1\"}], RowBox[{\"\[Sigma]\", \",\", \"\[Mu]\"}]]}], \")\"}]]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"\\\\frac{1 - F_{1, s_1-1}^{\\\\sigma, \\\\mu}}{F_{1, s_1-1}^{\\\\sigma, \\\\mu}}(F_{s_1, N}^{\\\\sigma, \\\\mu})^{L-N} \\\\prod_{i=0}^{k} \\\\frac{1}{\\\\prod_{j=s_i}^{s_{i+1}-1}(1 - F_{j, s_{i+1}-1}^{\\\\sigma,\\\\mu}) }\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


Cs::usage="\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{SubscriptBox[StyleBox[\"C\", \"TI\"], RowBox[{SubscriptBox[StyleBox[\"s\", \"TI\"], \"1\"], \",\", \"\[CenterEllipsis]\", \",\", SubscriptBox[StyleBox[\"s\", \"TI\"], StyleBox[\"k\", \"TI\"]]}]], RowBox[{\"(\", RowBox[{OverscriptBox[\"\[Xi]\", \"\[RightVector]\"], \",\", OverscriptBox[\"\[Zeta]\", \"\[RightVector]\"]}], \")\"}], \"\\\n\", \"\[LongEqual]\", UnderscriptBox[\"\[Sum]\", RowBox[{\"\[Sigma]\", \",\", \"\[Mu]\", \"\[Element]\", SubscriptBox[StyleBox[\"S\", \"TI\"], StyleBox[\"N\", \"TI\"]]}], LimitsPositioning -> True], SubscriptBox[StyleBox[\"B\", \"TI\"], \"\[Sigma]\"], RowBox[{\"(\", OverscriptBox[\"\[Xi]\", \"\[RightVector]\"], \")\"}], SubscriptBox[StyleBox[\"B\", \"TI\"], \"\[Mu]\"], RowBox[{\"(\", OverscriptBox[\"\[Zeta]\", \"\[RightVector]\"], \")\"}], \"\\\\[NewLine]\", \"\[Cross]\", UnderscriptBox[\"\[Sum]\", RowBox[{\"1\", \"<\", SubscriptBox[StyleBox[\"s\", \"TI\"], \"1\"], \"<\", \"\[CenterEllipsis]\", \"<\", SubscriptBox[StyleBox[\"s\", \"TI\"], StyleBox[\"k\", \"TI\"]], \"<\", StyleBox[\"N\", \"TI\"], \"+\", \"1\"}], LimitsPositioning -> True], FractionBox[RowBox[{\"1\", \"-\", SubsuperscriptBox[StyleBox[\"F\", \"TI\"], RowBox[{\"1\", \",\", SubscriptBox[StyleBox[\"s\", \"TI\"], \"1\"], \"-\", \"1\"}], RowBox[{\"\[Sigma]\", \",\", \"\[Mu]\"}]]}], SubsuperscriptBox[StyleBox[\"F\", \"TI\"], RowBox[{\"1\", \",\", SubscriptBox[StyleBox[\"s\", \"TI\"], \"1\"], \"-\", \"1\"}], RowBox[{\"\[Sigma]\", \",\", \"\[Mu]\"}]]], SuperscriptBox[RowBox[{\"(\", SubsuperscriptBox[StyleBox[\"F\", \"TI\"], RowBox[{SubscriptBox[StyleBox[\"s\", \"TI\"], \"1\"], \",\", StyleBox[\"N\", \"TI\"]}], RowBox[{\"\[Sigma]\", \",\", \"\[Mu]\"}]], \")\"}], RowBox[{StyleBox[\"L\", \"TI\"], \"-\", StyleBox[\"N\", \"TI\"]}]], UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"i\", \"TI\"], \"\[LongEqual]\", \"0\"}], StyleBox[\"k\", \"TI\"], LimitsPositioning -> True], FractionBox[\"1\", RowBox[{UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"j\", \"TI\"], \"\[LongEqual]\", SubscriptBox[StyleBox[\"s\", \"TI\"], StyleBox[\"i\", \"TI\"]]}], RowBox[{SubscriptBox[StyleBox[\"s\", \"TI\"], RowBox[{StyleBox[\"i\", \"TI\"], \"+\", \"1\"}]], \"-\", \"1\"}], LimitsPositioning -> True], \"(\", RowBox[{\"1\", \"-\", SubsuperscriptBox[StyleBox[\"F\", \"TI\"], RowBox[{StyleBox[\"j\", \"TI\"], \",\", SubscriptBox[StyleBox[\"s\", \"TI\"], RowBox[{StyleBox[\"i\", \"TI\"], \"+\", \"1\"}]], \"-\", \"1\"}], RowBox[{\"\[Sigma]\", \",\", \"\[Mu]\"}]]}], \")\"}]]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"&C_{s_1, \\\\cdots, s_k}(\\\\vec{\\\\xi}, \\\\vec{\\\\zeta}) \\\\\\\\\\\n    &= \\\\sum_{\\\\sigma, \\\\mu \\\\in S_N} B_{\\\\sigma}(\\\\vec{\\\\xi})B_{\\\\mu}(\\\\vec{\\\\zeta})\\\\\\\\\\\n    &\\\\hspace{5mm}\\\\times\\\\sum_{1 < s_1 < \\\\cdots < s_k < N+1} \\\\frac{1 - F_{1, s_1-1}^{\\\\sigma, \\\\mu}}{F_{1, s_1-1}^{\\\\sigma, \\\\mu}}(F_{s_1, N}^{\\\\sigma, \\\\mu})^{L-N} \\\\prod_{i=0}^{k} \\\\frac{1}{\\\\prod_{j=s_i}^{s_{i+1}-1}(1 - F_{j, s_{i+1}-1}^{\\\\sigma,\\\\mu}) }\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


EFunction::usage="\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{StyleBox[\"E\", \"TI\"], RowBox[{\"(\", RowBox[{OverscriptBox[\"\[Xi]\", \"\[RightVector]\"], \",\", OverscriptBox[\"\[Zeta]\", \"\[RightVector]\"], \";\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"1\"], \",\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"2\"]}], \")\"}], \"\[LongEqual]\", RowBox[{\"(\", RowBox[{UnderscriptBox[\"\[Product]\", RowBox[{\"\[Alpha]\", \"\[Element]\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"1\"], \",\", \"\[Beta]\", \"\[Element]\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"2\"]}], LimitsPositioning -> True], SubsuperscriptBox[\"\[Xi]\", \"\[Alpha]\", \"-1\"], SubsuperscriptBox[\"\[Zeta]\", \"\[Beta]\", \"-1\"], \"-\", \"1\"}], \")\"}], UnderscriptBox[\"\[Sum]\", RowBox[{SubscriptBox[\"\[Lambda]\", \"1\"], \",\", SubscriptBox[\"\[Tau]\", \"1\"], \"\[Element]\", SubscriptBox[StyleBox[\"S\", \"TI\"], StyleBox[\"s\", \"TI\"]]}], LimitsPositioning -> True], FractionBox[RowBox[{SubscriptBox[StyleBox[\"B\", \"TI\"], SubscriptBox[\"\[Lambda]\", \"1\"]], RowBox[{\"(\", RowBox[{\"\[Xi]\", \";\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"1\"]}], \")\"}], SubscriptBox[StyleBox[\"B\", \"TI\"], SubscriptBox[\"\[Tau]\", \"1\"]], RowBox[{\"(\", RowBox[{\"\[Zeta]\", \";\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"2\"]}], \")\"}]}], RowBox[{UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"j\", \"TI\"], \"\[LongEqual]\", \"1\"}], TemplateBox[{RowBox[{StyleBox[\"I\", \"TI\"]}]}, \"Abs\"], LimitsPositioning -> True], \"(\", RowBox[{\"1\", \"-\", SubsuperscriptBox[StyleBox[\"F\", \"TI\"], RowBox[{StyleBox[\"j\", \"TI\"], \",\", \"|\", StyleBox[\"I\", \"TI\"], \"|\"}], RowBox[{SubscriptBox[\"\[Lambda]\", \"1\"], \",\", SubscriptBox[\"\[Tau]\", \"1\"]}]], RowBox[{\"(\", RowBox[{OverscriptBox[\"\[Xi]\", \"\[RightVector]\"], \",\", OverscriptBox[\"\[Zeta]\", \"\[RightVector]\"], \";\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"1\"], \",\", SubscriptBox[StyleBox[\"I\", \"TI\"], \"2\"]}], \")\"}]}], \")\"}]]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"E(\\\\vec{\\\\xi}, \\\\vec{\\\\zeta}; I_1, I_2) = \\\\left(\\\\prod_{\\\\alpha \\\\in I_1, \\\\beta \\\\in I_2}\\\\xi_{\\\\alpha}^{-1} \\\\zeta_{\\\\beta}^{-1} -1\\\\right) \\\\sum_{\\\\lambda_1, \\\\tau_1 \\\\in S_{s}} \\\\frac{B_{\\\\lambda_1}(\\\\xi; I_1)B_{\\\\tau_1}(\\\\zeta; I_2)}{\\\\prod_{j=1}^{|I|} (1 - F_{j, |I|}^{\\\\lambda_1, \\\\tau_1}(\\\\vec{\\\\xi}, \\\\vec{\\\\zeta}; I_1, I_2))}\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


Ds::usage = "\!\(\*TemplateBox[<|\"boxes\" -> FormBox[RowBox[{SubscriptBox[StyleBox[\"D\", \"TI\"], RowBox[{SubscriptBox[StyleBox[\"s\", \"TI\"], \"1\"], \",\", \"\[Ellipsis]\", \",\", SubscriptBox[StyleBox[\"s\", \"TI\"], StyleBox[\"k\", \"TI\"]]}]], RowBox[{\"(\", RowBox[{OverscriptBox[\"\[Xi]\", \"\[RightVector]\"], \",\", OverscriptBox[\"\[Zeta]\", \"\[RightVector]\"], \";\", SubsuperscriptBox[StyleBox[\"I\", \"TI\"], \"1\", StyleBox[\"c\", \"TI\"]], \",\", SubsuperscriptBox[StyleBox[\"I\", \"TI\"], \"2\", StyleBox[\"c\", \"TI\"]]}], \")\"}], \"\\\n\", \"\[LongEqual]\", UnderscriptBox[\"\[Sum]\", RowBox[{SubscriptBox[\"\[Lambda]\", \"2\"], \",\", SubscriptBox[\"\[Tau]\", \"2\"], \"\[Element]\", SubscriptBox[StyleBox[\"S\", \"TI\"], RowBox[{StyleBox[\"N\", \"TI\"], \"-\", StyleBox[\"s\", \"TI\"]}]]}], LimitsPositioning -> True], SubscriptBox[StyleBox[\"B\", \"TI\"], SubscriptBox[\"\[Lambda]\", \"2\"]], RowBox[{\"(\", RowBox[{OverscriptBox[\"\[Xi]\", \"\[RightVector]\"], \";\", SubsuperscriptBox[StyleBox[\"I\", \"TI\"], \"1\", StyleBox[\"c\", \"TI\"]]}], \")\"}], SubscriptBox[StyleBox[\"B\", \"TI\"], SubscriptBox[\"\[Tau]\", \"2\"]], RowBox[{\"(\", RowBox[{OverscriptBox[\"\[Zeta]\", \"\[RightVector]\"], \";\", SubsuperscriptBox[StyleBox[\"I\", \"TI\"], \"2\", StyleBox[\"c\", \"TI\"]]}], \")\"}], UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"i\", \"TI\"], \"\[LongEqual]\", \"1\"}], StyleBox[\"k\", \"TI\"], LimitsPositioning -> True], FractionBox[SuperscriptBox[RowBox[{\"(\", RowBox[{SubsuperscriptBox[StyleBox[\"F\", \"TI\"], RowBox[{SubscriptBox[StyleBox[\"s\", \"TI\"], StyleBox[\"i\", \"TI\"]], \",\", SubscriptBox[StyleBox[\"s\", \"TI\"], RowBox[{StyleBox[\"i\", \"TI\"], \"+\", \"1\"}]], \"-\", \"1\"}], RowBox[{SubscriptBox[\"\[Lambda]\", \"2\"], \",\", SubscriptBox[\"\[Tau]\", \"2\"]}]], \"(\", RowBox[{OverscriptBox[\"\[Xi]\", \"\[RightVector]\"], \",\", OverscriptBox[\"\[Zeta]\", \"\[RightVector]\"], \";\", SubsuperscriptBox[StyleBox[\"I\", \"TI\"], \"1\", StyleBox[\"c\", \"TI\"]], \",\", SubsuperscriptBox[StyleBox[\"I\", \"TI\"], \"2\", StyleBox[\"c\", \"TI\"]]}], \")\"}], \")\"}], RowBox[{StyleBox[\"L\", \"TI\"], \"-\", \"|\", SuperscriptBox[StyleBox[\"I\", \"TI\"], StyleBox[\"c\", \"TI\"]], \"|\"}]], RowBox[{UnderoverscriptBox[\"\[Product]\", RowBox[{StyleBox[\"j\", \"TI\"], \"\[LongEqual]\", SubscriptBox[StyleBox[\"s\", \"TI\"], StyleBox[\"i\", \"TI\"]], \"+\", \"1\"}], RowBox[{SubscriptBox[StyleBox[\"s\", \"TI\"], RowBox[{StyleBox[\"i\", \"TI\"], \"+\", \"1\"}]], \"-\", \"1\"}], LimitsPositioning -> True], \"(\", RowBox[{\"1\", \"-\", SubsuperscriptBox[StyleBox[\"F\", \"TI\"], RowBox[{StyleBox[\"j\", \"TI\"], \",\", SubscriptBox[StyleBox[\"s\", \"TI\"], RowBox[{StyleBox[\"i\", \"TI\"], \"+\", \"1\"}]], \"-\", \"1\"}], RowBox[{SubscriptBox[\"\[Lambda]\", \"2\"], \",\", SubscriptBox[\"\[Tau]\", \"2\"]}]], RowBox[{\"(\", RowBox[{OverscriptBox[\"\[Xi]\", \"\[RightVector]\"], \",\", OverscriptBox[\"\[Zeta]\", \"\[RightVector]\"], \";\", SubsuperscriptBox[StyleBox[\"I\", \"TI\"], \"1\", StyleBox[\"c\", \"TI\"]], \",\", SubsuperscriptBox[StyleBox[\"I\", \"TI\"], \"2\", StyleBox[\"c\", \"TI\"]]}], \")\"}]}], \")\"}]]}], TraditionalForm], \"errors\" -> {}, \"input\" -> \"&D_{s_1, \\\\dots, s_k}(\\\\vec{\\\\xi}, \\\\vec{\\\\zeta}; I_1^c, I_2^c)\\\\\\\\\\\n    &= \\\\sum_{\\\\lambda_2, \\\\tau_2 \\\\in S_{N-s}}B_{\\\\lambda_2}(\\\\vec{\\\\xi}; I_1^c) B_{\\\\tau_2}(\\\\vec{\\\\zeta}; I_2^c) \\\\prod_{i=1}^k \\\\frac{(F_{s_i, s_{i+1}-1}^{\\\\lambda_2, \\\\tau_2}(\\\\vec{\\\\xi}, \\\\vec{\\\\zeta}; I_1^c, I_2^c))^{L- |I^c|}}{\\\\prod_{j=s_i +1}^{s_{i+1}-1}(1- F_{j, s_{i+1}-1}^{\\\\lambda_2, \\\\tau_2}(\\\\vec{\\\\xi}, \\\\vec{\\\\zeta}; I_1^c, I_2^c))}\", \"state\" -> \"Boxes\"|>,\n\"TeXAssistantTemplate\"]\)"


Begin["`Private`"];


G[d_, x_, Is_, s_]:=Module[{i, j,k},
k = Length[Is];
Return[Product[Product[(1 + x[Is[[s[[i]]]][[a]]]x[Is[[s[[j]]]][[b]]] - 2d x[Is[[s[[i]]]][[a]]])If[Is[[s[[i]]]][[a]]>Is[[s[[j]]]][[b]], -1, 1] ,{a, 1, Length[Is[[s[[i]]]]]}, {b, 1, Length[Is[[s[[j]]]]]}], {i, 1, k-1}, {j, i+1, k}]];
]


F[x_,z_, I1_, I2_ ]:= Product[x[I1[[k]]], {k, 1, Length[I1]}]Product[z[I2[[k]]], {k, 1, Length[I2]}];


\[CapitalLambda][d_, x_, z_, I1_, I2_]:=Module[{i, j, k, l,M}, 
k = Length[I1];
(*If the subsets are not the same length, return 0.*)
If[k!= Length[I2], Return[0]];
If[k==0, Return[1]];
Return[ Det[Table[Product[If[l!= j, x[I1[[i]]] +z[I2[[l]]]- 2 d x[I1[[i]]] z[I2[[l]]], 1], {l, 1, k}]/(1- x[I1[[i]]]z[I2[[j]]]) , {i, 1, k}, {j, 1, k}]]];
]


Needs["Combinatorica`"]


Cterm[k_, n_, d_, x_, z_]:=Module[{kp, per, i1, i2, s1, s2, a},
kp =KSetPartitions[n, k];
per= Permutations[k];
Return[Sum[Sum[G[d, x, kp[[i1]], per[[s1]]]G[d, z, kp[[i2]], per[[s2]]] Product[\[CapitalLambda][d, x, z, kp[[i1]][[per[[s1]][[a]]]], kp[[i2]][[per[[s2]][[a]]]]]F[x, z,kp[[i1]][[per[[s1]][[a]]]], kp[[i2]][[per[[s2]][[a]]]] ]^If[a>=2, Sum[Length[kp[[i1]][[per[[s1]][[b]]]]], {b, 1, a-1}], 0], {a, 1, k}], {i1, 1, Length[kp]}, {i2, 1, Length[kp]}] ,{s1, 1, k!},{s2, 1, k!} ]];
]


Vandremonde[n_, x_]:= Product[x[j]-x[i], {i, 1, n-1}, {j, i+1, n}];


\[CapitalLambda]i[d_, x_, z_, I1_, I2_]:= Module[{ sub, i, k},
k = Length[I1];
If[k != Length[I2], Return[0]];
If[k==0, Return[1]];
sub = Table[{x[I1[[i]]]-> 1/x[I1[[i]]], z[I2[[i]]]-> 1/z[I2[[i]]]}, {i, 1, k}]//Flatten;
Return[Simplify[\[CapitalLambda][d, x, z, I1, I2]/.sub]];
]


BetheEquations[n_, l_, d_, x_] := Table[(-1)^(n-1) Product[(1 + x[i] x[j] - 2 d x[i])/(1 + x[i] x[j] - 2 d x[j]), {j,1, n }]==x[i]^l, {i, 1, n}]


(*Helper functions for finding non-trivial solutions*)
Crit[s_]:= If[Chop[Product[s[[i]]-s[[j]], {i, Length[s]-1}, {j, i+1, Length[s]}]]!=0, True, False];
Crit2[s_]:= If[Chop[Product[s[[i]][[2]]-s[[j]][[2]], {i, Length[s]-1}, {j, i+1, Length[s]}]]!=0, True, False];
SortCompex[l_]:=Sort[l, If[Chop[Re[#1]-Re[#2]]==0, Im[#1]<= Im[#2], Re[#1] <= Re[#2]]&];
Sub[x_, xvals_]:= Table[x[i]-> xvals[[i]], {i, 1, Length[xvals]}];


BetheRoots[n_, l_, d_]:= Module[{x, vars, sol, i},
vars =  Table[x[i], {i, 1, n}];
sol = NSolve[BetheEquations[n, l, d, x], vars];
sol = vars/.sol;
sol= Select[sol, Crit];
sol= Map[SortCompex, sol];
sol = DeleteDuplicates[sol, Chop[Norm[#1- #2]]==0&];
Return[sol];
]


BetheRoots[n_, l_, d_, x_]:= Module[{ vars, sol, i},
vars =  Table[x[i], {i, 1, n}];
sol = NSolve[BetheEquations[n, l, d, x], vars];
sol = vars/.sol;
sol= Select[sol, Crit];
sol= Map[SortCompex, sol];
sol = DeleteDuplicates[sol, Chop[Norm[#1- #2]]==0&];
sol= Map[Sub[x, #]&,sol ];
Return[sol];
]


Asigma[n_, d_, x_, s_]:= Signature[s]Product[(1 + x[s[[i]]]x[s[[j]]] - 2 d x[s[[i]]])/(1 + x[i] x[j]- 2 d x[i]), {i,1, n-1 }, {j, i+1, n}];


Bsigma[n_, d_, x_, s_]:= Signature[s]Product[1 + x[s[[i]]]x[s[[j]]] - 2 d x[s[[i]]], {i,1, n-1 }, {j, i+1, n}]Product[x[s[[k]]]^(k-1),{k, 1, n}];


U[n_, d_, x_, xc_]:=Module[{per, i, j},
per = Permutations[Table[i, {i, 1, n}]];
Return[Sum[A[n, d, x, per[[j]]]Product[x[per[[j]][[i]]]^xc[i], {i, 1, n}], {j, 1, n!}]];
]


BetheVector[n_, l_, d_, x_]:= Module[{conf, i,xc},
conf = Subsets[Table[i, {i, 1, l}], {n}];
Return[Table[U[n,d, x, xc]/.Sub[xc, conf[[i]]], {i, 1, Binomial[l, n]}]];
]


(*Transfer Matrix*)
TransferUMatrix[n_, l_, d_]:= Module[{x, xc, br, conf, sub}, 
br= BetheRoots[n,l,d,x];
conf = Subsets[Table[i, {i, 1, l}], {n}];
sub = Table[Join[Sub[xc, conf[[j]]], br[[i]]], {i, 1, Binomial[l,n]}, {j, 1, Binomial[l,n]}];
Return[Chop[U[n, d,x, xc]/.sub]];
]


BetheInverseDet[x_, d_, n_, l_]:= Module[{mat, i, j},
mat= Table[If[i!=j,-(2d (1 + x[j]^2 - 2d x[j]))/((1 +x[i]x[j]-2d x[i] )(1 +x[i]x[j]-2d x[j] )), 0], {i, 1, n}, {j, 1, n}];
Do[mat[[i]][[i]]=l/x[i]-Sum[mat[[i]][[j]], {j, 1, n}], {i, 1, n}];
Return[Det[mat]];
]


ell[yi_,x_ ,d_,  n_, l_]:=Module[{per, i, j},
per = Permutations[Table[i, {i, 1, n}]];
Return[(BetheInverseDet[x, d, n, l])^-1 Sum[(Asigma[n, d, x, per[[i]]]Product[x[per[[i]][[j]]]^(yi[j]+1), {j, 1, n}])^-1, {i, 1, n!}]];
]


TransferellMatrix[n_, l_, d_]:= Module[{br, conf, x, subs, i, j, len, yi},
br= BetheRoots[n,l,d,x];
conf = Subsets[Table[i, {i, 1, l}], {n}];
subs = Table[Join[Sub[yi, conf[[i]]], br[[j]]], {i, 1, Binomial[l,n]}, {j, 1,Binomial[l,n]}];
Return[Chop[ell[yi,x ,d,  n, l]/.subs]];
]





(* ::Section:: *)
(*One-Point Function*)


Energy[n_, d_,x_]:= Sum[x[i] + x[i]^-1-2 d, {i, 1, n}];


OnePtConfigs[n_,l_, pt_]:=Module[{conf},
conf = Subsets[Table[i, {i, 1, l}], {n}];
Return[Select[conf,MemberQ[#, pt]& ]];
]


FundSol[n_, l_, d_, t_]:=Module[{br, x, bv, EN},
(*Bethe roots*)
br = BetheRoots[n, l, d,x];
(*Bethe vector*)
bv =BetheVector[n, l, d, x]/.br;
(*Energies*)
EN = Chop[Energy[n, d, x]/.br];
EN= Map[Exp[- I t #]&,EN ];
Return[Transpose[Inner[Times, EN, bv, List]]];
]


ellvalue[yi_,n_, l_, d_]:= Module[{br, i,x},
br=BetheRoots[n,l,d,x];
Return[{ell[yi,x ,d,  n, l]/.br}];
]


ICvec[yi_, n_, l_, d_]:= Module[{yitemp, sub},
sub= Sub[yitemp, yi];
Return[ellvalue[yitemp, n, l, d]/.sub]
]


OnePtConfigList[n_,l_, pt_]:=Module[{conf},
conf = Subsets[Table[i, {i, 1, l}], {n}];
Return[Table[If[MemberQ[conf[[i]], pt], 1, 0], {i,1,Binomial[l,n] }]];
]


OnePtSt[n_, l_,d_, pt_,yi_, t_]:=Module[{ptconfig, sol},
ptconfig =OnePtConfigList[n, l,pt];
sol= Flatten[ICvec[yi, n,l, d] . FundSol[n, l, d, t]];
Return[ Inner[Times, sol, ptconfig, List]];
] 


OnePtPlots[n_,l_,d_,yi_,tstep_]:=Module[{times,lentimes,optst,tsub,probs,MasProbs},
times= Table[dt, {dt, 0, l/2, tstep}];
MasProbs={};
Do[ 
optst =OnePtSt[n, l ,d, pt, yi, t];
tsub =Table[{t->times[[k]]}, {k, 1, lentimes}];
probs =Map[ Norm[#]^2&,optst/.tsub];
probs =Table[{pt, times[[k]], probs[[k]]}, {k, 1, lentimes}];
MasProbs = Join[MasProbs, probs],
{pt, 1, l}
];
Plot1=ListPlot3D[MasProbs, PlotRange->Full,PlotLabel->Style[StringJoin["One Point Function XXZ on a ring","(l=",ToString[l],", n=",ToString[n],", \[CapitalDelta]=",ToString[d],")"], Bold, Black], AxesLabel->{Style["Space",Black], Style["Time", Black], Style["Probability", Black]}];
Plot2=ListDensityPlot[MasProbs,PlotLabel->Style[StringJoin["One Point Function XXZ on a ring","(l=",ToString[l],", n=",ToString[n],", \[CapitalDelta]=",ToString[d],")"], Bold, Black],PlotLegends->Placed[BarLegend[Automatic,LegendLabel->"Probability",LabelStyle->{Italic,FontFamily->"Helvetica"}],Right], Frame-> True, FrameLabel->{Style["Space", Black],Style["Time", Black]}];
Return[{MasProbs,Plot1,Plot2}]
]


(* ::Section:: *)
(*One-Point Function via Identities*)


LHS1[n_, s_, d_, x_, z_]:= Module[{aI, i, j, sets, Csets, ls},
aI = Table[i, {i, 1, n}];
sets = Subsets[aI, {s}];
ls = Length[sets];
Csets= Table[Complement[aI, sets[[i]]], {i, 1, ls}];
Return[Sum[(F[x, z, sets[[i]], sets[[j]]]^-1-1)\[CapitalLambda][d, x, z, sets[[i]], sets[[j]]]G[d, x, {Csets[[i]], sets[[i]]}, {1,2}]G[d, z, {Csets[[j]], sets[[j]]}, {1,2}]\[CapitalLambda]i[d, x, z, Csets[[i]], Csets[[j]]]F[x, z, Csets[[i]], Csets[[j]]]^(n-s-3), {i, 1, ls}, {j, 1, ls}]]
]


OnePtAlt[n_, l_, d_,pt_, yi_, t_]:= Module[{yit, ysub, brx, brz,br,ans, s, i, j, x, z},
yi= Sort[Mod[yi-pt-1, l] +1];
ysub =Sub[yit, yi];
br = BetheRoots[n, l, d];
brx = Map[Sub[x, #]&, br];
brz = Map[Sub[z, #]&, br];
ans = ell[yit,x ,d,  n, l]ell[yit,z ,d,  n, l]Sum[LHS1[n, s, d, x, z], {s, 1, n}]Product[(1 + x[i] x[j]- 2 d x[i])^-1 (1 + z[i]z[j]- 2d z[i])^-1, {i, 1, n-1}, {j, i+1, n}]Exp[- I t(Energy[n, d, x]- Energy[n, d, z])]/.ysub;
Print[ans];
ans = Flatten[ans/. brx/.brz];
j = Length[ans];
Return[Sum[ans[[i]], {i, 1, j}]];
]


(* ::Section:: *)
(*Functions to check one-point functions*)


MasterSum[x_, z_, d_, n_, l_]:=Module[{per,i, j, k, len, ans, confs, xc},
per = Permutations[Table[i, {i, 1, n}]];
confs= Map[Sub[xc, #]&,OptConf[n, l, 1]-1];
len= Length[confs];
ans =Sum[B[n, d, x, per[[i]]]B[n, d,z, per[[j]]]Product[x[per[[i]][[k]]]^(xc[k]-k) z[per[[j]][[k]]]^(xc[k]-k), {k, 1, n}], {i, 1, n!}, {j, 1, n!}];
ans = ans/.confs;
Return[Sum[ans[[k]], {k, 1, len}]]
]


F1[x_, indexset_]:= Product[x[indexset[[k]]], {k, 1, Length[indexset]}];


Identity1Term[n_, l_, x_, Iset_]:= Module[{len, set, ans},
len = Length[Iset];
set = Join[{1}, Iset];
set = Join[set, {n+1}];
ans = (-1)^len ((1 - F1[x, Table[i, {i, set[[1]], set[[2]]-1}]])/F1[x, Table[i, {i, set[[1]], set[[2]]-1}]])(F1[x, If[set[[2]]<= n, Table[i, {i, set[[2]],n}], {}]])^(l-n) Product[Product[(1- F1[x,Table[k, {k, j, set[[i+1]]-1}] ])^-1, {j, set[[i]], set[[i+1]]-1}], {i,1,len+1 }];
Return[ans]
]


Identity1[n_, l_,x_]:=Module[{subindex, len, i},
subindex= Subsets[Table[i, {i, 2, n}], n-1];
len = Length[subindex];
subindex=Map[Id1Term[n, l, x, #]&, subindex];
Return[Sum[subindex[[i]], {i, 1, len}]];
]


GeoSumIdentity1[n_, l_, x_]:= Module[{confs, ans, xc, len, i, j},
confs= Map[Sub[xc, #]&,OnePtConfigs[n, l, 1]-1];
len = Length[confs];
ans = Product[x[j]^(xc[j]-j), {j, 1, n}];
ans= ans/.confs;
Return[Sum[ans[[i]], {i, 1, len}]]
]


CsTerm[n_, l_, x_, z_, per1_, per2_, Iset_]:= Module[{len, set, ans},
len = Length[Iset];
set = Join[{1}, Iset];
set = Join[set, {n+1}];
ans = ((1 - F[x, z, Table[per1[[i]], {i, set[[1]], set[[2]]-1}], Table[per2[[i]], {i, set[[1]], set[[2]]-1}]])/F[x, z, Table[per1[[i]], {i, set[[1]], set[[2]]-1}], Table[per2[[i]], {i, set[[1]], set[[2]]-1}]])(F[x, z, If[set[[2]]<= n, Table[per1[[i]], {i, set[[2]],n}], {}], If[set[[2]]<= n, Table[per2[[i]], {i, set[[2]],n}], {}]])^(l-n) Product[Product[(1- F[x,z, Table[per1[[k]], {k, j, set[[i+1]]-1}], Table[per2[[k]], {k, j, set[[i+1]]-1}] ])^-1, {j, set[[i]], set[[i+1]]-1}], {i,1,len+1 }];
Return[ans]
]


Cs[n_, l_, d_, x_, z_, Iset_]:= Module[{perms, i, j, ans, len},
perms = Permutations[Table[i, {i, 1, n}]];
ans = Flatten[Table[Bsigma[n, d, x, perms[[i]]]Bsigma[n, d,z, perms[[j]]]CsTerm[n, l, x, z, perms[[i]], perms[[j]], Iset], {i, 1, n!}, {j, 1, n!}]];
len = Length[ans];
Return[Sum[ans[[i]], {i,1 ,len}]]
]


CsSum[n_, l_, d_,x_, z_]:=Module[{subindex, len, i},
subindex= Subsets[Table[i, {i, 2, n}], n-1];
len = Length[subindex];
subindex=Map[(-1)^Length[#] Cs[n, l, d, x, z, #]&, subindex];
Return[Sum[subindex[[i]], {i, 1, len}]];
]


(* ::Section:: *)
(*C-function decomposition*)


EFunction[x_, z_, d_, I1_, I2_]:= ( F[x, z, I1, I2]^-1-1)\[CapitalLambda][d, x,z, I1, I2 ];


B[n_, d_, x_, perm_, Ic_]:= Module[{len, sub, i},
len = Length[Ic];
sub =Table[x[i]-> x[Ic[[i]]], {i, 1, len}];
Return[B[len, d, x, perm]/.sub]
]


DsTerm[n_, l_, x_, z_, per1_, per2_, Iset_, I1c_, I2c_]:= Module[{len, set, ans, len2},
len = Length[Iset];
len2 = Length[I1c];
set = Join[{1}, Iset];
set = Join[set, {n+1}];
ans = Product[(F[x, z, Table[I1c[[per1[[k + len2-n]]]], {k, set[[i]], set[[i+1]]-1}], Table[I2c[[per2[[k + len2-n]]]], {k, set[[i]], set[[i+1]]-1}] ])^(l-len2) Product[(1- F[x,z, Table[I1c[[per1[[k+len2-n]]]], {k, j, set[[i+1]]-1}], Table[I2c[[per2[[k+len2-n]]]], {k, j, set[[i+1]]-1}] ])^-1, {j, set[[i]], set[[i+1]]-1}], {i,2,len+1 }];
Return[ans]
]


Ds[n_, l_, d_, x_, z_, Iset_, I1c_, I2c_]:= Module[{perms, i, j, ans, len},
If[Length[I1c]==0, Return[1]];
perms = Permutations[Table[i, {i, 1, n- Iset[[1]]+1}]];
ans = Flatten[Table[B[n, d, x, perms[[i]], I1c]B[n, d,z, perms[[j]], I2c]DsTerm[n, l, x, z, perms[[i]], perms[[j]], Iset, I1c, I2c], {i, 1, (n- Iset[[1]]+1)!}, {j, 1, (n- Iset[[1]]+1)!}]];
len = Length[ans];
Return[Sum[ans[[i]], {i,1 ,len}]]
]


CsRHS[n_, l_, d_, x_, z_, Iset_]:= Module[{s1, sets, i,j, len, supset},
If[Length[Iset]==0, s1= n+1, s1 = Iset[[1]]];
supset=Table[i, {i, 1, n}];
sets = Subsets[supset, {s1-1}];
len = Length[sets];
Return[Sum[EFunction[x, z, d, sets[[i]], sets[[j]]]G[d, x,{sets[[i]], Complement[supset, sets[[i]]]}, {1,2} ]G[d, z,{sets[[j]], Complement[supset, sets[[j]]]} , {1,2}]Ds[n, l, d, x, z, Iset, Complement[supset, sets[[i]]],Complement[supset, sets[[j]]]], {i, 1, len}, {j, 1, len}]];
]


CsSumRHS[n_, l_, d_,x_, z_]:=Module[{subindex, len, i},
subindex= Subsets[Table[i, {i, 2, n}], n-1];
len = Length[subindex];
subindex=Map[(-1)^Length[#] CsRHS[n, l, d, x, z, #]&, subindex];
Return[Sum[subindex[[i]], {i, 1, len}]];
]


(* ::Section:: *)
(*Ds Identity*)


DsSumLHS[n_, l_, d_,x_, z_, s_, I1c_, I2c_]:=Module[{subindex, len, i},
subindex= Subsets[Table[i, {i, s+2, n}], n-2];
subindex = Map[Join[{s+1}, #]&, subindex];
len = Length[subindex];
subindex=Map[(-1)^Length[#] Ds[n, l, d, x, z, #, I1c, I2c]&, subindex];
Return[Sum[subindex[[i]], {i, 1, len}]];
]


DsSumId[n_, l_ ,d_, x_, z_,s_, I1c_, I2c_ ]:=\[CapitalLambda]i[d, x, z, I1c, I2c]F[x, z,I1c, I2c ]^(l+n-(s+1)-2);


DsSumMaster[n_, l_, d_,x_, z_] := Module[{supset, sets, i, len, s}, 
supset = Table[i, {i, 1, n}];
sets = Subsets[supset];
len = Length[sets];
Return[Sum[Ecs[x, z, d, sets[[i]], sets[[j]]]G[d, x, { sets[[i]],Complement[supset, sets[[i]]]}, {1,2}]G[d, z, { sets[[j]],Complement[supset, sets[[j]]]}, {1,2}]DsSumId[n, l ,d, x, z,Length[sets[[i]]], Complement[supset, sets[[i]]], Complement[supset, sets[[j]]] ], {i, 1, len}, {j, 1, len}]];
]


End[];


EndPackage[];

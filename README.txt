The "thesis" class  is Copyright (C) 2015 by Hassán Lombera Rodríguez <hlombera@uci.cu>
Maintainers: Luis Guillermo Silva Rojas <lgsilva@uci.cu>
             Rubén Alcolea Núñez <ralcolea@uci.cu>

It comprises this README file, as well as files
thesis.dtx
thesis.ins

This class is a contribution of Center Vertex-Interactive 3D Environment to  the University of Computer Science. It provides a useful and intuitive template for making a thesis document elaboration less painful. In this sense, it decouples the document presentation from its content. The package is in charge of the presentation,  while the content is up to the user. To work with this class it is preferable having some LaTeX knowledge in advance.

The "thesis" class makes extensive use of the LaTeX packages repository. Packages installation should occur on the fly if the repository has been properly configured and updated from ctan <https://www.ctan.org/>. The resources listed in this section are strictly required for thesis to function. The class will not work if they are not available. For some packages a minimum version will be indicated in brackets. The class triggers warnings when a package expected version is not found.

They are:
- algorithm
- algpseudocode
- amsmath
- amssymb
- amsthm
- appendix
- aurical
- babel [2014/09/25]
- biber
- biblatex [2014/06/25]
- bigstrut
- bookmark
- calligra
- caption [2013/05/02]
- csquotes
- datetime
- draftwatermark [2012/01/10]
- enumitem
- environ
- epstopdf
- etoolbox
- fancyhdr
- fncychap
- fontenc
- fp
- geometry
- glossaries [2015/03/16]
- graphicx
- hhline
- hyperref
- ifdraft
- ifthen
- inputenc
- kbordermatrix
- lipsum
- listings
- longtable
- mdframed [2013/07/01]
- multirow
- pdflscape
- pdfpages
- rotating
- setspace
- soul
- subcaption
- textpos
- tocloft
- todonotes [2012/07/25]
- txfonts
- upquote
- xcolor
- xkeyval

* Installation instructions
For being able to use this class, ALL packages related above must be "visible" to LaTeX. To install the "thesis" class, run LaTeX on the installation script thesis.ins and follow the instructions provided by the script itself.

Usage:
pdflatex thesis.ins

To produce the documentation <highly recommended> run the file thesis.dtx through LaTeX as follows.

Usage:
pdflatex thesis.dtx
makeindex -s gind.ist -o thesis.ind thesis.idx
makeindex -s gglo.ist -o thesis.gls thesis.glo
pdflatex thesis.dtx
pdflatex thesis.dtx

* Expected files after installation:
- thesis.cls
- masterthesis.sty
- LogoUCI.eps
- thesis.pdf
- example.tex
- README.txt <this file>

Happy TeXing!

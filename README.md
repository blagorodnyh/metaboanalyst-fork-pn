# Script MetaboAnalyst

## Primeiros Passos

Inicialmente, antes de utilizar o script, deve-se instalar o pacote do [*MetaboAnalyst*](https://metaboanalyst.ca/) para o R ([*MetaboAnalystR*](https://github.com/xia-lab/MetaboAnalystR)), assim como suas dependências.

### Instalando as Dependências

Utilize o pacote [*pacman*](https://github.com/trinker/pacman) para instalar as dependências:

```R
install.packages("pacman")

library(pacman)

pacman::p_load(c("impute", "pcaMethods", "globaltest", "GlobalAncova", "Rgraphviz", "preprocessCore", "genefilter", "sva", "limma", "KEGGgraph", "BiocParallel", "MSnbase", "multtest", "httr", "pheatmap", "ellipse", "pls"))

install.packages(c('RSQLite', 'Cairo', 'progress', 'Rserve', 'jsonlite', 'purrr', 'data.table', 'qs', 'pROC', 'caret', 'crmn', 'dplyr', 'glasso', 'gplots', 'igraph', 'plotly'))

BiocManager::install(c('RBGL', 'edgeR', 'fgsea', 'siggenes'))
```

### Instalando o Pacote

1. Baixe este repositório
2. Extraia em uma pasta conhecida
3. Abra o diretório MetaboAnalystR, 
4. Execute o arquivo **MetaboAnalystR.Rproj** no software [*RStudio*](https://posit.co/download/rstudio-desktop/).
5. Se estiver utilizando um sistema Windows, instale o [RTools](https://cran.r-project.org/bin/windows/Rtools/)
6. Dentro do RStudio, use o atalho *CTRL + Shift + B* para fazer o *build* do pacote modificado no seu computador.
7. Utilize o script *MetaboAnalyst.R*
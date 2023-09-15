# Script MetaboAnalyst

## Primeiros Passos

Inicialmente, antes de utilizar o script, deve-se instalar o pacote do [*MetaboAnalyst*](https://metaboanalyst.ca/) para o R ([*MetaboAnalystR*](https://github.com/xia-lab/MetaboAnalystR)), assim como suas dependências.

### Instalando as Dependências

#### Opção 1

Utilize a seguinte função dentro do seu R para instalar as dependências:

```R
metanr_packages <- function() {

    metr_pkgs <- c("impute", "pcaMethods", "globaltest", "GlobalAncova", "Rgraphviz", "preprocessCore", "genefilter", "sva", "limma", "KEGGgraph", "siggenes","BiocParallel", "MSnbase", "multtest", "RBGL", "edgeR", "fgsea", "devtools", "crmn", "httr", "qs")
    
    list_installed <- installed.packages()
    
    new_pkgs <- subset(metr_pkgs, !(metr_pkgs %in% list_installed[, "Package"]))
    
    if (length(new_pkgs)!= 0) {
        
        if (!requireNamespace("BiocManager", quietly = TRUE))
            install.packages("BiocManager")
        BiocManager::install(new_pkgs)
        print(c(new_pkgs, " packages added..."))
    }
    
    if ((length(new_pkgs)<1)) {
        print("No new packages added...")
    }
}

metanr_packages()
```

#### Opção 2

Utilize o pacote [*pacman*](https://github.com/trinker/pacman) para instalar as dependências:

```R
install.packages("pacman")

library(pacman)

pacman::p_load(c("impute", "pcaMethods", "globaltest", "GlobalAncova", "Rgraphviz", "preprocessCore", "genefilter", "sva", "limma", "KEGGgraph", "siggenes", "BiocParallel", "MSnbase", "multtest","RBGL", "edgeR", "fgsea", "httr", "qs"))
```

### Instalando o Pacote

1. Baixe este repositório
2. Extraia em uma pasta conhecida
3. Abra o diretório MetaboAnalystR, 
4. Execute o arquivo **MetaboAnalystR.Rproj** no software [*RStudio*](https://posit.co/download/rstudio-desktop/).
5. Use o atalho *CTRL + Shift + B* para fazer o *build* do pacote modificado no seu computador.
6. Utilize o script *MetaboAnalyst.R*
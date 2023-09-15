# Diretório de Trabalho (pasta do projeto) - TROCAR \ por /

wd <- "C:/Users/pedro/OneDrive/Documents/Jhefferson/Total/Results/"

setwd(wd)

library(MetaboAnalystR)

# Importação dos dados

mSet <- InitDataObjects(data.type = "conc", # nolint: object_name_linter.
                        anal.type = "stat",
                        paired = FALSE)

mSet <- Read.TextData(mSetObj = mSet, # nolint: object_name_linter.
                      filePath = "C:/Users/pedro/OneDrive/Documents/Jhefferson/
                      Total/UF.csv",
                      format = "colu",
                      lbl.type = "disc")

mSet <- SanityCheckData(mSetObj = mSet) # nolint: object_name_linter.

mSet <- ReplaceMin(mSetObj = mSet) # nolint: object_name_linter.

mSet <- SanityCheckData(mSetObj = mSet) # nolint: object_name_linter.

mSet <- FilterVariable(mSetObj = mSet, # nolint: object_name_linter.
                       filter = "none",
                       filter.cutoff = -1,
                       qcFilter = "F",
                       rsd = 25,
                       privileged = TRUE)

# Normalização

mSet <- PreparePrenormData(mSetObj = mSet) # nolint: object_name_linter.

mSet <- Normalization(mSetObj = mSet, # nolint: object_name_linter.
                      rowNorm = "NULL",
                      transNorm = "LogNorm",
                      scaleNorm = "ParetoNorm",
                      ref = NULL,
                      ratio = FALSE,
                      ratioNum = 20)

# Plot das normalizações

mSet <- PlotNormSummary(mSetObj = mSet, # nolint: object_name_linter.
                        imgName = "norm_0_",
                        format = "png",
                        dpi = 600,
                        width = NA)

mSet <- PlotSampleNormSummary(mSetObj = mSet, # nolint: object_name_linter.
                              imgName = "snorm_0_",
                              format = "png",
                              dpi = 600,
                              width = NA)

# Definir cores para os grupos

colVec <- c("#00ff00", # nolint: object_name_linter.
            "#ff0000")

# PCA

# setwd(wd) # nolint: commented_code_linter.
#
# dir.create("PCA") # nolint: commented_code_linter.
#
# pca.dir <- paste(as.character(wd), "PCA") # nolint: commented_code_linter.
#
# setwd(pca.dir) # nolint: commented_code_linter.

mSet <- PCA.Anal(mSetObj = mSet) # nolint: object_name_linter.

mSet <- PlotPCAPairSummary(mSetObj = mSet, # nolint: object_name_linter.
                           imgName = "pca_pair_0_",
                           format = "png",
                           dpi = 600,
                           width = NA,
                           pc.num = 5)

mSet <- PlotPCAScree(mSetObj = mSet, # nolint: object_name_linter.
                     imgName = "pca_scree_0_",
                     format = "png",
                     dpi = 600,
                     width = NA,
                     scree.num = 5)

mSet <- PlotPCA2DScore(mSetObj = mSet, # nolint: object_name_linter.
                       imgName = "pca_score2d_0_",
                       format = "png",
                       dpi = 600,
                       width = NA,
                       pcx = 1,
                       pcy = 2,
                       reg = 0.95,
                       show = 0,
                       grey.scale = 0)

mSet <- PlotPCALoading(mSetObj = mSet, # nolint: object_name_linter.
                       imgName = "pca_loading_0_",
                       format = "png",
                       dpi = 600,
                       width = NA,
                       inx1 = 1,
                       inx2 = 2)

mSet <- PlotPCABiplot(mSetObj = mSet, # nolint: object_name_linter.
                      imgName = "pca_biplot_0_",
                      format = "png",
                      dpi = 600,
                      width = NA,
                      inx1 = 1,
                      inx2 = 2)

# Teste t

mSet <- Ttests.Anal(mSetObj = mSet, # nolint: object_name_linter.
                    nonpar = FALSE,
                    threshp = 0.05,
                    paired = FALSE,
                    equal.var = TRUE,
                    pvalType = "raw",
                    all_results = TRUE)

mSet <- PlotTT(mSetObj = mSet, # nolint: object_name_linter.
               imgName = "tt_1_",
               format = "png",
               dpi = 600,
               width = NA)

# Fold change

mSet <- FC.Anal(mSetObj = mSet, # nolint: object_name_linter.
                fc.thresh = 1.5,
                cmp.type = 1,
                paired = FALSE)

mSet <- PlotFC(mSetObj = mSet, # nolint: object_name_linter.
               imgName = "fc_1_",
               format = "png",
               dpi = 600,
               width = NA)

# Volcano Plot

# setwd(wd) # nolint: commented_code_linter.
#
# dir.create("Volcano") # nolint: commented_code_linter.
#
# volcano.dir <- paste(as.character(wd), "Volcano") # nolint: commented_code_linter, line_length_linter.
#
# setwd(volcano.dir) # nolint: commented_code_linter.

mSet <- Volcano.Anal(mSetObj = mSet, # nolint: object_name_linter.
                     paired = FALSE,
                     fcthresh = 1.5,
                     cmpType = 1,
                     nonpar = FALSE,
                     threshp = 0.1,
                     equal.var = TRUE,
                     pval.type = "raw")

mSet <- PlotVolcano(mSetObj = mSet, # nolint: object_name_linter.
                    imgName = "volcano_1_",
                    plotLbl = 1,
                    plotTheme = 0,
                    format = "svg",
                    dpi = 300,
                    width = 49.9)

# Box-plots

# setwd(wd) # nolint: commented_code_linter.
#
# dir.create("Box-Plots") # nolint: commented_code_linter.
#
# boxplot.dir <- paste(as.character(wd), "Box-Plots") # nolint: commented_code_linter, line_length_linter.
#
# setwd(boxplot.dir) # nolint: commented_code_linter.

t_test <- read.csv("t_test.csv")

significant_species <- t_test$X

for (lipid in significant_species) {

  mSet <- PlotCmpdSummary(mSetObj = mSet, # nolint: object_name_linter.
                          cmpdNm = lipid,
                          meta = "NA",
                          version = 1,
                          format = "png",
                          dpi = 600,
                          scale = 1.25,
                          width = 6)

}

# PLS-DA
#
# setwd(wd) # nolint: commented_code_linter.
#
# dir.create("PLS-DA") # nolint: commented_code_linter.
#
# plsda.dir <- paste(as.character(wd), "PLS-DA") # nolint: commented_code_linter, line_length_linter.
#
# setwd(plsda.dir) # nolint: commented_code_linter.

mSet <- PLSR.Anal(mSetObj = mSet, # nolint: object_name_linter.
                  reg = TRUE)

mSet <- PlotPLSPairSummary(mSetObj = mSet, # nolint: object_name_linter.
                           imgName = "pls_pair_0_",
                           format = "png",
                           dpi = 600,
                           width = NA,
                           pc.num = 5)

mSet <- PlotPLS2DScore(mSetObj = mSet, # nolint: object_name_linter.
                       imgName = "pls_score2d_0_",
                       format = "png",
                       dpi = 600,
                       width = NA,
                       inx1 = 1,
                       inx2 = 2,
                       reg = 0.95,
                       show = 1,
                       grey.scale = 0)

mSet <- PlotPLSLoading(mSetObj = mSet, # nolint: object_name_linter.
                       imgName = "pls_loading_0_",
                       format = "png",
                       dpi = 600,
                       width = NA,
                       inx1 = 1,
                       inx2 = 2)

mSet <- PlotPLS.Imp(mSetObj = mSet, # nolint: object_name_linter.
                    imgName = "pls_imp_0_",
                    format = "png",
                    dpi = 600,
                    width = NA,
                    type = "vip",
                    feat.nm = "Comp. 1",
                    feat.num = 15,
                    color.BW = FALSE)

# sPLS-DA

# setwd(wd) # nolint: commented_code_linter.
#
# dir.create("sPLS-DA") # nolint: commented_code_linter.
#
# splsda.dir <- paste(as.character(wd), "sPLS-DA") # nolint: commented_code_linter, line_length_linter.
#
# setwd(splsda.dir) # nolint: commented_code_linter.

mSet <- SPLSR.Anal(mSetObj = mSet, # nolint: object_name_linter.
                   comp.num = 5,
                   var.num = 10,
                   compVarOpt = "same",
                   validOpt = "Mfold",
                   foldNum = 5,
                   doCV = FALSE)

mSet <- PlotSPLSPairSummary(mSetObj = mSet, # nolint: object_name_linter.
                            imgName = "spls_pair_0_",
                            format = "png",
                            dpi = 600,
                            width = NA,
                            pc.num = 5)

mSet <- PlotSPLS2DScore(mSetObj = mSet, # nolint: object_name_linter.
                        imgName = "spls_score2d_0_",
                        format = "png",
                        dpi = 600,
                        width = NA,
                        inx1 = 1,
                        inx2 = 2,
                        reg = 0.95,
                        show = 0,
                        grey.scale = 0)

# Heatmap global

# setwd(wd) # nolint: commented_code_linter.
#
# dir.create("HeatMap") # nolint: commented_code_linter.
#
# heatmap.dir <- paste(as.character(wd), "HeatMap") # nolint: commented_code_linter, line_length_linter.
#
# setwd(heatmap.dir) # nolint: commented_code_linter.

mSet <- PlotHeatMap(mSetObj = mSet, # nolint: object_name_linter.
                    imgName = "heatmap_total_",
                    format = "png",
                    dpi = 300,
                    width = 10,
                    dataOpt = "norm",
                    scaleOpt = "row",
                    smplDist = "euclidean",
                    clstDist = "ward.D",
                    palette = "bwm",
                    font.size = 8,
                    viewOpt = "overwiew",
                    rowV = TRUE,
                    colV = TRUE,
                    var.inx = NULL,
                    border = TRUE,
                    grp.ave = FALSE,
                    show.legend = TRUE,
                    show.annot.legend = TRUE,
                    includeRowNames = TRUE)

# Heatmap com rankeamento

mSet <- PlotSubHeatMap(mSetObj = mSet, # nolint: object_name_linter.
                       imgName = "heatmap_top25_",
                       format = "png",
                       dpi = 1600,
                       width = 10,
                       dataOpt = "norm",
                       scaleOpt = "row",
                       smplDist = "euclidean",
                       clstDist = "ward.D",
                       palette = "bwm",
                       font.size = 10,
                       method.nm = "tanova",
                       top.num = 25,
                       viewOpt = "detail",
                       rowV = TRUE,
                       colV = TRUE,
                       border = TRUE,
                       grp.ave = FALSE,
                       show.legend = TRUE,
                       show.annot.legend = TRUE,
                       includeRowNames = TRUE)

# Heatmap global com media dos grupos

mSet <- PlotHeatMap(mSetObj = mSet, # nolint: object_name_linter.
                    imgName = "heatmap_mediagrupos_total_",
                    format = "png",
                    dpi = 300,
                    width = 10,
                    dataOpt = "norm",
                    scaleOpt = "row",
                    smplDist = "euclidean",
                    clstDist = "ward.D",
                    palette = "bwm",
                    font.size = 8,
                    viewOpt = "overwiew",
                    rowV = TRUE,
                    colV = TRUE,
                    var.inx = NULL,
                    border = TRUE,
                    grp.ave = TRUE,
                    show.legend = TRUE,
                    show.annot.legend = TRUE,
                    includeRowNames = TRUE)

# Heatmap com rankeamento com media dos grupos

mSet <- PlotSubHeatMap(mSetObj = mSet, # nolint: object_name_linter.
                       imgName = "heatmap_mediagrupos_top25_",
                       format = "png",
                       dpi = 1600,
                       width = 10,
                       dataOpt = "norm",
                       scaleOpt = "row",
                       smplDist = "euclidean",
                       clstDist = "ward.D",
                       palette = "bwm",
                       font.size = 6,
                       method.nm = "tanova",
                       top.num = 25,
                       viewOpt = "detail",
                       rowV = TRUE,
                       colV = TRUE,
                       border = TRUE,
                       grp.ave = TRUE,
                       show.legend = TRUE,
                       show.annot.legend = TRUE,
                       includeRowNames = TRUE)

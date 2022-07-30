suppressPackageStartupMessages(library(anndata))
suppressPackageStartupMessages(library(reticulate))

### Load MarkerCount
mkrcnt <- import("MarkerCount.hicat")

### Load data & extract cell-gene matrix as a data.frame (rownames: cell barcode, colnames: gene symbol)
adata_test <- read_h5ad('Melanoma_5K_rev.h5ad')
X_test <- adata_test$to_df()
celltype_major <- as.character(adata_test$obs[,'celltype_major'])
celltype_minor <- as.character(adata_test$obs[,'celltype_minor'])

### Run MarkerCOunt_GSE
mkr_file <- 'cell_markers_rndsystems_rev.tsv'

lst_res <- mkrcnt$HiCAT( X_test, marker_file = mkr_file, log_transformed = FALSE ) 

df_pred <- lst_res[[1]]
summary <- lst_res[[2]]

### Check result: First 3 columns are major cell type, minor cell type, cell type subset, respectively
### Compare them with the pre-annotated cell type
aucs <- mkrcnt$show_summary(df_pred, summary)

df_pred[,'celltype_major'] <- celltype_major
df_pred[,'celltype_minor'] <- celltype_minor
head(df_pred)

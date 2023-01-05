# HiCAT
High precision, marker-based, Hierarchical Cell-type Annotation Tool for single-cell RNA-seq data

## HiCAT: Brief introduction
- HiCAT is a marker-based, hierarchical cell-type annotation tool for single-cell RNA-seq data.
- It was developed using python3, but also run in R as well.
- HiCAT works in marker-based mode utilizing only the existing lists of markers.
- Please refer to "Hierarchical cell-type identifier accurately distinguishes immune-cell subtypes enabling precise profiling of tissue microenvironment with single-cell RNA-sequencing", Briefings in Bioinformatics, available at https://doi.org/10.1093/bib/bbad006,  https://doi.org/10.1101/2022.07.27.501701

## Installation using pip, importing HiCAT in Python

HiCAT can be installed using pip command. With python3 installed in your system, simply use the follwing command in a terminal.

`pip install MarkerCount`

Once it is installed using pip, you can import two functions using the following python command.

`from MarkerCount.hicat import HiCAT, show_summary`

where `show_summary` is used to check the annotation results.

## Marker file format

Marker file must be a tap-separated-value file (.tsv) with 6 columns, "tissue", "cell_type_major", "cell_type_minor", "cell_type_subset", "exp" and "markers".
- The first column groups the celltypes specified in the following columns.
- The second to fourth define the 3-level taxonomy tree to be used for hierarchical identification.
- "exp" is type of marker, which can be "pos", "neg", or "sec".
- "markers" is a list of gene symbols separated by comma.
- The markers in "cell_markers_rndsystems_rev.tsv", were reproduced from https://www.rndsystems.com/resources/cell-markers

## Example usage in Jupyter notebook

`HiCAT_example_py_v02.ipynb` is example code of HiCAT in Jupyter notebook, where you can see how to import and run HiCAT. For quick overveiw of the usage of HiCAT, simply click `HiCAT_example_py_v02.ipynb` above in the file list.

To run the example, download the Jupyter notebook file, maker DB in `.tsv` file and a sample single-cell RNA-Seq data with `.h5ad` extension (It is one of the data we used in our paper mentioned above). Just follow the instruction below.

1. Download all the files in ZIP format.
2. Decompress the files into a desired folder.
3. Decompress 'Melanoma_5K_rev.h5ad.zip'
4. Run jupyter notebook and open the jupyter notebook file `HiCAT_example_py_v02.ipynb`
5. You can run the codes step-by-step and can see the intermediate and final results.

To run HiCAT, you need the pre-installed python packages `Numpy`, `Pandas`, `sklearn`, `scipy`, and `sknetwork`.
`seaborn` and `matplotlib` are required only to show the results, not for the HiCAT itself.
All of them can be installed simply using `pip` command.

## Using HiCAT in R

(Installed using pip) You also can import and use HiCAT in R, for which you need the R package `reticulate`.
First, import HiCAT using the following command

`library(reticulate)`  
`mkrcnt <- import("MarkerCount.hicat")`

Then, you can call the HiCAT functions as follows.

`df_res <- mkrcnt$HiCAT( .. arguments .. )` 

The arguments to pass and the return value are the same as those in python.
R example of HiCAT is in R script `HiCAT_example.R`
Tested in linux Mint with R version 4.0.5. (numpy v1.21.1, scipy v1.7.1 without scikit-network)

## Contact
Send email to syoon@dku.edu for any inquiry on the usages.


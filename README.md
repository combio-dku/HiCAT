# HiCAT

![PyPI Version](https://img.shields.io/pypi/v/MarkerCount.svg)  ![PyPI Downloads](https://img.shields.io/pypi/dm/MarkerCount.svg)  

## Brief introduction
- HiCAT is a marker-based, hierarchical cell-type annotation tool for single-cell RNA-seq data.
- An improved version of [MarkerCount](https://github.com/combio-dku/MarkerCount).
- It was developed using python3, but also run in R as well.
- HiCAT works in marker-based mode utilizing only the existing lists of markers.

## Cite HiCAT
- "Hierarchical cell-type identifier accurately distinguishes immune-cell subtypes enabling precise profiling of tissue microenvironment with single-cell RNA-sequencing", Briefings in Bioinformatics, available at https://doi.org/10.1093/bib/bbad006, PMID: [36681937](https://pubmed.ncbi.nlm.nih.gov/36681937/)
- "MarkerCount: A stable, count-based cell type identifier for single cell RNA-Seq experiments" Computational and Structural Biotechnology Journal, June 2022, available at https://doi.org/10.1016/j.csbj.2022.06.010, PMID: [35782735](https://pubmed.ncbi.nlm.nih.gov/35782735/)

## Installation using pip, importing HiCAT in Python

HiCAT can be installed using pip command. With python3 installed in your system, simply use the follwing command in a terminal.

`pip install MarkerCount`

Once it is installed using pip, you can import two functions using the following python command.

`from MarkerCount.hicat import HiCAT, show_summary`

where `show_summary` is used to check the annotation results.

## Marker file format

Marker file must be a tap-separated-value file (.tsv) with 6 columns, "tissue", "cell_type_major", "cell_type_minor", "cell_type_subset", "exp" and "markers".
- The "tissue" column is to select cell-types to be used for annotation within HiCAT. You can feed a list of tissues as a parameter when you call `HiCAT`.
- The next three columns define the 3-level taxonomy tree to be used for hierarchical identification.
- "exp" is type of marker, which can be "pos", "neg", or "sec".
- "markers" is a list of gene symbols separated by comma.
- The markers in "cell_markers_rndsystems_rev.tsv", were reproduced from [R&D systems](https://www.rndsystems.com/resources/cell-markers)

If you want to use your own markers, please refer to the [tips for prepareing markers db](https://github.com/combio-dku/HiCAT/blob/main/PreparingMarkersDB.md).

## Example usage in Jupyter notebook

`HiCAT_example_py_v02.ipynb` is example code of HiCAT in Jupyter notebook, where you can see how to import and run HiCAT. For quick overveiw of the usage of HiCAT, simply click `HiCAT_example_py_v02.ipynb` above in the file list.

To run the example, download the Jupyter notebook file, maker DB in `.tsv` file and a sample single-cell RNA-Seq data with `.h5ad` extension (It is one of the data we used in our paper mentioned above). Just follow the instruction below.

1. Download all the files in ZIP format.
2. Decompress the files into a desired folder.
3. Decompress 'Melanoma_5K_rev.h5ad.zip'
4. Run jupyter notebook and open the jupyter notebook file `HiCAT_example_py_v02.ipynb`
5. You can run the codes step-by-step and can see the intermediate and final results.

To run HiCAT, you need the pre-installed python packages `Numpy`, `Pandas`, `sklearn`, `scipy`, and `scikit-network`.
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
Tested in linux Mint with R version 4.0.5. (numpy v1.26.4, pandas v2.2.1, scipy v1.12.0, scikit-network v0.33.1)

## Contact
Send email to syoon@dku.edu for any inquiry on the usages.


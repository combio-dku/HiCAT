# HiCAT
High precision, marker-based, hierarchical cell-type annotation tool for single-cell RNA-seq data

## HiCAT: Brief introduction
- HiCAT is High precision, marker-based, hierarchical cell-type annotation tool for single-cell RNA-seq data.
- developed using python3, but also run in R as well
- HiCAT works in marker-based mode utilizing only the existing lists of markers
- Please refer to the preprint manuscript "Hierarchical cell-type identifier accurately distinguishes immune-cell subtypes enabling precise profiling of tissue microenvironment with single-cell RNA-sequencing" available at https://www.researchsquare.com/article/rs-418249/v2 DOI:
https://doi.org/10.21203/rs.3.rs-418249/v2 

## Installation using pip, importing MarkerCount in Python

HiCAT can be installed using pip command. With python3 installed in your system, simply use the follwing command in a terminal.

`pip install MarkerCount`

Once it is installed using pip, you can import the two functions using the following python command.

`from MarkerCount.hicat import HiCAT, show_summary`

where `show_summary` is used to check the annotation results.

## Using MarkerCount in R

(Installed using pip) You also can import and use MarkerCount in R, for which you need the R package `reticulate`.
First, import MarkerCount using the following command

`library(reticulate)`  
`mkrcnt <- import("MarkerCount.hicat")`

Then, you can call the MarkerCount functions as follows.

`df_res <- mkrcnt$HiCAT( .. arguments .. )` 

The arguments to pass and the return value are the same as those in python.

## Example usage in Jupyter notebook

We provide example usage of HiCAT in Jupyter notebook file `HiCAT_example_py_v02.ipynb`, where you can see how to import and how to run HiCAT. For quick overveiw of the usage of HiCAT, simply click `HiCAT_example_py_v02.ipynb` above in the file list.

To run the example, please download the script, Jupyter notebook file, maker DB in `.tsv` file and a sample single-cell RNA-Seq data with `.h5ad` file extension (It is one of the data we used in our paper mentioned above) and follow the instruction below.

1. Download all the files in ZIP format.
2. Decompress the files into a desired folder.
3. Run jupyter notebook and open the jupyter notebook file `HiCAT_example_py_v02.ipynb`
4. You can run the codes step-by-step and can see the intermediate and final results.

To run HiCAT, you need the python packages `Numpy`, `Pandas`, `sklearn`, `scipy`, and `sknetwork`.
`seaborn` and `matplotlib` are required only to show the results, not for the HiCAT itself.
All of them can be installed simply using `pip` command.

## Contact
Send email to syoon@dku.edu for any inquiry on the usages.


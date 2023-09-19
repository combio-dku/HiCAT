## Tips for preparing markers db

HiCAT utilizes subset markers structured in a 3-level taxonomy tree. 

![image](https://github.com/combio-dku/HiCAT/assets/82195405/57ff3362-95ab-48e0-ab5a-46733de61ff3)

Although the three levels of cell-type taxonomies roughly correspond to the lineage tree, 
we rather define them by their transcriptomic profiles for classification and clustering purposes. 
First, major-types are defined as cell populations that are clearly separable from others so that 
they are easily identifiable in a low-dimensional landscape, e.g., in tSNE or UMAP plots, 
while minor-types are a subpopulation of a major-type and not clearly separable even though they can be well localized within a major-type cluster. 
In our taxonomy, CD4, CD8 T cells, ILC and NK cells were set as minor-types of T cells. 
Subsets are a subpopulation of a minor-type and typically represents specific activation/polarization states of a minor population, 
e.g., M1 or M2 polarization of macrophage. 
They are not clearly separable from other subsets and also may not be well localized such that blind clustering is not applicable to catch a specific subset. 
As mentioned, these three-level taxonomies are defined only for the classification purposes and the development of hierarchical identifier.


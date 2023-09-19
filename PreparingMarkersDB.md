## HiCAT markers db

HiCAT utilizes subset markers structured in a 3-level taxonomy tree, major-types, minor-types and subsets. 

<div style="text-align:center;">
  <img src="https://github.com/combio-dku/HiCAT/assets/82195405/57ff3362-95ab-48e0-ab5a-46733de61ff3" alt="HiCAT operation & Taxonomy tree" width="600">
</div>

Although the three levels of cell-type taxonomies roughly correspond to the lineage tree, 
we rather define them by their transcriptomic profiles for classification and clustering purposes. 

1. __Major-types__ are defined as cell populations that are clearly separable from others so that 
they are easily identifiable in a low-dimensional landscape, e.g., in tSNE or UMAP plots, 
2. __Minor-types__ are a subpopulation of a major-type and not clearly separable even though they can be well localized within a major-type cluster. 
3. __Subsets__ are a subpopulation of a minor-type and typically represents specific activation/polarization states of a minor population, e.g., M1/M2 macrophage, Th1,2,17 of CD4+ T cells. 
They are not clearly separable from other subsets and also may not be well localized such that blind clustering is not applicable to catch a specific subset. 

## Tips for preparing customized markers db

1. Rather than create a completely new markers db, try to use the [existing one](https://github.com/combio-dku/HiCAT/blob/main/cell_markers_rndsystems.tsv), to which you can add new types with appropriate markers (in Hugo symbols).
2. When you add a new major-type, other than those in the existing major-types, it must be clearly separable (e.g. in t-SNE plot) from others.
3. If your new types are not clearly separable from existing major types, it must be added as a minor-type or a subset of an existing major-type that it belongs or is most close to. You may check what major-type is suitable to your minor-type using t-SNE or UMAP plot.
4. Typically, minor-types (or subsets) from the same major-type (or minor-type) share some marker genes. You can add the common markers to all the minor-types (or subsets) that share.
5. However, it is recommended that you first run HiCAT using the [existing markers db](https://github.com/combio-dku/HiCAT/blob/main/cell_markers_rndsystems.tsv). Later, you can add new types with an appropriate markers as minor-types of, for example, epithelial cells or fibroblast.



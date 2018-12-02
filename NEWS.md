### v0.3.0
* made parameter 'log' able to take value from a 'log_arg' variable in the parent environment (dynamic scoping) of a function
  * the old way of assigning value to 'log' is still supported
* new function:
  * wh_dict:	Create Data Dictionary from Data Warehouse
* moved some codes to internal functions and internal variables
* revised documentation
* bug fixing

### v0.2.0
* new functions:
  1. partition_random: partitioning a dataset randomly
  2. encode_onehot: One Hot encoding
  3. inspect_smap: a simplified thus faster version of inspect_map
* rewrote codes that produce log files as internal functions
* added vignettes
* revised documentation
* bug fixing

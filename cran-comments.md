### v0.2.0

09/03/2018 --------------------------------

winbuilder:
Installation time in seconds: 3
Check time in seconds: 67
Status: 1 WARNING, 1 NOTE
R version 3.5.1 (2018-07-02)

* checking Rd line widths ... NOTE
Rd file 'partition_random.Rd':
  \usage lines wider than 90 characters:
     partition_random(x, name = 'Partition', train, val = 10^ceiling(log10(train))-train, test = TRUE, seed = FALSE, log=FALSE)

These lines will be truncated in the PDF manual.

		Broke the line into 3 lines.

* checking re-building of vignette outputs ... [2s] WARNING
Error in re-building vignettes:
  ...
Quitting from lines 46-56 (Demo.Rmd) 
Error: processing vignette 'Demo.Rmd' failed with diagnostics:
cannot open the connection
Execution halted

		The cause was that I didn't include the dataset I used in vignette.
		I didn't believe that I had to include it because it was publicly available and I indicated its source in the vignette.
		In addition, I didn't want to significantly increase the size of my package.
		If this problem keep blocking my package from CRAN, I will remove the vignette from my CRAN submission and upload it to RPubs.

Installation time in seconds: 5
Check time in seconds: 82
Status: 1 WARNING
R version 3.5.1 (2018-07-02)

		The same warning as above. CRAN submission is schedule to Sep 11 due to a CRAN vacation.

09/13/2018 --------------------------------

After some email correspondence with CRAN admins, I decided to use static html vignette, which CRAN doesn't check, thus no need to include the dataset.


### v0.3.0

11/30/2018 --------------------------------

winbuilder:
Installation time in seconds: 5
Check time in seconds: 56
Status: 1 NOTE
R version 3.5.1 (2018-07-02)
* using platform: x86_64-w64-mingw32 (64-bit)
* checking Rd line widths ... NOTE
Rd file 'encode_onehot.Rd':
  \usage lines wider than 90 characters:
     encode_onehot(x, colname.sep = '_', drop1st = FALSE, full_print=TRUE, log = eval.parent(in_log_default))

Rd file 'encode_ordinal.Rd':
  \usage lines wider than 90 characters:
     encode_ordinal(x, order, none='', out.int=FALSE, full_print=TRUE, log = eval.parent(in_log_default))

Rd file 'partition_random.Rd':
  \usage lines wider than 90 characters:
                                     test = TRUE, seed = FALSE, log = eval.parent(in_log_default))

These lines will be truncated in the PDF manual.

		Shortened the lines.

Installation time in seconds: 5
Check time in seconds: 59
Status: OK

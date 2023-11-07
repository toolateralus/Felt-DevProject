# Note: This language is not publicly available.


## felt language :
### sample language development project.

- use this for working on the lang itself, or as a sample project to build upon.
- this temporarily contains the entire standard library's src in `Dev.fproj/includes/`
- if you want to link against glibc, which you probably do, just make sure the LINK_AGAINST_STL flag is set in the .toml config file.
- also, if you add any files, you either need to swap out the main, or include it as a `.fh`, which is a felt header. 
- note a `.fh` is not an executable, it gets compiled as if it was a document only containing free functions

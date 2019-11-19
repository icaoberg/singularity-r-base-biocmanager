Bootstrap: docker
From: rstudio/r-base:3.6.1-opensuse42

IncludeCmd: yes

%help
    R-base v3.6.1 on OpenSuse42

%post
    R --slave -e 'if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("DropletUtils", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("scds", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("scater", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("scran", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("EnsDb.Hsapiens.v86", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("tidyverse", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("EnsDb.Mmusculus.v79", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("BiocManager", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("DrImpute", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("NMF", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("umap", repos = "http://cran.us.r-project.org")'
    R --slave -e 'install.packages("devtools", repos = "http://cran.us.r-project.org")'

%runscript
    exec "$@"

%environment
    export LC_ALL=C

%appenv R
    BEST_APP=R
    export BEST_APP

%apphelp R
    For more information visit https://www.rdocumentation.org/

%apprun R
    R "$@"

%appenv Rscript
    BEST_APP=Rscript
    export BEST_APP

%apphelp Rscript
    For more information visit https://www.rdocumentation.org/

%apprun Rscript
    Rscript "$@"

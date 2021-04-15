library(devtools)
library(usethis)

# use_build_ignore("dev_history.R")
# use_mit_license("Antoine Bichat")

# use_data_raw("rates")
# use_r("data")

use_git()

attachment::att_amend_desc()

load_all()

check()

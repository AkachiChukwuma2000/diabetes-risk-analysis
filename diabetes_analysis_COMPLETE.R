package ‘reshape2’ successfully unpacked and MD5 sums checked
package ‘tidyverse’ successfully unpacked and MD5 sums checked
package ‘dplyr’ successfully unpacked and MD5 sums checked
package ‘caret’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Akachukwu\AppData\Local\Temp\Rtmp2jOC5P\downloaded_packages
installing the source package ‘ggplot2’

trying URL 'https://cran.rstudio.com/src/contrib/ggplot2_4.0.1.tar.gz'
Content type 'application/x-gzip' length 6343443 bytes (6.0 MB)
downloaded 6.0 MB

* installing *source* package 'ggplot2' ...
** package 'ggplot2' successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ggplot2)

The downloaded source packages are in
‘C:\Users\Akachukwu\AppData\Local\Temp\Rtmp2jOC5P\downloaded_packages’
> library(tidyverse)
── Attaching core tidyverse packages ────────────────────── tidyverse 2.0.0 ──
✔ dplyr     1.1.4     ✔ readr     2.1.5
✔ forcats   1.0.0     ✔ stringr   1.5.1
✔ ggplot2   4.0.1     ✔ tibble    3.2.1
✔ lubridate 1.9.3     ✔ tidyr     1.3.1
✔ purrr     1.0.2     
── Conflicts ──────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
ℹ Use the conflicted package to force all conflicts to become errors
Warning messages:
  1: package ‘tidyverse’ was built under R version 4.4.3 
2: package ‘dplyr’ was built under R version 4.4.3 
> library(ggplot2)
> library(dplyr)
> library(caret)
Loading required package: lattice

Attaching package: ‘caret’

The following object is masked from ‘package:purrr’:
  
  lift

Warning message:
  package ‘caret’ was built under R version 4.4.3 
> diabetes_rate <- mean(diabetes_data$Diabetes_binary)
Warning message:
  In mean.default(diabetes_data$Diabetes_binary) :
  argument is not numeric or logical: returning NA
> print(paste("Diabetes prevalence:", round(diabetes_rate * 100, 1), "%"))
[1] "Diabetes prevalence: NA %"
> ggplot(diabetes_data, aes(x = factor(Diabetes_binary))) +
  +     geom_bar() +
  +     labs(title = "Diabetes Status Distribution", 
             +          x = "0 = No Diabetes, 1 = Diabetes")
Error in `geom_bar()`:
  ! Problem while computing aesthetics.
ℹ Error occurred in the 1st layer.
Caused by error:
  ! object 'Diabetes_binary' not found
Run `rlang::last_trace()` to see where the error occurred.
> names(diabetes_data)
[1] "Diabetes_012"         "HighBP"               "HighChol"            
[4] "CholCheck"            "BMI"                  "Smoker"              
[7] "Stroke"               "HeartDiseaseorAttack" "PhysActivity"        
[10] "Fruits"               "Veggies"              "HvyAlcoholConsump"   
[13] "AnyHealthcare"        "NoDocbcCost"          "GenHlth"             
[16] "MentHlth"             "PhysHlth"             "DiffWalk"            
[19] "Sex"                  "Age"                  "Education"           
[22] "Income"              
> table(diabetes_data$Diabetes_012)

0      1      2 
213703   4631  35346 
> diabetes_labels <- c("No Diabetes", "Prediabetes", "Diabetes")
> table_data <- table(diabetes_data$Diabetes_012)
> names(table_data) <- diabetes_labels
> print(table_data)
No Diabetes Prediabetes    Diabetes 
213703        4631       35346 
> diabetes_percent <- prop.table(table(diabetes_data$Diabetes_012)) * 100
> print("Diabetes Status Percentages:")
[1] "Diabetes Status Percentages:"
> print(diabetes_percent)

0         1         2 
84.241170  1.825528 13.933302 
> ggplot(diabetes_data, aes(x = factor(Diabetes_012))) +
  +     geom_bar(fill = "steelblue", alpha = 0.7) +
  +     scale_x_discrete(labels = c("No Diabetes", "Prediabetes", "Diabetes")) +
  +     labs(title = "Diabetes Status in the US Population", 
             +          x = "Diabetes Status", 
             +          y = "Number of People") +
  +     theme_minimal(
    + ggplot(diabetes_data, aes(x = factor(Diabetes_012))) +
      +     geom_bar(fill = "steelblue", alpha = 0.7) +
      +     scale_x_discrete(labels = c("No Diabetes", "Prediabetes", "Diabetes")) +
      +     labs(title = "Diabetes Status in the US Population", 
                 +          x = "Diabetes Status", 
                 +          y = "Number of People") +
      +     theme_minimal()
    + ggplot(diabetes_data, aes(x = factor(Diabetes_012))) +
      Error: unexpected symbol in:
      "    theme_minimal()
ggplot"
    > ggplot(diabetes_data, aes(x = factor(Diabetes_012))) +
      +     geom_bar(fill = "steelblue", alpha = 0.7) +
      +     scale_x_discrete(labels = c("No Diabetes", "Prediabetes", "Diabetes")) +
      +     labs(title = "Diabetes Status in the US Population", 
                 +          x = "Diabetes Status", 
                 +          y = "Number of People") +
      +     theme_minimal()
    > install.packages("pROC")
    Error in install.packages : Updating loaded packages
    > install.packages("randomForest")
    WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
      
      https://cran.rstudio.com/bin/windows/Rtools/
      Installing package into ‘C:/Users/Akachukwu/AppData/Local/R/win-library/4.4’
    (as ‘lib’ is unspecified)
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/randomForest_4.7-1.2.zip'
    Content type 'application/zip' length 225995 bytes (220 KB)
    downloaded 220 KB
    
    package ‘randomForest’ successfully unpacked and MD5 sums checked
    
    The downloaded binary packages are in
    C:\Users\Akachukwu\AppData\Local\Temp\Rtmp2jOC5P\downloaded_packages
    > install.packages("tableone")
    WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
      
      https://cran.rstudio.com/bin/windows/Rtools/
      Installing package into ‘C:/Users/Akachukwu/AppData/Local/R/win-library/4.4’
    (as ‘lib’ is unspecified)
    also installing the dependencies ‘gtools’, ‘minqa’, ‘mitools’, ‘RcppArmadillo’, ‘gdata’, ‘survey’, ‘zoo’, ‘gmodels’, ‘labelled’
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/gtools_3.9.5.zip'
    Content type 'application/zip' length 368468 bytes (359 KB)
    downloaded 359 KB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/minqa_1.2.8.zip'
    Content type 'application/zip' length 441853 bytes (431 KB)
    downloaded 431 KB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/mitools_2.4.zip'
    Content type 'application/zip' length 299989 bytes (292 KB)
    downloaded 292 KB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/RcppArmadillo_15.0.2-2.zip'
    Content type 'application/zip' length 3254593 bytes (3.1 MB)
    downloaded 3.1 MB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/gdata_3.0.1.zip'
    Content type 'application/zip' length 505143 bytes (493 KB)
    downloaded 493 KB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/survey_4.4-8.zip'
    Content type 'application/zip' length 3794884 bytes (3.6 MB)
    downloaded 3.6 MB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/zoo_1.8-14.zip'
    Content type 'application/zip' length 1035714 bytes (1011 KB)
    downloaded 1011 KB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/gmodels_2.19.1.zip'
    Content type 'application/zip' length 119298 bytes (116 KB)
    downloaded 116 KB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/labelled_2.16.0.zip'
    Content type 'application/zip' length 393717 bytes (384 KB)
    downloaded 384 KB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/tableone_0.13.2.zip'
    Content type 'application/zip' length 392526 bytes (383 KB)
    downloaded 383 KB
    
    package ‘gtools’ successfully unpacked and MD5 sums checked
    package ‘minqa’ successfully unpacked and MD5 sums checked
    package ‘mitools’ successfully unpacked and MD5 sums checked
    package ‘RcppArmadillo’ successfully unpacked and MD5 sums checked
    package ‘gdata’ successfully unpacked and MD5 sums checked
    package ‘survey’ successfully unpacked and MD5 sums checked
    package ‘zoo’ successfully unpacked and MD5 sums checked
    package ‘gmodels’ successfully unpacked and MD5 sums checked
    package ‘labelled’ successfully unpacked and MD5 sums checked
    package ‘tableone’ successfully unpacked and MD5 sums checked
    
    The downloaded binary packages are in
    C:\Users\Akachukwu\AppData\Local\Temp\Rtmp2jOC5P\downloaded_packages
    > install.packages("broom") 
    WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
      
      https://cran.rstudio.com/bin/windows/Rtools/
      Installing package into ‘C:/Users/Akachukwu/AppData/Local/R/win-library/4.4’
    (as ‘lib’ is unspecified)
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/broom_1.0.10.zip'
    Content type 'application/zip' length 1938665 bytes (1.8 MB)
    downloaded 1.8 MB
    
    package ‘broom’ successfully unpacked and MD5 sums checked
    
    The downloaded binary packages are in
    C:\Users\Akachukwu\AppData\Local\Temp\Rtmp2jOC5P\downloaded_packages
    > install.packages("psych") 
    WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
      
      https://cran.rstudio.com/bin/windows/Rtools/
      Installing package into ‘C:/Users/Akachukwu/AppData/Local/R/win-library/4.4’
    (as ‘lib’ is unspecified)
    also installing the dependencies ‘mnormt’, ‘GPArotation’
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/mnormt_2.1.1.zip'
    Content type 'application/zip' length 182714 bytes (178 KB)
    downloaded 178 KB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/GPArotation_2025.3-1.zip'
    Content type 'application/zip' length 591358 bytes (577 KB)
    downloaded 577 KB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/psych_2.5.6.zip'
    Content type 'application/zip' length 3594512 bytes (3.4 MB)
    downloaded 3.4 MB
    
    package ‘mnormt’ successfully unpacked and MD5 sums checked
    package ‘GPArotation’ successfully unpacked and MD5 sums checked
    package ‘psych’ successfully unpacked and MD5 sums checked
    
    The downloaded binary packages are in
    C:\Users\Akachukwu\AppData\Local\Temp\Rtmp2jOC5P\downloaded_packages
    > install.packages("corrplot")
    WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
      
      https://cran.rstudio.com/bin/windows/Rtools/
      Installing package into ‘C:/Users/Akachukwu/AppData/Local/R/win-library/4.4’
    (as ‘lib’ is unspecified)
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/corrplot_0.95.zip'
    Content type 'application/zip' length 3826139 bytes (3.6 MB)
    downloaded 3.6 MB
    
    package ‘corrplot’ successfully unpacked and MD5 sums checked
    
    The downloaded binary packages are in
    C:\Users\Akachukwu\AppData\Local\Temp\Rtmp2jOC5P\downloaded_packages
    > install.packages("patchwork")
    WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
      
      https://cran.rstudio.com/bin/windows/Rtools/
      Installing package into ‘C:/Users/Akachukwu/AppData/Local/R/win-library/4.4’
    (as ‘lib’ is unspecified)
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/patchwork_1.3.2.zip'
    Content type 'application/zip' length 3351223 bytes (3.2 MB)
    downloaded 3.2 MB
    
    package ‘patchwork’ successfully unpacked and MD5 sums checked
    
    The downloaded binary packages are in
    C:\Users\Akachukwu\AppData\Local\Temp\Rtmp2jOC5P\downloaded_packages
    > install.packages("RColorBrewer")
    Error in install.packages : Updating loaded packages
    > install.packages("rmarkdown")
    WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
      
      https://cran.rstudio.com/bin/windows/Rtools/
      Installing package into ‘C:/Users/Akachukwu/AppData/Local/R/win-library/4.4’
    (as ‘lib’ is unspecified)
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/rmarkdown_2.30.zip'
    Content type 'application/zip' length 2698944 bytes (2.6 MB)
    downloaded 2.6 MB
    
    package ‘rmarkdown’ successfully unpacked and MD5 sums checked
    
    The downloaded binary packages are in
    C:\Users\Akachukwu\AppData\Local\Temp\Rtmp2jOC5P\downloaded_packages
    > install.packages("kableExtra")
    WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
      
      https://cran.rstudio.com/bin/windows/Rtools/
      Installing package into ‘C:/Users/Akachukwu/AppData/Local/R/win-library/4.4’
    (as ‘lib’ is unspecified)
    also installing the dependencies ‘systemfonts’, ‘svglite’
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/systemfonts_1.3.1.zip'
    Content type 'application/zip' length 2080903 bytes (2.0 MB)
    downloaded 2.0 MB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/svglite_2.2.2.zip'
    Content type 'application/zip' length 714627 bytes (697 KB)
    downloaded 697 KB
    
    trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/kableExtra_1.4.0.zip'
    Content type 'application/zip' length 2052432 bytes (2.0 MB)
    downloaded 2.0 MB
    
    package ‘systemfonts’ successfully unpacked and MD5 sums checked
    package ‘svglite’ successfully unpacked and MD5 sums checked
    package ‘kableExtra’ successfully unpacked and MD5 sums checked
    
    The downloaded binary packages are in
    C:\Users\Akachukwu\AppData\Local\Temp\Rtmp2jOC5P\downloaded_packages
    > library(tidyverse)
    > library(caret)
    > library(ggplot2)
    > library(pROC)
    Type 'citation("pROC")' for a citation.
    
    Attaching package: ‘pROC’
    
    The following objects are masked from ‘package:stats’:
      
      cov, smooth, var
    
    Warning message:
      package ‘pROC’ was built under R version 4.4.3 
    > library(randomForest)
    randomForest 4.7-1.2
    Type rfNews() to see new features/changes/bug fixes.
    
    Attaching package: ‘randomForest’
    
    The following object is masked from ‘package:dplyr’:
      
      combine
    
    The following object is masked from ‘package:ggplot2’:
      
      margin
    
    Warning message:
      package ‘randomForest’ was built under R version 4.4.3 
    > library(tableone)
    Warning message:
      package ‘tableone’ was built under R version 4.4.3 
    > library(corrplot)
    corrplot 0.95 loaded
    Warning message:
      package ‘corrplot’ was built under R version 4.4.3 
    > library(patchwork)
    Warning message:
      package ‘patchwork’ was built under R version 4.4.3 
    > set.seed(123)
    > diabetes_data <- read.csv("diabetes_binary_5050split_health_indicators_BRFSS2015.csv")
    Error in file(file, "rt") : cannot open the connection
    In addition: Warning message:
      In file(file, "rt") :
      cannot open file 'diabetes_binary_5050split_health_indicators_BRFSS2015.csv': No such file or directory
    > cat("Dataset Dimensions:", dim(diabetes_data), "\n")
    Dataset Dimensions: 253680 22 
    > cat("Variables:", names(diabetes_data), "\n")
    Variables: Diabetes_012 HighBP HighChol CholCheck BMI Smoker Stroke HeartDiseaseorAttack PhysActivity Fruits Veggies HvyAlcoholConsump AnyHealthcare NoDocbcCost GenHlth MentHlth PhysHlth DiffWalk Sex Age Education Income 
    > data_dictionary <- tribble(
      +     ~Variable, ~Description, ~Values, ~Clinical_Importance,
      +     "Diabetes_012", "Diabetes status", "0=No, 1=Prediabetes, 2=Diabetes", "Primary outcome",
      +     "HighBP", "High blood pressure", "0=No, 1=Yes", "Major cardiovascular risk factor",
      +     "HighChol", "High cholesterol", "0=No, 1=Yes", "Cardiovascular risk",
      +     "BMI", "Body Mass Index", "Continuous", "Obesity indicator",
      +     "Smoker", "Smoking status", "0=No, 1=Yes", "Behavioral risk factor",
      +     "HeartDiseaseorAttack", "Heart condition", "0=No, 1=Yes", "Comorbidity",
      +     "PhysActivity", "Physical activity", "0=No, 1=Yes", "Protective factor",
      +     "Age", "Age category", "1-13 scale", "Non-modifiable risk",
      +     "GenHlth", "General health", "1-5 scale (Excellent-Poor)", "Health perception"
      + )
    > 
      > print(data_dictionary)
    # A tibble: 9 × 4
    Variable             Description         Values          Clinical_Importance
    <chr>                <chr>               <chr>           <chr>              
      1 Diabetes_012         Diabetes status     0=No, 1=Predia… Primary outcome    
    2 HighBP               High blood pressure 0=No, 1=Yes     Major cardiovascul…
    3 HighChol             High cholesterol    0=No, 1=Yes     Cardiovascular risk
    4 BMI                  Body Mass Index     Continuous      Obesity indicator  
    5 Smoker               Smoking status      0=No, 1=Yes     Behavioral risk fa…
    6 HeartDiseaseorAttack Heart condition     0=No, 1=Yes     Comorbidity        
    7 PhysActivity         Physical activity   0=No, 1=Yes     Protective factor  
    8 Age                  Age category        1-13 scale      Non-modifiable risk
    9 GenHlth              General health      1-5 scale (Exc… Health perception  
                                                          > diabetes_distribution <- diabetes_data %>%
                                                            +     count(Diabetes_012) %>%
                                                            +     mutate(percentage = n / sum(n) * 100,
                                                                         +            label = case_when(
                                                                           +                Diabetes_012 == 0 ~ "No Diabetes",
                                                                           +                Diabetes_012 == 1 ~ "Prediabetes", 
                                                                           +                Diabetes_012 == 2 ~ "Diabetes"
                                                                           +            ))
                                                          > 
                                                            > print("Diabetes Status Distribution:")
                                                          [1] "Diabetes Status Distribution:"
                                                          > print(diabetes_distribution)
                                                          Diabetes_012      n percentage       label
                                                          1            0 213703  84.241170 No Diabetes
                                                          2            1   4631   1.825528 Prediabetes
                                                          3            2  35346  13.933302    Diabetes
                                                          > p_target <- ggplot(diabetes_data, aes(x = factor(Diabetes_012, 
                                                                                                             +                                                  labels = c("No Diabetes", "Prediabetes", "Diabetes")))) +
                                                            +     geom_bar(fill = c("#2E8B57", "#FFA500", "#DC143C"), alpha = 0.8, width = 0.7) +
                                                            +     geom_text(stat = 'count', aes(label = scales::comma(..count..)), vjust = -0.5, size = 3.5) +
                                                            +     labs(title = "Diabetes Status Distribution in Study Population",
                                                                       +          subtitle = "CDC BRFSS 2015 Dataset (N=253,680)",
                                                                       +          x = "Diabetes Status",
                                                                       +          y = "Number of Individuals",
                                                                       +          caption = "Source: Behavioral Risk Factor Surveillance System") +
                                                            +     theme_minimal() +
                                                            +     theme(plot.title = element_text(face = "bold", size = 14),
                                                                        +           plot.subtitle = element_text(color = "gray40"))
                                                          > 
                                                            > print(p_target)
                                                          Warning message:
                                                            The dot-dot notation (`..count..`) was deprecated in ggplot2 3.4.0.
                                                          ℹ Please use `after_stat(count)` instead.
                                                          This warning is displayed once every 8 hours.
                                                          Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
                                                          generated. 
                                                          > clinical_vars <- c("HighBP", "HighChol", "BMI", "Smoker", "Stroke", 
                                                                               +                    "HeartDiseaseorAttack", "PhysActivity", "Sex", "Age", "GenHlth")
                                                          > diabetes_data <- diabetes_data %>%
                                                            +     mutate(Diabetes_Status = factor(Diabetes_012, 
                                                                                                  +                                     levels = c(0, 1, 2),
                                                                                                  +                                     labels = c("No Diabetes", "Prediabetes", "Diabetes")))
                                                          > table_one <- CreateTableOne(vars = clinical_vars, 
                                                                                        +                             strata = "Diabetes_Status", 
                                                                                        +                             data = diabetes_data,
                                                                                        +                             addOverall = TRUE)
                                                          > print(table_one, smd = TRUE, formatOptions = list(big.mark = ","))
                                                          Stratified by Diabetes_Status
                                                          Overall        No Diabetes    Prediabetes 
                                                          n                                253,680        213,703        4,631       
                                                          HighBP (mean (SD))                  0.43 (0.49)    0.37 (0.48)  0.63 (0.48)
                                                          HighChol (mean (SD))                0.42 (0.49)    0.38 (0.49)  0.62 (0.49)
                                                          BMI (mean (SD))                    28.38 (6.61)   27.74 (6.26) 30.72 (6.96)
                                                          Smoker (mean (SD))                  0.44 (0.50)    0.43 (0.50)  0.49 (0.50)
                                                          Stroke (mean (SD))                  0.04 (0.20)    0.03 (0.18)  0.06 (0.23)
                                                          HeartDiseaseorAttack (mean (SD))    0.09 (0.29)    0.07 (0.26)  0.14 (0.35)
                                                          PhysActivity (mean (SD))            0.76 (0.43)    0.78 (0.41)  0.68 (0.47)
                                                          Sex (mean (SD))                     0.44 (0.50)    0.43 (0.50)  0.44 (0.50)
                                                          Age (mean (SD))                     8.03 (3.05)    7.79 (3.10)  9.08 (2.63)
                                                          GenHlth (mean (SD))                 2.51 (1.07)    2.37 (1.02)  2.98 (1.03)
                                                          Stratified by Diabetes_Status
                                                          Diabetes      p      test SMD   
                                                          n                                35,346                          
                                                          HighBP (mean (SD))                 0.75 (0.43) <0.001       0.546
                                                          HighChol (mean (SD))               0.67 (0.47) <0.001       0.403
                                                          BMI (mean (SD))                   31.94 (7.36) <0.001       0.412
                                                          Smoker (mean (SD))                 0.52 (0.50) <0.001       0.119
                                                          Stroke (mean (SD))                 0.09 (0.29) <0.001       0.171
                                                          HeartDiseaseorAttack (mean (SD))   0.22 (0.42) <0.001       0.292
                                                          PhysActivity (mean (SD))           0.63 (0.48) <0.001       0.220
                                                          Sex (mean (SD))                    0.48 (0.50) <0.001       0.060
                                                          Age (mean (SD))                    9.38 (2.33) <0.001       0.383
                                                          GenHlth (mean (SD))                3.29 (1.01) <0.001       0.601
                                                          > table_one_df <- print(table_one, printToggle = FALSE)
                                                          > risk_factor_analysis <- diabetes_data %>%
                                                            +     group_by(Diabetes_Status) %>%
                                                            +     summarise(
                                                              +         n = n(),
                                                              +         HighBP_Prev = mean(HighBP) * 100,
                                                              +         HighChol_Prev = mean(HighChol) * 100,
                                                              +         Smoker_Prev = mean(Smoker) * 100,
                                                              +         HeartDisease_Prev = mean(HeartDiseaseorAttack) * 100,
                                                              +         PhysActive_Prev = mean(PhysActivity) * 100,
                                                              +         Avg_BMI = mean(BMI),
                                                              +         Avg_Age = mean(Age)
                                                              +     ) %>%
                                                            +     mutate(across(where(is.numeric), round, 2))
                                                          Warning message:
                                                            There was 1 warning in `mutate()`.
                                                          ℹ In argument: `across(where(is.numeric), round, 2)`.
                                                          Caused by warning:
                                                            ! The `...` argument of `across()` is deprecated as of dplyr 1.1.0.
                                                          Supply arguments directly to `.fns` through an anonymous function instead.
                                                          
                                                          # Previously
                                                          across(a:b, mean, na.rm = TRUE)
                                                          
                                                          # Now
                                                          across(a:b, \(x) mean(x, na.rm = TRUE))
                                                          This warning is displayed once every 8 hours.
                                                          Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
                                                          generated. 
                                                          > 
                                                            > print("Risk Factor Prevalence by Diabetes Status:")
                                                          [1] "Risk Factor Prevalence by Diabetes Status:"
                                                          > print(risk_factor_analysis)
                                                          # A tibble: 3 × 9
                                                          Diabetes_Status      n HighBP_Prev HighChol_Prev Smoker_Prev
                                                          <fct>            <dbl>       <dbl>         <dbl>       <dbl>
                                                            1 No Diabetes     213703        37.1          37.9        43.0
                                                          2 Prediabetes       4631        62.9          62.1        49.3
                                                          3 Diabetes         35346        75.3          67.0        51.8
                                                          # ℹ 4 more variables: HeartDisease_Prev <dbl>, PhysActive_Prev <dbl>,
                                                          #   Avg_BMI <dbl>, Avg_Age <dbl>
                                                          > p_risk_factors <- risk_factor_analysis %>%
                                                            +     select(Diabetes_Status, HighBP_Prev, HighChol_Prev, Smoker_Prev, HeartDisease_Prev) %>%
                                                            +     pivot_longer(cols = -Diabetes_Status, names_to = "Risk_Factor", values_to = "Prevalence") %>%
                                                            +     mutate(Risk_Factor = str_remove(Risk_Factor, "_Prev")) %>%
                                                            +     ggplot(aes(x = Diabetes_Status, y = Prevalence, fill = Risk_Factor)) +
                                                            +     geom_col(position = "dodge", alpha = 0.8) +
                                                            +     scale_fill_brewer(palette = "Set2") +
                                                            +     labs(title = "Risk Factor Prevalence by Diabetes Status",
                                                                       +          x = "Diabetes Status", 
                                                                       +          y = "Prevalence (%)",
                                                                       +          fill = "Risk Factor") +
                                                            +     theme_minimal() +
                                                            +     theme(axis.text.x = element_text(angle = 45, hjust = 1))
                                                          > 
                                                            > print(p_risk_factors)
                                                          > p_bmi <- ggplot(diabetes_data, aes(x = Diabetes_Status, y = BMI, fill = Diabetes_Status)) +
                                                            +     geom_violin(alpha = 0.7) +
                                                            +     geom_boxplot(width = 0.2, alpha = 0.8) +
                                                            +     geom_hline(yintercept = 25, linetype = "dashed", color = "darkgreen", size = 1) +
                                                            +     geom_hline(yintercept = 30, linetype = "dashed", color = "red", size = 1) +
                                                            +     scale_fill_manual(values = c("#2E8B57", "#FFA500", "#DC143C")) +
                                                            +     labs(title = "BMI Distribution by Diabetes Status",
                                                                       +          subtitle = "Clinical Cutoffs: Overweight (25), Obese (30)",
                                                                       +          x = "Diabetes Status",
                                                                       +          y = "Body Mass Index (BMI)") +
                                                            +     theme_minimal() +
                                                            +     theme(legend.position = "none")
                                                          Warning message:
                                                            Using `size` aesthetic for lines was deprecated in ggplot2 3.4.0.
                                                          ℹ Please use `linewidth` instead.
                                                          This warning is displayed once every 8 hours.
                                                          Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
                                                          generated. 
                                                          > 
                                                            > print(p_bmi)
                                                          > bmi_stats <- diabetes_data %>%
                                                            +     group_by(Diabetes_Status) %>%
                                                            +     summarise(
                                                              +         Mean_BMI = mean(BMI),
                                                              +         Median_BMI = median(BMI),
                                                              +         SD_BMI = sd(BMI),
                                                              +         Obese_Percent = mean(BMI >= 30) * 100,
                                                              +         Overweight_Percent = mean(BMI >= 25) * 100
                                                              +     )
                                                          > 
                                                            > print("BMI Statistics by Diabetes Status:")
                                                          [1] "BMI Statistics by Diabetes Status:"
                                                          > print(bmi_stats)
                                                          # A tibble: 3 × 6
                                                          Diabetes_Status Mean_BMI Median_BMI SD_BMI Obese_Percent Overweight_Percent
                                                          <fct>              <dbl>      <dbl>  <dbl>         <dbl>              <dbl>
                                                            1 No Diabetes         27.7         27   6.26          30.4               68.5
                                                          2 Prediabetes         30.7         30   6.96          51.6               84.5
                                                          3 Diabetes            31.9         31   7.36          58.2               88.4
                                                          > numeric_vars <- diabetes_data %>%
                                                            +     select(where(is.numeric)) %>%
                                                            +     select(-Diabetes_012)
                                                          > correlation_matrix <- cor(numeric_vars, use = "complete.obs")
                                                          > corrplot(correlation_matrix, 
                                                                     +          method = "color",
                                                                     +          type = "upper",
                                                                     +          order = "hclust",
                                                                     +          tl.cex = 0.7,
                                                                     +          tl.col = "black",
                                                                     +          title = "Correlation Matrix of Diabetes Risk Factors",
                                                                     +          mar = c(0, 0, 2, 0))
                                                          > diabetes_correlations <- correlation_matrix["Diabetes_012", ]
                                                          Error in correlation_matrix["Diabetes_012", ] : subscript out of bounds
                                                          > perform_statistical_tests <- function(data) {
                                                            +     
                                                              +     results <- list()
                                                              + continuous_vars <- c("BMI", "Age", "GenHlth")
                                                              + for (var in continuous_vars) {
                                                                + diabetic <- data[data$Diabetes_012 == 2, var]
                                                                + non_diabetic <- data[data$Diabetes_012 == 0, var]
                                                                + 
                                                                  + t_test <- t.test(diabetic, non_diabetic)
                                                                  + 
                                                                    + results[[paste0("t_test_", var)]] <- list(
                                                                      +     variable = var,
                                                                      +     mean_diabetic = mean(diabetic),
                                                                      +     mean_non_diabetic = mean(non_diabetic),
                                                                      +     p_value = t_test$p.value,
                                                                      +     effect_size = cohens_d(diabetic, non_diabetic)
                                                                      + )
                                                                    + }
                                                              + categorical_vars <- c("HighBP", "HighChol", "Smoker", "HeartDiseaseorAttack")
                                                              + for (var in categorical_vars) {
                                                                +     contingency_table <- table(data[[var]], data$Diabetes_012)
                                                                +     chi_test <- chisq.test(contingency_table)
                                                                +     
                                                                  +     results[[paste0("chi_test_", var)]] <- list(
                                                                    +         variable = var,
                                                                    +         p_value = chi_test$p.value,
                                                                    +         statistic = chi_test$statistic
                                                                    +     )
                                                                  + }
                                                              + 
                                                                + return(results)
                                                              + }
                                                          > 
                                                            > statistical_results <- perform_statistical_tests(diabetes_data)
                                                          Error in cohens_d(diabetic, non_diabetic) : 
                                                            could not find function "cohens_d"
                                                          > cat("STATISTICALLY SIGNIFICANT FINDINGS:\n")
                                                          STATISTICALLY SIGNIFICANT FINDINGS:
                                                            > for (test_name in names(statistical_results)) {
                                                              +     result <- statistical_results[[test_name]]
                                                              +     if (result$p_value < 0.05) {
                                                                +         cat(sprintf("%s: p-value = %.6f\n", test_name, result$p_value))
                                                                +     }
                                                              + }
                                                          Error: object 'statistical_results' not found
                                                          > perform_statistical_tests <- function(data) {
                                                            +     
                                                              +     results <- list()
                                                              + continuous_vars <- c("BMI", "Age", "GenHlth")
                                                              + for (var in continuous_vars)
                                                                + diabetic <- data[data$Diabetes_012 == 2, var]
                                                                + non_diabetic <- data[data$Diabetes_012 == 0, var]
                                                                + 
                                                                  + t_test <- t.test(diabetic, non_diabetic)
                                                                  + 
                                                                    + results[[paste0("t_test_", var)]] <- list(
                                                                      +     variable = var,
                                                                      +     mean_diabetic = mean(diabetic),
                                                                      +     mean_non_diabetic = mean(non_diabetic),
                                                                      +     p_value = t_test$p.value,
                                                                      +     effect_size = cohens_d(diabetic, non_diabetic)
                                                                      + )
                                                                    + categorical_vars <- c("HighBP", "HighChol", "Smoker", "HeartDiseaseorAttack")
                                                                    + for (var in categorical_vars) {
                                                                      +     contingency_table <- table(data[[var]], data$Diabetes_012)
                                                                      +     chi_test <- chisq.test(contingency_table)
                                                                      +     
                                                                        +     results[[paste0("chi_test_", var)]] <- list(
                                                                          +         variable = var,
                                                                          +         p_value = chi_test$p.value,
                                                                          +         statistic = chi_test$statistic
                                                                          +     )
                                                                        + return(results)
                                                                        + statistical_results <- perform_statistical_tests(diabetes_data)
                                                                        + cat("STATISTICALLY SIGNIFICANT FINDINGS:\n")
                                                                        + for (test_name in names(statistical_results)) {
                                                                          +     result <- statistical_results[[test_name]]
                                                                          +     if (result$p_value < 0.05) {
                                                                            +         cat(sprintf("%s: p-value = %.6f\n", test_name, result$p_value))
                                                                            +     }
                                                                          + }
                                                                        + > names(diabetes_data)
                                                                        Error: unexpected '>' in:
                                                                          "}
>"
                                                                        > > names(diabetes_data)
                                                                        Error: unexpected '>' in ">"
                                                                        > > names(diabetes_data)
                                                                        Error: unexpected '>' in ">"
                                                                        > modeling_data <- diabetes_data %>%
                                                                          +     filter(Diabetes_012 %in% c(0, 2)) %>%  # Remove prediabetes for binary classification
                                                                          +     mutate(Diabetes_Binary = as.factor(ifelse(Diabetes_012 == 2, 1, 0))) %>%
                                                                          +     select(-Diabetes_012, -Diabetes_Status)
                                                                        > cat("Class distribution for binary classification:\n")
                                                                        Class distribution for binary classification:
                                                                          > table(modeling_data$Diabetes_Binary)
                                                                        
                                                                        0      1 
                                                                        213703  35346 
                                                                        > set.seed(123)
                                                                        > train_index <- createDataPartition(modeling_data$Diabetes_Binary, p = 0.8, list = FALSE)
                                                                        > train_data <- modeling_data[train_index, ]
                                                                        > test_data <- modeling_data[-train_index, ]
                                                                        > 
                                                                          > cat("Training set size:", nrow(train_data), "\n")
                                                                        Training set size: 199240 
                                                                        > cat("Testing set size:", nrow(test_data), "\n")
                                                                        Testing set size: 49809 
                                                                        > train_control <- trainControl(
                                                                          +     method = "cv",
                                                                          +     number = 5,
                                                                          +     classProbs = TRUE,
                                                                          +     summaryFunction = twoClassSummary,
                                                                          +     savePredictions = TRUE
                                                                          + )
                                                                        > rf_model <- train(
                                                                          +     Diabetes_Binary ~ .,
                                                                          +     data = train_data,
                                                                          +     method = "rf",
                                                                          +     trControl = train_control,
                                                                          +     metric = "ROC",
                                                                          +     tuneLength = 3,
                                                                          +     ntree = 100
                                                                          + )
                                                                        Error: At least one of the class levels is not a valid R variable name; This will cause errors when class probabilities are generated because the variables names will be converted to  X0, X1 . Please use factor levels that can be used as valid R variable names  (see ?make.names for help).
                                                                        > lr_model <- train(
                                                                          +     Diabetes_Binary ~ .,
                                                                          +     data = train_data,
                                                                          +     method = "glm",
                                                                          +     family = "binomial",
                                                                          +     trControl = train_control,
                                                                          +     metric = "ROC"
                                                                          + )
                                                                        Error: At least one of the class levels is not a valid R variable name; This will cause errors when class probabilities are generated because the variables names will be converted to  X0, X1 . Please use factor levels that can be used as valid R variable names  (see ?make.names for help).
                                                                        > models_compare <- resamples(list(
                                                                          +     RandomForest = rf_model,
                                                                          +     LogisticRegression = lr_model
                                                                          + ))
                                                                        Error: object 'rf_model' not found
                                                                        > rf_predictions <- predict(rf_model, test_data, type = "prob")
                                                                        Error: object 'rf_model' not found
                                                                        > rf_roc <- roc(test_data$Diabetes_Binary, rf_predictions[, "1"])
                                                                        Error: object 'rf_predictions' not found
                                                                        > plot(rf_roc, col = "blue", main = "ROC Curves - Diabetes Prediction Models")
                                                                        Error: object 'rf_roc' not found
                                                                        > rf_cm <- confusionMatrix(predict(rf_model, test_data), test_data$Diabetes_Binary)
                                                                        Error: object 'rf_model' not found
                                                                        > feature_importance <- varImp(rf_model)$importance
                                                                        Error: object 'rf_model' not found
                                                                        > modeling_data <- diabetes_data %>%
                                                                          +     filter(Diabetes_012 %in% c(0, 2)) %>%
                                                                          +     mutate(Diabetes_Binary = as.factor(ifelse(Diabetes_012 == 2, 1, 0))) %>%
                                                                          +     select(-Diabetes_012, -Diabetes_Status)
                                                                        > set.seed(123)
                                                                        > sample_index <- sample(1:nrow(modeling_data), 10000)  # Use only 10,000 rows for testing
                                                                        > modeling_data_sample <- modeling_data[sample_index, ]
                                                                        > train_index <- createDataPartition(modeling_data_sample$Diabetes_Binary, p = 0.8, list = FALSE)
                                                                        > train_data <- modeling_data_sample[train_index, ]
                                                                        > test_data <- modeling_data_sample[-train_index, ]
                                                                        > 
                                                                          > cat("Using sample data for faster testing:\n")
                                                                        Using sample data for faster testing:
                                                                          > cat("Training set:", nrow(train_data), "Testing set:", nrow(test_data), "\n")
                                                                        Training set: 8000 Testing set: 2000 
                                                                        > print("Training Logistic Regression Model...")
                                                                        [1] "Training Logistic Regression Model..."
                                                                        > lr_model <- train(
                                                                          +     Diabetes_Binary ~ HighBP + HighChol + BMI + Age + HeartDiseaseorAttack,  # Only 5 features for speed
                                                                          +     data = train_data,
                                                                          +     method = "glm",
                                                                          +     family = "binomial",
                                                                          +     trControl = trainControl(method = "cv", number = 3)  # Only 3-fold CV for speed
                                                                          + )
                                                                        > 
                                                                          > print("Logistic Regression Model Trained Successfully!")
                                                                        [1] "Logistic Regression Model Trained Successfully!"
                                                                        > lr_predictions <- predict(lr_model, test_data, type = "prob")
                                                                        > lr_roc <- roc(test_data$Diabetes_Binary, lr_predictions[, "1"])
                                                                        Setting levels: control = 0, case = 1
                                                                        Setting direction: controls < cases
                                                                        > plot(lr_roc, col = "blue", main = "Diabetes Prediction - Logistic Regression")
                                                                        > legend("bottomright", legend = paste("AUC =", round(auc(lr_roc), 3)), col = "blue", lwd = 2)
                                                                        > lr_cm <- confusionMatrix(predict(lr_model, test_data), test_data$Diabetes_Binary)
                                                                        > print("Logistic Regression Performance:")
                                                                        [1] "Logistic Regression Performance:"
                                                                        > print(lr_cm)
                                                                        Confusion Matrix and Statistics
                                                                        
                                                                        Reference
                                                                        Prediction    0    1
                                                                        0 1695  268
                                                                        1   19   18
                                                                        
                                                                        Accuracy : 0.8565          
                                                                        95% CI : (0.8404, 0.8716)
                                                                        No Information Rate : 0.857           
                                                                        P-Value [Acc > NIR] : 0.5412          
                                                                        
                                                                        Kappa : 0.0814          
                                                                        
                                                                        Mcnemar's Test P-Value : <2e-16          
                                          
            Sensitivity : 0.98891         
            Specificity : 0.06294         
         Pos Pred Value : 0.86347         
         Neg Pred Value : 0.48649         
             Prevalence : 0.85700         
         Detection Rate : 0.84750         
   Detection Prevalence : 0.98150         
      Balanced Accuracy : 0.52593         
                                          
       'Positive' Class : 0               
                                          
> print("Training Random Forest Model (this may take a few minutes)...")
[1] "Training Random Forest Model (this may take a few minutes)..."
> rf_model <- train(
+     Diabetes_Binary ~ HighBP + HighChol + BMI + Age + HeartDiseaseorAttack,
+     data = train_data,
+     method = "rf",
+     ntree = 50,  # Smaller for speed
+     trControl = trainControl(method = "cv", number = 3)
+ )
> 
> print("Random Forest Model Trained Successfully!")
[1] "Random Forest Model Trained Successfully!"
> models <- list(
+     logistic = lr_model,
+     random_forest = rf_model
+ )
> if (exists("models")) {
+     cat("Models found! Proceeding with analysis...\n")
+ lr_importance <- varImp(models$logistic)$importance
+ lr_importance$Feature <- rownames(lr_importance)
+ lr_importance <- lr_importance %>% arrange(desc(Overall))
+ 
+ print("Top Diabetes Risk Factors (Logistic Regression):")
+ print(lr_importance)
+ lr_importance <- varImp(models$logistic)$importance
+ lr_importance$Feature <- rownames(lr_importance)
+ lr_importance <- lr_importance %>% arrange(desc(Overall))
+ 
+ print("Top Diabetes Risk Factors (Logistic Regression):")
+ print(lr_importance)
+ 
+ p_importance <- ggplot(lr_importance, aes(x = reorder(Feature, Overall), y = Overall)) +
+     geom_col(fill = "steelblue", alpha = 0.8) +
+     coord_flip() +
+     labs(title = "Diabetes Risk Factors by Importance",
+          subtitle = "Logistic Regression Coefficients",
+          x = "Risk Factor",
+          y = "Importance Score") +
+     theme_minimal()
+ 
+ print(p_importance)
+ risk_profiles <- modeling_data_sample %>%
+     mutate(
+         Risk_Score = HighBP + HighChol + (BMI > 30) + (Age > 8) + HeartDiseaseorAttack,
+         Risk_Category = case_when(
+             Risk_Score >= 4 ~ "Very High Risk",
+             Risk_Score == 3 ~ "High Risk", 
+             Risk_Score == 2 ~ "Moderate Risk",
+             TRUE ~ "Low Risk"
+         )
+     )
+ 
+ risk_analysis <- risk_profiles %>%
+     group_by(Risk_Category) %>%
+     summarise(
+         n = n(),
+         Diabetes_Rate = mean(Diabetes_Binary == "1") * 100,
+         Avg_BMI = mean(BMI),
+         Avg_Age = mean(Age)
+     )
+ 
+ print("Diabetes Prevalence by Risk Category:")
+ print(risk_analysis)
+ 
+ } else {
+     cat("ERROR: No models found. Please run Phase 4 first.\n")
+ }
Models found! Proceeding with analysis...
[1] "Top Diabetes Risk Factors (Logistic Regression):"
                        Overall              Feature
BMI                  100.000000                  BMI
HighBP                68.025520               HighBP
Age                   23.908345                  Age
HeartDiseaseorAttack   4.703481 HeartDiseaseorAttack
HighChol               0.000000             HighChol
[1] "Top Diabetes Risk Factors (Logistic Regression):"
                        Overall              Feature
BMI                  100.000000                  BMI
HighBP                68.025520               HighBP
Age                   23.908345                  Age
HeartDiseaseorAttack   4.703481 HeartDiseaseorAttack
HighChol               0.000000             HighChol
[1] "Diabetes Prevalence by Risk Category:"
# A tibble: 4 × 5
  Risk_Category      n Diabetes_Rate Avg_BMI Avg_Age
  <chr>          <int>         <dbl>   <dbl>   <dbl>
1 High Risk       1872         25.2     30.0    9.83
2 Low Risk        4742          3.54    26.5    6.39
3 Moderate Risk   2376         15.2     29.0    8.83
4 Very High Risk  1010         42.4     33.2   10.4 
> generate_executive_summary <- function(diabetes_data, risk_analysis, lr_importance, lr_roc) {
+     
+     cat("
+ === DIABETES RISK ANALYSIS - EXECUTIVE SUMMARY ===
+       
+ PROJECT OVERVIEW:
+ This analysis identifies key diabetes risk factors using CDC BRFSS 2015 data 
+ to enable targeted preventive healthcare interventions.
+       
+ KEY METRICS:
+ ")
+ total_population <- nrow(diabetes_data)
+ diabetes_rate <- mean(diabetes_data$Diabetes_012 == 2) * 100
+ prediabetes_rate <- mean(diabetes_data$Diabetes_012 == 1) * 100
+ high_risk_diabetes_rate <- risk_analysis$Diabetes_Rate[risk_analysis$Risk_Category == "Very High Risk"]
+ cat("• Sample Size:", format(total_population, big.mark = ","), "individuals\n")
+ cat("• Diabetes Prevalence:", round(diabetes_rate, 1), "%\n")
+ cat("• Prediabetes Prevalence:", round(prediabetes_rate, 1), "%\n")
+ cat("• Model Performance (AUC):", round(auc(lr_roc), 3), "\n")
+ cat("• Very High Risk Group Diabetes Rate:", round(high_risk_diabetes_rate, 1), "%\n\n")
+ 
+ cat("TOP 5 RISK FACTORS IDENTIFIED:\n")
+ top_factors <- head(lr_importance, 5)
+ for(i in 1:nrow(top_factors)) {
+     cat(i, ". ", top_factors$Feature[i], " (Importance: ", round(top_factors$Overall[i], 2), ")\n", sep = "")
+ }
+ cat("\nCLINICAL IMPACT:\n")
+ cat("• Targeting very high-risk individuals could identify", 
+     round(high_risk_diabetes_rate/diabetes_rate, 1), 
+     "times more diabetic patients than random screening\n")
+ cat("• Early intervention could save $5,000-10,000 per patient annually\n")
+ }
> generate_executive_summary(diabetes_data, risk_analysis, lr_importance, lr_roc)

=== DIABETES RISK ANALYSIS - EXECUTIVE SUMMARY ===
      
PROJECT OVERVIEW:
This analysis identifies key diabetes risk factors using CDC BRFSS 2015 data 
to enable targeted preventive healthcare interventions.
      
KEY METRICS:
• Sample Size: 253,680 individuals
• Diabetes Prevalence: 13.9 %
• Prediabetes Prevalence: 1.8 %
• Model Performance (AUC): 0.797 
• Very High Risk Group Diabetes Rate: 42.4 %

TOP 5 RISK FACTORS IDENTIFIED:
1. BMI (Importance: 100)
2. HighBP (Importance: 68.03)
3. Age (Importance: 23.91)
4. HeartDiseaseorAttack (Importance: 4.7)
5. HighChol (Importance: 0)

CLINICAL IMPACT:
• Targeting very high-risk individuals could identify 3 times more diabetic patients than random screening
• Early intervention could save $5,000-10,000 per patient annually
> cat("\nCreating final summary visualization...\n")

Creating final summary visualization...
> summary_table <- data.frame(
+     Metric = c("Total Sample Size", "Diabetes Prevalence", "Prediabetes Prevalence", 
+                "Model AUC Score", "Top Risk Factor", "Very High Risk Diabetes Rate"),
+     Value = c(
+         format(nrow(diabetes_data), big.mark = ","),
+         paste0(round(mean(diabetes_data$Diabetes_012 == 2) * 100, 1), "%"),
+         paste0(round(mean(diabetes_data$Diabetes_012 == 1) * 100, 1), "%"),
+         round(auc(lr_roc), 3),
+         lr_importance$Feature[1],
+         paste0(round(risk_analysis$Diabetes_Rate[risk_analysis$Risk_Category == "Very High Risk"], 1), "%")
+     )
+ )
> 
> print("PROJECT SUMMARY TABLE:")
[1] "PROJECT SUMMARY TABLE:"
> print(summary_table)
                        Metric   Value
1            Total Sample Size 253,680
2          Diabetes Prevalence   13.9%
3       Prediabetes Prevalence    1.8%
4              Model AUC Score   0.797
5              Top Risk Factor     BMI
6 Very High Risk Diabetes Rate   42.4%
> create_portfolio_visualizations <- function(diabetes_data, risk_analysis, lr_importance) {
+ p1 <- ggplot(diabetes_data, aes(x = factor(Diabetes_012, 
+                                            labels = c("No Diabetes\n(75.1%)", 
+                                                       "Prediabetes\n(14.9%)", 
+                                                       "Diabetes\n(10.0%)")))) +
+     geom_bar(fill = c("#2E8B57", "#FFA500", "#DC143C"), alpha = 0.9) +
+     geom_text(stat = 'count', aes(label = scales::comma(..count..)), vjust = -0.5, size = 4) +
+     labs(title = "A. Diabetes Status Distribution",
+          x = "", y = "Number of Individuals") +
+     theme_minimal() +
+     theme(plot.title = element_text(face = "bold", size = 12))
+ p2 <- ggplot(head(lr_importance, 8), aes(x = reorder(Feature, Overall), y = Overall)) +
+     geom_col(fill = "steelblue", alpha = 0.8) +
+     coord_flip() +
+     labs(title = "B. Top Diabetes Risk Factors",
+          x = "", y = "Importance Score") +
+     theme_minimal() +
+     theme(plot.title = element_text(face = "bold", size = 12))
+ p3 <- ggplot(risk_analysis, aes(x = Risk_Category, y = Diabetes_Rate, fill = Risk_Category)) +
+     geom_col(alpha = 0.8) +
+     geom_text(aes(label = paste0(round(Diabetes_Rate, 1), "%")), vjust = -0.5, size = 4) +
+     scale_fill_brewer(palette = "Reds") +
+     labs(title = "C. Diabetes Rate by Risk Category",
+          x = "", y = "Diabetes Rate (%)") +
+     theme_minimal() +
+     theme(legend.position = "none",
+           plot.title = element_text(face = "bold", size = 12))
+ combined_plot <- p1 + p2 + p3 + 
+     plot_layout(ncol = 1) +
+     plot_annotation(
+         title = 'Diabetes Risk Factor Analysis - Key Insights',
+         subtitle = 'Comprehensive analysis of CDC BRFSS 2015 data',
+         caption = 'Source: Behavioral Risk Factor Surveillance System | Analysis for Healthcare Portfolio',
+         theme = theme(plot.title = element_text(size = 16, face = "bold"))
+     )
+ 
+ print(combined_plot)
+ ggsave("diabetes_analysis_portfolio.png", combined_plot, width = 12, height = 14, dpi = 300)
+ cat("✓ Portfolio visualization saved as 'diabetes_analysis_portfolio.png'\n")
+ }
> create_portfolio_visualizations(diabetes_data, risk_analysis, lr_importance)
✓ Portfolio visualization saved as 'diabetes_analysis_portfolio.png'
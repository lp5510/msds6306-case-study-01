# msds6306-case-study-01
MSDS 6306 Jan-Apr 2018 - Case Study 01

## Contributors
- Luke Pierce <lepierce@smu.edu>
- Andrew Walch <awalch@smu.edu>
- Lokesh Maganti <lmaganti@smu.edu>
- MJKelleher <mikek@smu.edu>

## Files
    - Project Directories, Documentation, Source Code, Data
        - <Project Root>/
            - MSDS_6306_Sect_402_Case_Study_01.Rmd
                - The main RMarkdown file.  Use this file to knit the report.
            - MSDS_6306_Sect_402_Case_Study_01.html
                - This is the knitted report.
            - README.md
                - The file you are looking at right now.
            - Solution.R
                - This is the same R code to produce the results, minus all of the RMarkdown.
            - Writeup_CaseStudy1_LEP_v1.txt
                - TODO: define what this is
            - Tidy_Recipe.R
                - If you want to just build the tidy dataset, run this file.
            - Case_Study_code_file_v1
                - TODO: define what this is, move it to archive, or delete it.
            - resources.txt
                - TODO: define what this is, move it to archive, or delete it.
            - CaseStudy1.pdf
                - TODO: define what this is, move it to archive, or delete it.
        - archive/
            - Exactly what is says.
        - code/
            - Re-usable chunks of code used in both the main project Rmd file, the Solution.R file and Tidy_Recipe.R.
            - 00_Setup.R
                - This sets the R environment up for the all of the analyses to be run.
            - 00_LoadAndPrepare.R
                - Loads the data, and prepares it for analysis.
            - 01_Question_01.R
                - Performs the operations to answer the first question.
            - 01_Question_01.tidy.R
                - Performs the oprations to create the tidy dataset needed for Question 1, and all other questions.
            - 02_Question_02.R
                - Performs the operations to answer the second question.
            - 02_Question_02.tidy.R
                - Performs the oprations to create the tidy dataset needed for Question 2, and all other questions.
            - 03_Question_03.R
                - Performs the operations to answer the third question.
            - 03_Question_03.tidy.R
                - Performs the oprations to create the tidy dataset needed for Question 3, and all other questions.
            - 04_Question_04.R
                - Performs the operations to answer the fourth question.
            - 05_Question_05.R
                - Performs the operations to answer the fifth question.
            - 06_Question_06.R
                - Performs the operations to answer the sixth question.
            - 07_Question_07.R
                - Performs the operations to answer the seventh question.
        - rmd/
            - Files in this directory are included into the main file when the document is knitted together.  They are here mainly for organizational purposes.
            - Answers.Rmd
                - Human readable, textual answers in prose form.  These are the formal answers the the posed questions.
            - Codebook.Rmd
                - The codebook, defining the uncleaned data, as well as the tidy data.
            - Introduction.Rmd
                - Project introduction.
        - data/
            - Breweries.csv
            - Beers.csv

## Directories not managed by Git
    - data/tidy/  :  This is where the tidy dataset are stored when they are created by running the Analysis.  This is transient storage.
    - tmp/        :  Transient storage for graphics and other intermediary files.
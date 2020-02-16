library(pewdata)
# Note: The Pew Research Center requires a bit of personal information
# from those wishing to download data. Before running pew_download, then,
# you should be sure to add these options to your .Rprofile substituting
# your own info for the example below:
# 
# options("pew_name" = "Juanita Herrera",
#         "pew_org" = "Upper Midwest University", 
#         "pew_phone" = "888-000-0000", 
#         "pew_email" = "jherrera@uppermidwest.edu")
#
# Note too that the pewdata package depends on a Firefox installation.

# Two Pew files could not be read into R in their original formats and so
# were converted to Stata .dta files and included in the reproducibility materials. [Confirm still true?]

pew_download(file_id = c(20034641, # 2011 Political Typology Survey
                         20018321, # Dec2005
                         "december-2011-political-survey", # Dec2011 Political
                         20018361, # Immigration06
                         20018540, # Sept-10-Political-Independents
                         20018554, # typo00
                         20018557), # Typology05
             download_dir = "data/merit/version_a")

pew_download(file_id = "middle-class-ii", # August 2012 Middle Class
             area = "socialtrends",
             download_dir = "data/merit/version_a")

pew_download(file_id = "u-s-religious-landscape-survey",
             area = "religion",
             download_dir = "data/merit/version_a")

pew_download(file_id = c(20049871, 20018559, 20018560), # Values 2007, Values 2009, 1987-2012 Values Merge
             download_dir = "data/merit/version_b")

pew_download(file_id = 5704, # Jan 2008 Middle Class Survey
             area = "socialtrends",
             download_dir = "data/merit/version_b") 


# Use dataverse package to get the Newman 2016 reproducibility file
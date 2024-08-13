# Load the package
library(surveydown)

# Run initial setup function (essential - do not delete)
sd_setup()

# Setting your surveydown password ----

# You will want to set a password for your surveydown project, which
# will be used for your database password on supabase as well as your
# admin page for the survey. To set it, run:

# surveydown::sd_set_password("your_password")

# Do NOT hard-code your password in this file! Just run that command
# once and your password will be securely stored in a .Renviron file
# in your project directory.


# Deploying your survey ----

# To deploy your survey to shinyapps.io, run:
# rsconnect::deployDoc(
#   doc = "your_survey.qmd",
#   appName = "Your Survey Name"
# )
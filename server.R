function(input, output, session) {

  # database configuration (using supabase) ----

  # surveydown stores data on a database that you define at
  # https://supabase.com/
  # To connect to a database to store the survey data, update this with details
  # from your supabase account and database. See documentation for details.

  # db <- sd_database(
  #   host       = "",
  #   db_name    = "",
  #   port       = "",
  #   user       = "",
  #   table_name = ""
  # )

  # If you don't have a database setup you can just leave the function blank.
  # When testing without a database connected, a data.csv file will be
  # written to the project directory so you can preview the response data.

  db <- sd_database()

  # Survey configuration ----

  # Use the sd_config() function to customize features in your survey, like
  # logic to conditionally display questions or skip to pages based on
  # responses to skip other questions in your survey. See documentation for
  # details. For this simple survey, we'll just leave this function blank.

  config <- sd_config()

  # The sd_server function initiates your survey - don't change this!

  sd_server(
    input   = input,
    output  = output,
    session = session,
    config  = config,
    db      = db
  )

}

name "pgsql"
description "Creates postgresql db"

run_list "apt", "postgresql"

# postgres admin user = 'postgres'

override_attributes(
  :postgresql => {
    :password => {
      :postgres => "postgres123"
    }
  }
)
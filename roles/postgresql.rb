name "pgsql"
description "Creates postgresql db"

run_list "apt", "postgresql", "postgresql::server", "phppgadmin"

# postgres admin user = 'postgres'

override_attributes(
  :postgresql => {
    :version => "9.1",
    :listen_addresses => "*",
    :hba => [
      {:method => "trust", :address => "0.0.0.0/0"},
      {:method => "trust", :address => "::1/0"},
    ],
    :password => {
      :postgres => "postgres123"
    }
  }
)
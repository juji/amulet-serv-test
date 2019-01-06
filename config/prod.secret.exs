use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :phoenixapp, PhoenixappWeb.Endpoint,
  secret_key_base: "xNwQ/4MSOiZSCT0SSVQcE8E49by9LtLscaHYoLMWlRum1+SBZcWUS6ATMnG2ajCs"

# Configure your database
config :phoenixapp, Phoenixapp.Repo,

  username: System.get_env("DB_USER"),
  password: System.get_env("DB_PASSWORD"),
  database: System.get_env("DB_NAME"),
  hostname: System.get_env("DB_HOST"),
  pool_size: 15

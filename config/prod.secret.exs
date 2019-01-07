
config :phoenixapp, Phoenixapp.Endpoint,
  secret_key_base: "MUJ4r0EHKHteNSsyTCFjXQOE0JG/7ap25FmNHsdCHjeJip2DA2YNnt4DiLNTy5XH"

config :phoenixapp, Phoenixapp.Repo,
  username: System.get_env("DB_USERNAME"),
  password: System.get_env("DB_PASSWORD"),
  database: System.get_env("DB_NAME"),
  hostname: System.get_env("DB_HOST"),
  port: System.get_env("DB_PORT"),
  pool_size: 10

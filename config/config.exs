# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rainbow,
  ecto_repos: [Rainbow.Repo]

# Configures the endpoint
config :rainbow, Rainbow.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7lha+g29Gq4/ucxTH59oBZVXYiuIWODLGwkMmx1tllqqXx7v/8UmCZL7YSob0WMO",
  render_errors: [view: Rainbow.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: Rainbow.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

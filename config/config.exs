# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cosmos,
  ecto_repos: [Cosmos.Repo]

# Configures the endpoint
config :cosmos, CosmosWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bbh6rix9PFp95GlUyeaOyOgCBYSC+pJCvDM2Wx9lD0SLmEbrxS/KZq2K+brVcFPU",
  render_errors: [view: CosmosWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Cosmos.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

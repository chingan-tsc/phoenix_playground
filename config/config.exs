# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :playground, PlaygroundWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+Ht9nkEFOG1U4jwyBc8L5DW8PEhgzYlnEoOSVo43yvF/Um1UL6pXJ+sMkW39z4gz",
  render_errors: [view: PlaygroundWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Playground.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

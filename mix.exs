defmodule PhoenixChannelClient.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_channel_client,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:websocket_client, github: "jeremyong/websocket_client"},
      {:phoenix, github: "phoenixframework/phoenix", only: :test},
      {:poison, "~> 1.3", only: :test},
      {:cowboy, "~> 1.0", only: :test}
    ]
  end
end

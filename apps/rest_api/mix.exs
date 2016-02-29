defmodule RestApi.Mixfile do
  use Mix.Project

  def project do
    [app: :rest_api,
     version: "0.0.1",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.2.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :mariaex, :ecto, :cowboy, :plug], mod: {RestApi, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:cowboy, "~> 1.0.4"},
      {:plug, "~> 1.0.3"},
      {:mochiweb, "~> 2.12.2", [override: true]},
      {:mochiweb_xpath, github: "retnuh/mochiweb_xpath", tag: "v1.2.0"},
      {:ecto, "~> 1.1.1"},
      {:mariaex, "~> 0.6.1"},
      {:poison, "~> 1.5.0"},
      {:joken, github: "bryanjos/joken", tag: "v1.0.0"},
      {:exrm, "~> 1.0.0-rc7"}
    ]
  end
end

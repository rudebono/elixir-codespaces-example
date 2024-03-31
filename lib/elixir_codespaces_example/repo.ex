defmodule ElixirCodespacesExample.Repo do
  use Ecto.Repo,
    otp_app: :elixir_codespaces_example,
    adapter: Ecto.Adapters.Postgres
end

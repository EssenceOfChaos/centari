defmodule Centari.Repo do
  use Ecto.Repo,
    otp_app: :centari,
    adapter: Ecto.Adapters.Postgres
end

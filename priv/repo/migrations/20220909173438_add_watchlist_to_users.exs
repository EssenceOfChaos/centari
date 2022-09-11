defmodule Centari.Repo.Migrations.AddWatchlistToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :watchlist, {:array, :string}
    end
  end
end

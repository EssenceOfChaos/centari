defmodule CentariWeb.UserWatchlistController do
  use CentariWeb, :controller

  alias Centari.Accounts
  # alias CentariWeb.UserAuth
  require Logger
  plug :assign_watchlist_changeset

  def show(conn, _params) do
    user = conn.assigns.current_user
    render(conn, "edit.html", current_user: user)
  end

  def update(conn, %{"action" => "update_watchlist"} = params) do
    Logger.debug(params)
    %{"user" => watchlist} = params
    # %{"watchlist" => watchlist} = params
    user = conn.assigns.current_user

    case Accounts.update_user_watchlist(user, watchlist) do
      {:ok, watchlist} ->
        conn
        |> put_flash(
          :info,
          "great success!"
        )
        |> redirect(to: Routes.user_watchlist_path(conn, :show))

      {:error, changeset} ->
        render(conn, "edit.html", watchlist_changeset: changeset)
    end
  end

  defp assign_watchlist_changeset(conn, _opts) do
    user = conn.assigns.current_user

    conn
    |> assign(:watchlist_changeset, Accounts.change_user_watchlist(user))
  end

  # %{
  #   "_csrf_token" => "dwlENxw1BUYXPHsrFzkaHD0pOEwyORkT6LrmQTG2CHKJHKwPnAL5esMA",
  #   "_method" => "put",
  #   "action" => "update_watchlist",
  #   "user" => %{"watchlist" => ["TMUS", "MSFT", "FDX"]}
  # }
end

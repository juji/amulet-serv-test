
defmodule PhoenixappWeb.PageController do
  use PhoenixappWeb, :controller
  alias Phoenixapp.{Repo, Item}

  def index(conn, _params) do
    items = Repo.all(Item)
    render(conn, "index.html", %{ 
      items: items,
      token: get_csrf_token(),
      env: System.get_env()
    })
  end

  def create(conn, %{"name" => name}) do
    Repo.insert(%Item{ name: name })
    redirect(conn, to: "/")
  end
end

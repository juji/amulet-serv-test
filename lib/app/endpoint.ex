defmodule App.Endpoint do
  use Plug.Router
  
  plug(:match)
  plug(:dispatch)

  match _ do
    send_resp(conn, 200, "Hello world from elixir")
  end

  def child_spec(opts) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, [opts]}
    }
  end

  def start_link(_opts) do
    Plug.Adapters.Cowboy2.http(__MODULE__, [])
  end
end
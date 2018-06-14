defmodule CosmosWeb.PageController do
  use CosmosWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

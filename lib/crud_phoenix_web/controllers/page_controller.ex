defmodule CrudPhoenixWeb.PageController do
  use CrudPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

defmodule RummagePhoenixExampleWeb.PageController do
  use RummagePhoenixExampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

defmodule Rainbow.Web.PageController do
  use Rainbow.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

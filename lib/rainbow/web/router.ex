defmodule Rainbow.Web.Router do
  use Rainbow.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Rainbow.Web do
    pipe_through :api
  end
end

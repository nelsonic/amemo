defmodule AmemoWeb.Router do
  use AmemoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {AmemoWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", AmemoWeb do
    pipe_through :browser

    live("/", Editor)
  end
end

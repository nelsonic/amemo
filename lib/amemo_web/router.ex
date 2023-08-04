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

  # Ref: https://github.com/dwyl/learn-phoenix-framework/issues/155
  # plug Plug.Static,
  #   at: "/",
  #   from: :amemo,
  #   gzip: false,
  #   only: ["mix.lock"]
  #   from: {:my_app, "mix.lock"},

  scope "/", AmemoWeb do
    pipe_through :browser

    live("/", Editor)
  end
end

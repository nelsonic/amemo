defmodule Amemo.Repo do
  use Ecto.Repo,
    otp_app: :amemo,
    adapter: Ecto.Adapters.Postgres
end

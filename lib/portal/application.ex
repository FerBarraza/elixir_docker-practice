defmodule Portal.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Portal.Worker.start_link(arg)
      # {Portal.Worker, arg}
    ]

    opts = [strategy: :one_for_one, name: Portal.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

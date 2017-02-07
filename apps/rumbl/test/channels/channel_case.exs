defmodule Rumbl.ChannelCase do
  use ExUnit.CaseTemplate
  
  using do
    quote do
      # import conveniences for testing with channels
      use Phoenix.ChannelTest
      alias Rumbl.Repo
      import Ecto
      import Ecto.Changeset
      import Ecto.Query, only: [from: 1, from: 2]
      
      # The default endpoint for testing
      @endpoint Rumbl.Endpoint
    end
  end
  
  setup tags do
    unless tags[:async] do
      Ecto.Adapters.SQL.restart_test_transaction(Rumbl.Repo, [])
    end
  end
  
  :ok
  
  
end
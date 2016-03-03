defmodule RelationalAdapter.App do
    use Application

    def start(_type, _args) do
        import Supervisor.Spec
        tree = [worker(RelationalAdapter.Repo, [])]
        opts = [name: RelationalAdapter.Sup, strategy: :one_for_one]
        Supervisor.start_link(tree, opts)
    end
end
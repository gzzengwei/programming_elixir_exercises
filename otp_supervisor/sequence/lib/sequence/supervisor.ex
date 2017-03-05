defmodule Sequence.Supervisor do
  use Supervisor

  def start_link(init_number) do
    result = { :ok, sup } = Supervisor.start_link(__MODULE__, [init_number])
    start_workers(sup, init_number)
    result
  end

  def start_workers(sup, init_number) do
    { :ok, stash } = Supervisor.start_child(sup, worker(Sequence.Stash, [init_number]))
    Supervisor.start_child(sup, supervisor(Sequence.SubSupervisor, [stash]))
  end

  def init(_) do
    supervise [], strategy: :one_for_one
  end
end

defmodule Taskmaster.Task do
  use Taskmaster.Web, :model

  schema "tasks" do
    field :name, :string

    timestamps
  end

  @required_fields ~w(name)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end

  def motivation do
    sayings = [
      "Just do it!",
      "Fucking get that shit done, bro.",
      "Cleanliness is next to godliness.",
      "It could be worse. You could be dead.",
      "If these tasks don't scare you, they aren't big enough.",
      "GET ERRRRR DOOONNNNEEEE.",
      "Ugh.",
      "I think I can I think I can I think I can."
    ]
    Enum.random(sayings)
  end
end

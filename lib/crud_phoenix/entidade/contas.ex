defmodule CrudPhoenix.Entidade.Contas do
  use Ecto.Schema
  import Ecto.Changeset

  schema "contas" do
    field :numero, :string
    field :saldo, :integer
    field :usuário, :string

    timestamps()
  end

  @doc false
  def changeset(contas, attrs) do
    contas
    |> cast(attrs, [:numero, :usuário, :saldo])
    |> validate_required([:numero, :usuário, :saldo])
  end
end

defmodule CrudPhoenix.Repo.Migrations.CreateContas do
  use Ecto.Migration

  def change do
    create table(:contas) do
      add :numero, :string
      add :usuário, :string
      add :saldo, :integer

      timestamps()
    end
  end
end

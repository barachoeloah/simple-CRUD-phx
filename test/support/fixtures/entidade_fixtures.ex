defmodule CrudPhoenix.EntidadeFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CrudPhoenix.Entidade` context.
  """

  @doc """
  Generate a contas.
  """
  def contas_fixture(attrs \\ %{}) do
    {:ok, contas} =
      attrs
      |> Enum.into(%{
        numero: "some numero",
        saldo: 42,
        usuário: "some usuário"
      })
      |> CrudPhoenix.Entidade.create_contas()

    contas
  end
end

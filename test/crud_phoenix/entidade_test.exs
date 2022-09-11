defmodule CrudPhoenix.EntidadeTest do
  use CrudPhoenix.DataCase

  alias CrudPhoenix.Entidade

  describe "contas" do
    alias CrudPhoenix.Entidade.Contas

    import CrudPhoenix.EntidadeFixtures

    @invalid_attrs %{numero: nil, saldo: nil, usuário: nil}

    test "list_contas/0 returns all contas" do
      contas = contas_fixture()
      assert Entidade.list_contas() == [contas]
    end

    test "get_contas!/1 returns the contas with given id" do
      contas = contas_fixture()
      assert Entidade.get_contas!(contas.id) == contas
    end

    test "create_contas/1 with valid data creates a contas" do
      valid_attrs = %{numero: "some numero", saldo: 42, usuário: "some usuário"}

      assert {:ok, %Contas{} = contas} = Entidade.create_contas(valid_attrs)
      assert contas.numero == "some numero"
      assert contas.saldo == 42
      assert contas.usuário == "some usuário"
    end

    test "create_contas/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Entidade.create_contas(@invalid_attrs)
    end

    test "update_contas/2 with valid data updates the contas" do
      contas = contas_fixture()
      update_attrs = %{numero: "some updated numero", saldo: 43, usuário: "some updated usuário"}

      assert {:ok, %Contas{} = contas} = Entidade.update_contas(contas, update_attrs)
      assert contas.numero == "some updated numero"
      assert contas.saldo == 43
      assert contas.usuário == "some updated usuário"
    end

    test "update_contas/2 with invalid data returns error changeset" do
      contas = contas_fixture()
      assert {:error, %Ecto.Changeset{}} = Entidade.update_contas(contas, @invalid_attrs)
      assert contas == Entidade.get_contas!(contas.id)
    end

    test "delete_contas/1 deletes the contas" do
      contas = contas_fixture()
      assert {:ok, %Contas{}} = Entidade.delete_contas(contas)
      assert_raise Ecto.NoResultsError, fn -> Entidade.get_contas!(contas.id) end
    end

    test "change_contas/1 returns a contas changeset" do
      contas = contas_fixture()
      assert %Ecto.Changeset{} = Entidade.change_contas(contas)
    end
  end
end

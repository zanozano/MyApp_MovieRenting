class AddEmailAndTelefonoToClientes < ActiveRecord::Migration[7.0]
  def change
    add_column :clientes, :email, :string
    add_column :clientes, :telefono, :string
  end
end

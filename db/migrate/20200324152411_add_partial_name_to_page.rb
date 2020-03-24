class AddPartialNameToPage < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :partial_name, :string
  end
end

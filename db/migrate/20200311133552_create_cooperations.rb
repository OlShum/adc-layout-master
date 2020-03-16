class CreateCooperations < ActiveRecord::Migration[6.0]
  def change
    create_table :cooperations do |t|
      t.string :company
      t.string :email

      t.timestamps
    end
  end
end

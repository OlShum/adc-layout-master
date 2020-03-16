class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :type
      t.string :head
      t.string :lead
      t.string :tag
      t.string :author
      t.string :cover
      t.string :description

      t.timestamps
    end
  end
end

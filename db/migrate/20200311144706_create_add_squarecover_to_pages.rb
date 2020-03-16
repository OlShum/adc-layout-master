class CreateAddSquarecoverToPages < ActiveRecord::Migration[6.0]
  def change
    create_table :add_squarecover_to_pages do |t|
      t.string :squarecover

      t.timestamps
    end
  end
end

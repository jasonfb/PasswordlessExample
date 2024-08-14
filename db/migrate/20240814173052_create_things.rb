class CreateThings < ActiveRecord::Migration[7.1]
  def change
    create_table :things do |t|
      t.string :name
      t.string :color_hex

      t.timestamps
    end
  end
end

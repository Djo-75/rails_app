class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.decimal :price
      t.string :name
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end

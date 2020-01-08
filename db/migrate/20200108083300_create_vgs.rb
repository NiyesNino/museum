class CreateVgs < ActiveRecord::Migration[5.2]
  def change
    create_table :vgs do |t|
      t.string :titre
      t.string :dev
      t.integer :annee
      t.string :note
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end

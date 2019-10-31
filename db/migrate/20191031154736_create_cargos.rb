class CreateCargos < ActiveRecord::Migration[6.0]
  def change
    create_table :cargos do |t|
      t.references :personal, null: false, foreign_key: true
      t.string :cargo
      t.date :desde
      t.date :hasta
      t.string :curso
      t.boolean :activo

      t.timestamps
    end
  end
end

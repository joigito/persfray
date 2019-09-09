class CreatePersonals < ActiveRecord::Migration[6.0]
  def change
    create_table :personals do |t|
      t.string :documento
      t.string :apeynom
      t.date :fecnac
      t.date :fecing
      t.string :domic
      t.boolean :activo

      t.timestamps
    end
  end
end

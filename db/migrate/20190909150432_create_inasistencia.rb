class CreateInasistencia < ActiveRecord::Migration[6.0]
  def change
    create_table :inasistencia do |t|
      t.references :personal, null: false, foreign_key: true
      t.date :fechadesde
      t.date :fechahasta
      t.string :causa
      t.boolean :aviso

      t.timestamps
    end
  end
end

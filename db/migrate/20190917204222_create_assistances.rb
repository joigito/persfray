class CreateAssistances < ActiveRecord::Migration[6.0]
  def change
    create_table :assistances do |t|
      t.references :personal, null: false, foreign_key: true
      t.date :fecha_desde
      t.date :fecha_hasta
      t.string :movito
      t.boolean :con_aviso
      t.boolean :justificado

      t.timestamps
    end
  end
end

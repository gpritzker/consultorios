class CreateHistoriaClinicas < ActiveRecord::Migration
  def change
    create_table :historia_clinicas do |t|
      t.integer :profesional_id
      t.integer :practica_id
      t.integer :especialidad_id
      t.integer :paciente_id

      t.timestamps null: false
    end
  end
end

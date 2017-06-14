class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.integer :dni
      t.string :email
      t.string :telefono
      t.string :cobertura

      t.timestamps null: false
    end
  end
end

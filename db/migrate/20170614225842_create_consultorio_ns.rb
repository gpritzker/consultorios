class CreateConsultorioNs < ActiveRecord::Migration
  def change
    create_table :consultorio_ns do |t|
      t.integer :numero
      t.string :tel

      t.timestamps null: false
    end
  end
end

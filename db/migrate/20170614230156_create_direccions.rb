class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.string :calle
      t.string :localidad
      t.integer :nro
      t.integer :piso
      t.string :entreCalles
      t.integer :manzana
      t.integer :lote

      t.timestamps null: false
    end
  end
end

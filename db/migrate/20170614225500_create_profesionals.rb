class CreateProfesionals < ActiveRecord::Migration
  def change
    create_table :profesionals do |t|
      t.string :nombre
      t.integer :dni
      t.string :email
      t.string :telefono

      t.timestamps null: false
    end
  end
end

class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.text :cuerpo
      t.integer :numero_visitas
    end
  end
end

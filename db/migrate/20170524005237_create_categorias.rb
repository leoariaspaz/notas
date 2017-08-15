class CreateCategorias < ActiveRecord::Migration[5.0]
  def change
    create_table :categorias do |t|
      t.string :descripcion
      t.boolean :habilitado

      t.timestamps
    end
    add_index :categorias, :descripcion, unique: true
  end
end

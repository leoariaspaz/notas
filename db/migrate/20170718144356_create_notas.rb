class CreateNotas < ActiveRecord::Migration[5.0]
  def change
    create_table :notas do |t|
      t.string :titulo
      t.text :cuerpo
      t.references :categoria, foreign_key: true

      t.timestamps
    end
  end
end

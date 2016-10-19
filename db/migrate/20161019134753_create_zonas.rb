class CreateZonas < ActiveRecord::Migration
  def change
    create_table :zonas do |t|
      t.string :cidade
      t.string :estado
      t.integer :representante_id

      t.timestamps null: false
    end
    add_foreign_key :zonas, :representantes
  end
end

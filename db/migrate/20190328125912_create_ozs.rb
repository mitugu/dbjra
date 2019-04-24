class CreateOzs < ActiveRecord::Migration[5.1]
  def change
    create_table :ozs do |t|
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :a4
      t.string :a5
      t.string :a6
      t.string :a7
      t.string :a8
      t.string :a9
      t.string :a10

      t.timestamps
    end
  end
end

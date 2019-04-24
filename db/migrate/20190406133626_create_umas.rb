class CreateUmas < ActiveRecord::Migration[5.1]
  def change
    create_table :umas do |t|
      t.string :name
      t.string :kisyu
      t.string :tyoukyousi
      t.string :zensou1
      t.string :zensou2

      t.timestamps
    end
  end
end

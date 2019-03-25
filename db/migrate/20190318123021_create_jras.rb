class CreateJras < ActiveRecord::Migration[5.1]
  def change
    create_table :jras do |t|
      t.string :code
      t.string :year
      t.string :the_time
      t.string :day
      t.string :race
      t.string :race_day
      t.string :race_time
      t.string :distance
      t.string :baba
      t.string :turn
      t.string :track
      t.string :condition
      t.string :class
      t.string :race_condraceition
      t.string :weight
      t.string :grade

      t.timestamps
    end
  end
end

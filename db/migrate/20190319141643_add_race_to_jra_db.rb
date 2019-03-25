class AddRaceToJraDb < ActiveRecord::Migration[5.1]
  def change
    add_column :jra_dbs, :race_name, :string
    add_column :jra_dbs, :race_the_time, :string
    add_column :jra_dbs, :number, :string
    add_column :jra_dbs, :course, :string
    add_column :jra_dbs, :direction, :string
    add_column :jra_dbs, :race_name_9, :string
    add_column :jra_dbs, :race_name_short, :string
    add_column :jra_dbs, :registration, :string
    add_column :jra_dbs, :prize_1, :string
    add_column :jra_dbs, :prize_2, :string
    add_column :jra_dbs, :prize_3, :string
    add_column :jra_dbs, :prize_4, :string
    add_column :jra_dbs, :prize_5, :string
    add_column :jra_dbs, :addition_1, :string
    add_column :jra_dbs, :addition_2, :string
    add_column :jra_dbs, :betting, :string
    add_column :jra_dbs, :win5, :string
  end
end

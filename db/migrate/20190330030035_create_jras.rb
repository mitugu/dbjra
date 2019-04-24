class CreateJras < ActiveRecord::Migration[5.1]
  def change
    create_table :jras do |t|

      t.timestamps
    end
  end
end

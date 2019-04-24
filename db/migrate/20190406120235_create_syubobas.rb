class CreateSyubobas < ActiveRecord::Migration[5.1]
  def change
    create_table :syubobas do |t|
      t.string :titi
      t.string :haha
      t.string :hahatiti

      t.timestamps
    end
  end
end

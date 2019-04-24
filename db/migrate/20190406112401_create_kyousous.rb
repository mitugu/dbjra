class CreateKyousous < ActiveRecord::Migration[5.1]
  def change
    create_table :kyousous do |t|
      t.string :titi
      t.string :haha
      t.string :hahatiti
      t.string :seibetu

      t.timestamps
    end
  end
end

class CreatePeopleTable < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.string :house_id
      i.timestamps
    end
  end
end

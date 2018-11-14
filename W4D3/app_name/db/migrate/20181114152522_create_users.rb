class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.stringrails :session_token
      t.migrate :db

      t.timestamps
    end
  end
end

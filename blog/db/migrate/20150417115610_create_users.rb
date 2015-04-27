class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :password
      t.string :email
      t.text :bio
      t.boolean :programa
      t.date :birthday
      t.time :work_time

      t.timestamps
    end
  end
end

class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :ssn
      t.integer :salary
      t.string :bundle
      t.string :exec
      t.string :rake
      t.migrate :db

      t.timestamps null: false
    end
  end
end

class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title,          null: false
      t.text :description,      null: false
      t.datetime :start_date,   null: false
      t.datetime :end_date,     null: false

      t.timestamps              null: false
    end
  end
end

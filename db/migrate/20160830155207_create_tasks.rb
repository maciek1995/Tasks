class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title,         null: false
      t.text :description,     null: false
      t.datetime :start_at,    null: false
      t.datetime :end_at
      t.boolean :done,         null: false, default: false

      t.timestamps
    end
  end
end

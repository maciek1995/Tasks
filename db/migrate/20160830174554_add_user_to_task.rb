class AddUserToTask < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :user, foreign_key: true, index: true
  end
end

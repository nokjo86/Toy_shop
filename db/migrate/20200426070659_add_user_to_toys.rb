class AddUserToToys < ActiveRecord::Migration[6.0]
  def change
    add_reference :toys, :user, null: false, foreign_key: true
  end
end

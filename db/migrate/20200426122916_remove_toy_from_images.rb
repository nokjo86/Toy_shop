class RemoveToyFromImages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :images, :toy, null: false, foreign_key: true
  end
end

class UpdateReferencesFromImages < ActiveRecord::Migration[6.0]
  def change
    change_column :images,  :imageable_type, :string, null: false
    change_column :images,  :imageable_id, :bigint, null: false

  end
end

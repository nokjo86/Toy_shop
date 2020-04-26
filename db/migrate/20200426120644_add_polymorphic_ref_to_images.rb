class AddPolymorphicRefToImages < ActiveRecord::Migration[6.0]
  def change
    add_reference :images, :imageable, polymorphic: true, null: true
  end
end

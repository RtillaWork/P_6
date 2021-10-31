class RemoveNameFromActivity < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :name, :string
  end
end

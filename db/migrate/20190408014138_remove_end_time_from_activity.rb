class RemoveEndTimeFromActivity < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :end_time, :datetime
  end
end

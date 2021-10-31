class ChangeDurationToIntegerInActivity < ActiveRecord::Migration[5.2]
  def change
  	def up
  	change_column :activities, :duration, :integer
  	change_column_default :activities, :duration, null
  	end

  	def down
  	change_column :activities, :duration, :time
  	change_column_default :activities, :duration, null
  	end

  end
end

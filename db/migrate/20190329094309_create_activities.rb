class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.integer :duration, null: true
      t.references :user, foreign_key: true
      t.references :activity_type, foreign_key: true

      t.timestamps
    end
  end
end

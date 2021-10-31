class CreateActivityTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_types do |t|
      t.string :name
      t.string :fa_icon
      t.string :alt_icon
      t.string :category
      t.string :intensity

      t.timestamps
    end
  end
end

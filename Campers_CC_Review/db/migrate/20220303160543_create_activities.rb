class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.integer :difficulty
      t.string :name

      t.timestamps
    end
  end
end

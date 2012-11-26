class CreatePostmicros < ActiveRecord::Migration
  def change
    create_table :postmicros do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end

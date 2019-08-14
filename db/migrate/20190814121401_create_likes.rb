class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.string :title

      t.timestamps
    end
  end
end

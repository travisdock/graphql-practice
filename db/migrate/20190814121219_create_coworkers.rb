class CreateCoworkers < ActiveRecord::Migration[6.0]
  def change
    create_table :coworkers do |t|
      t.string :name
      t.string :email
      t.string :lunch_time

      t.timestamps
    end
  end
end

class CreateJoinTableCoworkersDislikes < ActiveRecord::Migration[6.0]
  def change
    create_table :coworkers_dislikes, id: false do |t|
      t.belongs_to :coworker, index: true
      t.belongs_to :dislike, index: true
    end
  end
end

class CreateJoinTableCoworkersLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :coworkers_likes, id: false do |t|
      t.belongs_to :coworker, index: true
      t.belongs_to :like, index: true
    end
  end
end

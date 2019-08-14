class Coworker < ApplicationRecord
    has_and_belongs_to_many :likes
    has_and_belongs_to_many :dislikes
    has_many :friendships
    has_many :friends, :through => :friendships
end

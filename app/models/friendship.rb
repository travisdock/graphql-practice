class Friendship < ApplicationRecord
    belongs_to :coworker
    belongs_to :friend, :class_name => 'Coworker'
end

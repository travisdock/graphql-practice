class Like < ApplicationRecord
    has_and_belongs_to_many :coworkers
end

module Types
    class DislikeType < Types::BaseObject
        field :id, ID, null: false
        field :title, String, null: false
    end
end
module Types
    class CoworkerType < Types::BaseObject
        field :id, ID, null: false
        field :name, String, null: false
        field :email, String, null: false
        field :lunch_time, String, null: false
        field :friends, [Types::CoworkerType], null: true
        field :likes, [Types::LikeType], null: true
        field :dislikes, [Types::DislikeType], null: true
    end
end
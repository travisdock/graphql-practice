module Types
    class CoworkerType < Types::BaseObject
        field :id, ID, null: false
        field :name, String, null: false
        field :email, String, null: false
        field :lunch_time, String, null: false
        field :friends, [Types::CoworkerType], null: true
        field :likes, [String], null: true
        field :dislikes, [String], null: true

        def likes
            likes = []
            object.likes.each { |like| likes << like.title }
            likes
        end

        def dislikes
            dislikes = []
            object.dislikes.each { |dislike| dislikes << dislike.title }
            dislikes
        end
    end
end
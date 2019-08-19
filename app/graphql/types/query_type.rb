module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :coworkers,
      [Types::CoworkerType], 
      null: false,
      description: "Returns a list of coworkers and their friends"
    
      def coworkers
        Coworker.all
      end
  end
end

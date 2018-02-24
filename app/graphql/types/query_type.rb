Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :allMovies do
    type types[Types::MovieType]
    description "A list of all the movies"
    argument :limit, types.Int
    
    resolve -> (obj, args, ctx) {
      Movie.limit(args[:limit])
    }
  end

  field :movie do
    type Types::MovieType
    description "Return a movie"
    argument :id, !types.ID
    resolve -> (obj, args, ctx) { Movie.find(args[:id]) }
  end
end

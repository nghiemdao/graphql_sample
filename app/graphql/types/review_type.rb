Types::ReviewType = GraphQL::ObjectType.define do
  name "Review"

  field :id, types.ID
  field :content, types.String
end

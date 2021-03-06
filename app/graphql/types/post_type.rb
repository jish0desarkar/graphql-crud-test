module Types
  class PostType < Types::BaseObject
    description "a blog post"
    field :id, ID, null: false
    field :title, String, null: true
    field :body, String, null: true
    field :user_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :title, String, null: true
    field :body, String, null: true
  end
end

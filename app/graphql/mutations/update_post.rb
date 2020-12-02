module Mutations
  class UpdatePost < Mutations::BaseMutation
    field :post, Types::PostType, null: false

    argument :id, ID, required: true    
    argument :attributes, Types::PostAttributes, required: true

    def resolve(id:, attributes:)
      post = Post.find(id)
      if post.update(attributes.to_h)
        { post: post }
      else
        raise GraphQL::ExecutionError, post.errors.full_messages.join(", ")
      end
    end
  end
end

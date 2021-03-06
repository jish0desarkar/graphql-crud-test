module Types
  class QueryType < Types::BaseObject
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end


    field :posts, [PostType], null: true
    def posts
      Post.all
    end

    field :users, [UserType], null: true
    def users
      User.all
    end
  

  end

end

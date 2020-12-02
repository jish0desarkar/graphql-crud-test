module Mutations
  # inherit Mutations::BaseMutation
  class CreateUser < Mutations::BaseMutation
    # Define what type of value to be returned
    field :user, Types::UserType, null: false

    # Define what argument this mutation accepts
    argument :name, String, required: true

    def resolve(name:)
      # we will use current_user in future
      user = User.new(name: name)
      # Here returns post field, which is defined above.
      if user.save
        {
          user: user,
          errors: [],
        }
      else
        # Failed save, return the errors to the client
        {
          user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end
end
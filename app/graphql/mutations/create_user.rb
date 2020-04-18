class Mutations::CreateUser < Mutations::BaseMutation

    argument :name, String, required: true
    argument :phone, Integer, required: false
    argument :age, Integer, required: false
    argument :gender, String, required: false
    argument :bio, String, required: false
    argument :address, String, required: false
    argument :education, String, required: false
    argument :cnic, Integer, required: false
    argument :location, String, required: false
    argument :email, String, required: true 
    argument :password, String, required: true

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(name:, phone:, age:, gender:, bio:, address:, education:, cnic:, location:, email:, password:)
      user = User.new(name: name, age: age, gender: gender, bio: bio, address: address, education: education, cnic: cnic, location: location, email: email, password: password)
          if user.save
        {
             user: user,
             errors: []
        }
      else
        {
            user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end
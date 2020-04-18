module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :phone, Integer, null: true
    field :age, Integer, null: true
    field :gender, String, null: true
    field :bio, String, null: true
    field :address, String, null: true
    field :education, String, null: true
    field :cnic, Integer, null: true
    field :location, String, null: true
    field :email, String, null: false
    field :posts, [Types::PostType], null: true
    field :posts_count, Integer, null: true

    def posts_count
      object.posts.size
    end
  end
end

class Mutations::CreatePost < Mutations::BaseMutation
  
    #argument :post_type, String, required: false    
    argument :title, String, required: true
    argument :description, String, required: true
    #argument :media_url, String, required: false
    #argument :media_type, String, required: false
    #argument :event_id, Integer, required: false

    field :post, Types::PostType, null: false
    field :errors, [String], null: false
  
        
  
    def resolve(title:, description:)
        post = Post.create(title: title, description: description, user: User.first)
        if post.save
            {
                 post: post,
                 errors: []
            }
          else
            {
                post: nil,
                errors: post.errors.full_messages
            }
          end
    end
end

  
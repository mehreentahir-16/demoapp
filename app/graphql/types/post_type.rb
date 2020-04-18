module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :post_type, String, null: true
    field :title, String, null: true
    field :description, String, null: true
    field :media_url, String, null: true
    field :media_type, String, null: true
    field :event_id, Integer, null: true
  end
end
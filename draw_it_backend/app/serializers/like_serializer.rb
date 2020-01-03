class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :drawing_id

  def self.all
    Like.all.map{|d| LikeSerializer.new(d)}
end
end

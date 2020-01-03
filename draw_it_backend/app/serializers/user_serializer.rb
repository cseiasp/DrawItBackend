class UserSerializer < ActiveModel::Serializer
    attributes :id, :username
    has_many :likes

    def self.all
        User.all.map{|d| UserSerializer.new(d)}
    end
end
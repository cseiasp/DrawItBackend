class UserSerializer < ActiveModel::Serializer
    attributes :id, :username
    # has_many :drawings

    # def self.all
    #     User.all.map{|d| UserSerializer.new(d)}
    # end
end
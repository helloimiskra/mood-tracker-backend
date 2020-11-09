class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password, :id, :moods 
  has_many :moods
end

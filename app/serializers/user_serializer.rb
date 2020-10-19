class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password, :id 
  has_many :moods
end

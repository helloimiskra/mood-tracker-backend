class User < ApplicationRecord
    has_many :moods
    validates :username, presence: true
    
end

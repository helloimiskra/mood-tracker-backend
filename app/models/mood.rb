class Mood < ApplicationRecord
    belongs_to :user
    validates :mood_type, presence: true
    validates :date, presence: true
end

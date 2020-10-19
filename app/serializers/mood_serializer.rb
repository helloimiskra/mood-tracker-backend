class MoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :mood_type, :notes, :date, :id 
  belongs_to :user
end

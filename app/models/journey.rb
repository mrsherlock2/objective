class Journey < ApplicationRecord
    has_many :subgoals
    belongs_to :user
end

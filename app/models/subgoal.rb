class Subgoal < ApplicationRecord
    belongs_to :journey
    has_many :posts
end

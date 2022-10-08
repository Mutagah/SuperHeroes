class Power < ApplicationRecord
    has_many :hero_powers
    has_many :heros, through: :hero_powers
    validates :description, presence: true ,length: {minimum: 20}
    # validates :name, absence: true
end

# gives the wielder super-human strengths
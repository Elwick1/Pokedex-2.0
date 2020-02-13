class Trainer < ApplicationRecord
    has_many :teams

    validates :name, uniqueness: true
    validates :name, presence: true
    validates :name, length: { maximum: 25 }

    validates :age, numericality: { greater_than: 10 }

    validates :password, length: {minimum: 6 }
    validates :password, presence: true

end

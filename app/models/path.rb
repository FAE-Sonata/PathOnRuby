class Path < ApplicationRecord
    validates :origin, presence: true
    validates :destination, presence: true
    validates :intermediate, length: {maximum: 4}
end

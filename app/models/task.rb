class Task < ApplicationRecord
    belongs_to :user

    validates :title, presence: true, length: { maximum: 100 }
    validates :description, presence: true, length: { maximum: 500 }
    validates :completed, inclusion: { in: [true, false] }
end

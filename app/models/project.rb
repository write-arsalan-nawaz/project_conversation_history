class Project < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :name, presence: true
end

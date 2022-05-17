class Myform < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 8 }
end

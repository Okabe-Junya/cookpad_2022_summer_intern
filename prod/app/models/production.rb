class Production < ApplicationRecord
    validates :name, :category, presence: true

end

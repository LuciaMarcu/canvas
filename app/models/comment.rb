class Comment < ApplicationRecord
    belongs_to :print
    belongs_to :user
end

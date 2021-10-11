class Print < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    mount_uploader :user_print, UserPrintUploader
end

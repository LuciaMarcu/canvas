class Print < ApplicationRecord
    belongs_to :user
    mount_uploader :user_print, UserPrintUploader
end

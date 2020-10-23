class PrivateMessage < ApplicationRecord
  has_many :LierPrivateMessageUsers
  belongs_to :sender, class_name: "User"
  has_many :receivers, foreign_key: 'sent_message_id',through: :LierPrivateMessageUser, class_name: "User"

end

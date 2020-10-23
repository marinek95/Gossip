class User < ApplicationRecord
  belongs_to :city

  has_many :LierPrivateMessageUsers
  has_many :sent_messages, foreign_key: 'sender_id',class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'receiver_id',through: :LierPrivateMessage,class_name: "LierPrivateMessageUser"

end

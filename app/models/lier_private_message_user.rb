class LierPrivateMessageUser < ApplicationRecord
  belongs_to :receiver, class_name: "User"
  belongs_to :sent_message, class_name: "PrivateMessage"
  belongs_to :received_message, class_name: "PrivateMessage"

end

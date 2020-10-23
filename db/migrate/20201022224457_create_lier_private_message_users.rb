class CreateLierPrivateMessageUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :lier_private_message_users do |t|
      t.references :receiver, index: true
      t.references :sent_message, index: true
      t.references :received_message, index: true
    end
    add_reference :private_messages, :sender, index: true
  end
end

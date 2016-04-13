class AddAttachmentPictureFileNameToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :picture_file_name
    end
  end

  def self.down
    remove_attachment :users, :picture_file_name
  end
end

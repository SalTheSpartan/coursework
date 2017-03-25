class User < ApplicationRecord
  has_many :pictures
  has_many :comments
  has_and_belongs_to_many :liked , class_name: "Picture"
  has_and_belongs_to_many :followers,
                         :class_name => "User",
                         :join_table => "followers",
                         :foreign_key => "user_id",
                         :association_foreign_key => "follower_id"

has_and_belongs_to_many :following,
                         :class_name => "User",
                         :join_table => "followers",
                         :foreign_key => "follower_id",
                         :association_foreign_key => "user_id"


has_many :comments

# Avatar uploader using carrierwave
mount_uploader :avatar, AvatarUploader
end

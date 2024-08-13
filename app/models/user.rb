# == Schema Information
#
# Table name: users
#
#  id                 :bigint           not null, primary key
#  biography          :text
#  current_occupation :text
#  first_name         :text
#  goals              :text
#  industry           :text
#  interests          :text
#  last_name          :text
#  linkedin_profile   :string
#  location           :text
#  mentee             :boolean
#  mentor             :boolean
#  username           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class User < ApplicationRecord

  has_many(:posts, class_name: "Post", foreign_key: "user_id", dependent: :destroy)

  has_many(:comments, class_name: "Comment", foreign_key: "user_id", dependent: :destroy)

  has_many(:comment_likes, class_name: "CommentLike", foreign_key: "user_id", dependent: :destroy)
  
  has_many(:post_likes, class_name: "PostLike", foreign_key: "user_id", dependent: :destroy)

end

# == Schema Information
#
# Table name: comment_likes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  comment_id :integer
#  user_id    :integer
#
class CommentLike < ApplicationRecord
  belongs_to(:user, required: true, class_name: "User", foreign_key: "user_id")
  
  belongs_to(:comment, required: true, class_name: "Comment", foreign_key: "comment_id")
end

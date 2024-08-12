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
end

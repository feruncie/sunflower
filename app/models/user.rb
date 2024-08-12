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
end

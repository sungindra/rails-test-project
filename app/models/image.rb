# == Schema Information
#
# Table name: images
#
#  id         :bigint(8)        not null, primary key
#  filename   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ApplicationRecord
  mount_uploader :filename, ImagesUploader
end

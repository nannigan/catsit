class Photo < ActiveRecord::Base
	belongs_to :cat
	mount_uploader :picfile, KittypicUploader
end

class Post < ActiveRecord::Base
	mount_uploader :image, DocumentUploader
end

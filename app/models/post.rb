class Post < ActiveRecord::Base
	mount_uploader :image, DocumentUploader

	# LW
	# ACCESS_KEY_ID = 'AKIAICESD4THNTLACUXA'
	# SECRET_ACCESS_KEY = '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'

	# OWN
	ACCESS_KEY_ID = 'AKIAI4KNS32OYWXXZLTA'
	SECRET_ACCESS_KEY = '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'

	def self.a
		@storage ||= Fog::Storage.new({
			:provider => 'AWS',
			:aws_access_key_id => ACCESS_KEY_ID,
			:aws_secret_access_key => SECRET_ACCESS_KEY
			# :region => 'us-west-2'
			})
	end
end

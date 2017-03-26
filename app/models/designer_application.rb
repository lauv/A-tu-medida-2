class DesignerApplication < ApplicationRecord
	enum status: [ :sent, :accepted, :rejected ]
	after_initialize :init

	def init
		self.status ||= :sent           #will set the default value only if it's nil
	end
end

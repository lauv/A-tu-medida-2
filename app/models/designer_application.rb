class DesignerApplication < ApplicationRecord
	after_save :acceptedreject
	enum status: [ :sent, :accepted, :rejected ]
	after_initialize :init
	
	def init
		self.status ||= :sent           #will set the default value only if it's nil
	end

	def acceptedreject
		puts status.inspect
		if status == "accepted"
			user = User.create!(name: name, email: email, role: :designer, password: "123456", password_confirmation:"123456", rut: rut, phone: '666666666', birthday: birthday, address: address, commune_id: 1)
			membership = Membership.find_by(name: "Normal")
			UserMembership.create!(start_date: Time.now, user_id: user.id, membership_id: membership.id)
			UserMailer.welcome_email_designer(self).deliver_now()
		elsif status == "rejected"
			UserMailer.rejected_email_designer(self).deliver_now()
		end
	end
end
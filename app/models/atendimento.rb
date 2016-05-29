class Atendimento < ActiveRecord::Base
	belongs_to :user
	belongs_to :adm

	def completed?
		!completed_at.blank?
	end
end

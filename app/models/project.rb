class Project < ApplicationRecord
	self.table_name= "projects"
	has_many :time_entries
	validates :name, presence: true,  uniqueness: true,  length: { in: 1..30 }, format: { with: /[a-zA-Z ]+/}
# plus sign is the previous characters one or more times                                                  ^
#also when designating the letters that u wnat you just need to put them, like the space as well        ^
	def self.clean_old
		#find projects older than a week
		old_projects= Project.where(("created_at < ?"),1.week.ago)
		old_projects.destroy_all

		#destroy them
	end
end

class Project < ActiveRecord::Base
    has_many :time_entries
    validates :name, presence: true

    def self.clean_old
        old_projects = Project.where("created_at < ?", DateTime.current - 1.week)

        old_projects.destroy_all
    end
end
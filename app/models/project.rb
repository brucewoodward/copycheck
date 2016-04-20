class Project < ActiveRecord::Base
  has_many :copies

  def self.copy_details_for(project_key)
    key = Project.where(key: project_key).select(:key).limit(1).first.key
    Copy.where(project_key: key).order('date desc').all
  end

end

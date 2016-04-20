class Project < ActiveRecord::Base
  has_many :copies

  def self.copy_details_for(project_key)
    if Project.where(key: project_key).select(:key).limit(1).first
      Copy.where(project_key: project_key).order('date desc').all
    end
  end

end

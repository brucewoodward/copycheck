class Project < ActiveRecord::Base
  has_many :copies

  scope :key_to_id, -> (key) { where(key: key).select(:id).first }

  def self.copy_details_for(project_key)
    key = Project.where(key: project_key).select(:key).first.key
    Copy.where(project_key: key).order('date desc').all
  end

end

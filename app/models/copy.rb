class Copy < ActiveRecord::Base

  belongs_to :projects

  attr_accessor :diffoutput

  # TODO validations for copy model.

  def self.make(params)
    copy = new
    copy.date = Time.now
    copy.text = params.fetch(:copy)
    copy.name = params.fetch(:name)
    copy.project_key = params.fetch(:project_id)
    copy.save!
    copy.project_key
  end

end

class Task < ActiveRecord::Base
  validates :description, :presence => true

  def self.list_done
    Task.where(:done => true)
  end

  def self.list_not_done
    Task.where(:done => false)
  end
end

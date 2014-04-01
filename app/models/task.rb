class Task < ActiveRecord::Base
  validates :description, :presence => true

  def self.list_done
    Task.where(:done => true)
  end

  def self.list_not_done
    Task.where(:done => false)
  end

  def mark_done
    # @list_done = Task.list_done
    # @list_not_done = Task.list_not_done
    # @task = Task.find(params[:id])
    self.update(:done => true)
    render('tasks/index.html.erb')
  end
end

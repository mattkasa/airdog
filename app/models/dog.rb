class Dog < ActiveRecord::Base
  belongs_to :human

  def human_name
    human.name
  end
end

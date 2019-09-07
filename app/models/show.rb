class Show < ActiveRecord::Base
  
  def actors_list
    self.actors.each {|actor| actor.full_name}
  end
  
end
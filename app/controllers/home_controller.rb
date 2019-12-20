class HomeController < ApplicationController
  
  skip_before_action :authenticate_user!, :only => [:index]
  # authorize_resource class: false
  # before_action :load_and_authorize_resource
  def index
  	
  end

end

class Ability
   include CanCan::Ability

   def initialize(user)
      can :index, :homepage
    end
end


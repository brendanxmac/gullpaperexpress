class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :terms]

  def index
  end

  def terms
    #code
  end

end

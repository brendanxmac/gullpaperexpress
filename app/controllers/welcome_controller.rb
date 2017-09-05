class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :terms, :about, :contact]

  def index
  end

  def terms
    #code
  end

  def about
    #code
  end

  def contact
    #code
  end

end

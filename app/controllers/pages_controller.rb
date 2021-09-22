class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :services, :tutorials, :test, :description]

  def home
  end

  def services
  end

  def tutorials
  end

  def description
  end

end

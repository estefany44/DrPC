class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :services, :tutorials, :test]

  def home
  end

  def services
  end

  def tutorials
  end

end

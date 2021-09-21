class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :services, :test]

  def home
  end

  def services
  end

end

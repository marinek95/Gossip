class StaticPagesController < ApplicationController
  def home
    @user = User.first
  end
  def contact
  end

end

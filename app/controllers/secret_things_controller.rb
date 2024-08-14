class SecretThingsController < ApplicationController
  before_action :require_user!

  def index
    @things = Thing.all
  end


end

require 'feedjira'
module Services
  class RenewVehicleRegistrationsController < ApplicationController
    layout false

    def create
      render text: 'Success'
    end
  end
end

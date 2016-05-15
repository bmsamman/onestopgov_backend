require 'feedjira'
module Services
  class RenewDriverLicensesController < ApplicationController
    layout false

    def create
      render text: 'Success'
    end
  end
end

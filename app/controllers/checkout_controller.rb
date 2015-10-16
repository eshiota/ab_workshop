class CheckoutController < ApplicationController
  def success
    finished(:conversion)
  end
end

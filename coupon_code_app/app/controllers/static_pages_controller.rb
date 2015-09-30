class StaticPagesController < ApplicationController
  def index
  end

  def home
  end

  def new
    @code = CouponCode.generate
    Rails.logger.debug
  end

  def get
    CouponCode.validate(code)
  end

end

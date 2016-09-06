require 'coupon_code'

def new_vibe_code
  @code = CouponCode.generate
  Rails.logger.debug
end

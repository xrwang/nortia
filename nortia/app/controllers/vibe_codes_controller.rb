class VibeCodesController < ApplicationController
  def test
  end

  def new
    @vibe_code = VibeCode.new
  end

  def create
    @vibe_code = current_user.wallet.generated_coupons.create(generated_coupon_params)

    # coupon = Coupon.new(generated_coupon_params)
    # coupon.giver_wallet = current_user.wallet
    # coupon.save

    redirect_to vibe_codes_new_path
  end

  def redeem
    @vibe_code = get_vibe_code_via_code
    if @vibe_code.cashed?
      render text: 'you did this already, please go back to try a different code'
    else
      @vibe_code.receiver_wallet = current_user.wallet
      @vibe_code.cashed = true
      if @vibe_code.save!
        @vibe_code.receiver_wallet.increment!(:balance, @vibe_code.credit_equiv)
        @vibe_code.giver_wallet.decrement!(:balance, @vibe_code.credit_equiv)
        redirect_to vibe_codes_test_path
      else
        render 'update'
      end
    end
  end


  def edit
    @vibe_code = get_vibe_code_via_code
  end

  def index
    @vibe_code = get_vibe_code_via_code
  end


  def update
    @vibe_code = get_vibe_code_via_code
    if @vibe_code.update!(received_coupon_params)
      redirect_to  vibe_codes_test_path
    else
      render 'update'
    end
  end

private
  def generated_coupon_params
    params.require(:vibe_code).permit(:giver_wallet_id, :credit_equiv)
  end

  def set_giver_wallet_id
    self.giver_wallet_id = current_user.id
  end

  def get_vibe_code
    VibeCode.find(params[:id])
  end

  def get_vibe_code_via_code
    VibeCode.where(code: params[:code]).first
  end

end

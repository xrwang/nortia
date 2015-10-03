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

    redirect_to show_profile_path
  end

  def edit
    @vibe_code = get_vibe_code
  end

  def index
    @vibe_code = get_vibe_code
  end


  def update
    @vibe_code = get_vibe_code
    if @vibe_code.update!(vibe_code_params)
      redirect_to show_profile_path
    else
      render 'edit'
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
    Vibe_Code.find(params[:id])
  end

end

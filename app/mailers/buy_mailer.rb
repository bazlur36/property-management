class BuyMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def email_seller
    @asset = params[:asset]
    @owner_email = @asset.owner
    @url  = polymorphic_url(@asset)
    mail(to: @owner_email, subject: 'Your Property has been bought')
  end

  def email_buyer
    @asset = params[:asset]
    @user_email = params[:user_email]
    @url  = polymorphic_url(@asset)
    mail(to: @user_email, subject: 'You have bought Property successfully')
  end
end

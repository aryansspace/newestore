# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def current_cart
    @current_cart ||= ShoppingCart.new(token: cart_token)
  end

  private

  helper_method :current_cart

  def cart_token
    return @cart_token unless @cart_token.nil?

    session[:cart_token] ||= SecureRandom.hex(8)
    @cart_token = session[:cart_token]
  end
end

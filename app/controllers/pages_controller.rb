# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :authenticate_user!, unless: :devise_controller?

  def home; end
end

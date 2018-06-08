class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :help]

  def about
  end

  def help
  end

  def search
  end

  def index
  end

  def rent
  end

  def profile
  end

  def search
  end

  def add
  end
end

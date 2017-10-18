class PagesController < ApplicationController
  def home
    @subscribers_count = Subscriber.count

  end

  def monkey
  end
end

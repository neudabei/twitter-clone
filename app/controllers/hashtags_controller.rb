class HashtagsController < ApplicationController
  def show
    @statuses = Status.where("body LIKE ?", "%#ruby%")
  end
end
class TopicsController < ApplicationController
  def index
    @topics = TopicProvider.all
  end
end

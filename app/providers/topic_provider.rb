class TopicProvider
  # This should live somewhere else
  API_ADAPTER = InsideGovApi.new("http://localhost:3201/topics")

  def self.all
    topic_hashes = API_ADAPTER.get_topics
    topic_hashes.map { |topic_hash| build_topic(topic_hash) }
  end

private
  def self.build_topic(topic_hash)
    Topic.new(
      name: topic_hash["name"],
      canonical_url: topic_hash["canonical_url"]
    )
  end
end

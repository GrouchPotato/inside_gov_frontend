require 'gds_api/base'

# This will be part of govuk-api-adapters
class InsideGovApi < GdsApi::Base
  def get_topics
    get_json("#{base_url}.json")
  end

private
  def base_url
    endpoint
  end
end

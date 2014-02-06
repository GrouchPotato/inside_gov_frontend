class Topic < ModelBase
  attr_reader :canonical_url, :name

  def initialize(attrs = {})
    @canonical_url = attrs[:canonical_url]
    @name = attrs[:name]
  end
end

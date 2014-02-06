class ModelBase
  def to_partial_path
    self.class.name.underscore
  end
end

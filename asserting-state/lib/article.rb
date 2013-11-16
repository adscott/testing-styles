class Article

  attr_reader :author, :title, :body, :approved_by, :published_by

  def initialize(opts = {})
    @author = opts[:author]
    @title = opts[:title]
    @body = opts[:body]
  end

  def approve(by)
    @approved_by = by
  end

  def publish(by)
    @published_by = by
  end

  def approved?
    approved_by != nil
  end

  def published?
    published_by != nil
  end
end

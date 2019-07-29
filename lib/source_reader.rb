class Reader
  attr_accessor :source
  def has_ruby_script?
    if source.include? ".rb"
      true
    else
      false
    end
  end
end

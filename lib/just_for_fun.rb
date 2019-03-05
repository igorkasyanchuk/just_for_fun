require "just_for_fun/railtie"

class Integer
  def method_missing(method, *args, &block)
    klass_name, exclamation = method.to_s.scan(/to_(\w+)(\!?)/).flatten
    if klass_name
      klass = klass_name.classify.safe_constantize
      return klass.find(self) if klass
    end
    super(method, *args, &block)
  end
end

class Array
  def method_missing(method, *args, &block)
    klass_name, exclamation = method.to_s.scan(/to_(\w+)(\!?)/).flatten
    if klass_name
      klass = klass_name.classify.safe_constantize
      return klass.where(klass.primary_key => self) if klass
    end
    super(method, *args, &block)
  end
end

module JustForFun
end

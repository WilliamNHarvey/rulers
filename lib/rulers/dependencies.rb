class Object
	def self.const_missing(c)
    return nil if calling_const_missing?

    start_calling_const_missing    
		require Rulers.to_underscore(c.to_s) unless Object.const_defined?(c.to_s)
    klass = Object.const_get(c)
    complete_calling_const_missing

    klass
	end

  private

  def calling_const_missing?
    @calling_const_missing
  end

  def start_calling_const_missing
    @calling_const_missing = true
  end

  def complete_calling_const_missing
    @calling_const_missing = false
  end
end

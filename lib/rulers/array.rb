class Array
	def sum(start = 0)
    inject(start, &:+)
	end

  def product(start = 0)
    inject(start, &:*)
  end
end

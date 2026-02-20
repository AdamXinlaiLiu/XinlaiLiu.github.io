# Ruby 4 removed taint checking. Liquid (used by Jekyll) still calls String#tainted?.
# This plugin restores tainted?/taint/untaint as no-ops so the site builds on Ruby 4+.
if !String.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
    def taint
      self
    end
    def untaint
      self
    end
  end
end

require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'


class Dancer
    # include Dance #instance methods in the dancer class
    # extend MetaDancing #methods intended to be used as class methods in kid and dancer classes

    extend FancyDance::ClassMethods 
    include FancyDance::InstanceMethods

    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

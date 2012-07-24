module Brid
  module BridActiveRecord
    def self.included base
      base.extend ClassMethods
    end

    module ClassMethods
      def has_one_cpf field = :cpf
        has_brid field, 'CPF'
      end

      def has_brid field, klass
        composed_of field,
            :constructor => Proc.new {|number| klass.constantize.new number },            
            :converter   => Proc.new {|value|  klass.constantize.new value  },
            :mapping     => [field, 'number'],
            :class_name  => klass.to_s
      end
    end
  end
end

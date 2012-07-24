module ActiveModel
  module Validations
    class CpfValidator < ActiveModel::EachValidator
      def validate_each(record, attr_name, value)
        return if options[:allow_nil] && value.nil?

        
        unless(CPF.new(value).valid?() rescue false)
          record.errors.add(attr_name, (options[:message] || :cpf_not_valid))
        end
      end
    end
  end
end

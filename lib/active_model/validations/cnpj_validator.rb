module ActiveModel
  module Validations
    class CnpjValidator < LuhnValidator
      def validate_each(record, attr_name, value)
        return if options[:allow_nil] && value.nil?
        
        unless(CNPJ.new(value).valid?() rescue false)
          record.errors.add(attr_name, (options[:message] || :cnpj_not_valid))
        end
      end
    end
  end
end

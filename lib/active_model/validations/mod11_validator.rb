module ActiveModel
  module Validations
    class Mod11Validator < LuhnValidator
      def validate_each(record, attr_name, value)
        return if options[:allow_nil] && value.nil?
        if valid_number? value, :mod11
          record.errors.add(attr_name, (options[:message] || 'mod11_not_valid'))
        end
      end
    end
  end
end

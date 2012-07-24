module ActiveModel
  module Validations
    class Mod10Validator < LuhnValidator
      def validate_each(record, attr_name, value)
        return if options[:allow_nil] && value.nil?
        if valid_number? value, :mod10
          record.errors.add(attr_name, (options[:message] || 'mod10_not_valid'))
        end
      end
    end
  end
end

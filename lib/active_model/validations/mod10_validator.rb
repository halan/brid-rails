require 'active_model/validations'
require 'brid'


module ActiveModel
  module Validations
    class Mod10Validator < ActiveModel::EachValidator
      def validate_each(record, attr_name, value)
        return if options[:allow_nil] && value.nil?
        if valid_number? value
          record.errors.add(attr_name, (options[:message] || 'mod10_not_valid'))
        end
      end

      def valid_number? number, luhn_method = :mod10
        digits        = options[:with]
        number != number[0, number.length - digits].send(luhn_method, digits)
      end
    end
  end
end

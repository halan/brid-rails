module ActiveModel
  module Validations
    class LuhnValidator < ActiveModel::EachValidator
      def valid_number? number, luhn_method = :mod10
        digits        = options[:with]
        number != number[0, number.length - digits].send(luhn_method, digits)
      end
    end
  end
end

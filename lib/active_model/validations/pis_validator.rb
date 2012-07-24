module ActiveModel
  module Validations
    class PisValidator < ActiveModel::EachValidator
      def validate_each(record, attr_name, value)
        return if options[:allow_nil] && value.nil?
        
        unless(PIS.new(value).valid?() rescue false)
          record.errors.add(attr_name, (options[:message] || :pis_not_valid))
        end
      end
    end
  end
end

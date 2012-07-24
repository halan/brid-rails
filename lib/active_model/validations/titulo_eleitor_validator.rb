module ActiveModel
  module Validations
    class TituloEleitorValidator < ActiveModel::EachValidator
      def validate_each(record, attr_name, value)
        return if options[:allow_nil] && value.nil?
        
        unless(TituloEleitor.new(value).valid?() rescue false)
          record.errors.add(attr_name, (options[:message] || :titulo_eleitor_not_valid))
        end
      end
    end
  end
end

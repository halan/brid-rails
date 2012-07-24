module Brid
  module BridActiveRecord
    def self.included base
      base.extend ClassMethods
    end

    module ClassMethods
      def has_one_cpf field = :cpf
        has_brid field, 'CPF'
      end

      def has_one_cnpj field = :cnpj
        has_brid field, 'CNPJ'
      end

      def has_one_pis field = :pis
        has_brid field, 'PIS'
      end

      def has_one_titulo_eleitor field = :titulo_eleitor
        has_brid field, 'Tituloeleitor'
      end

      def has_one_cred_card field = :cred_card
        has_brid field, 'CredCard'
      end

      def has_one_brid field
        has_brid field, 'GenericID'
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

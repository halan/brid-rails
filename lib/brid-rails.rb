require "brid-rails/version"
require 'brid'
require 'active_model/validations'

require 'active_model/validations/luhn_validator'
require 'active_model/validations/mod10_validator'
require 'active_model/validations/mod11_validator'
require 'active_model/validations/cpf_validator'
require 'active_model/validations/cnpj_validator'
require 'active_model/validations/cpf_or_cnpj_validator'
require 'active_model/validations/pis_validator'
require 'active_model/validations/titulo_eleitor_validator'

require 'active_record'
require 'active_record/brid_active_record'

ActiveRecord::Base.send :include, Brid::BridActiveRecord



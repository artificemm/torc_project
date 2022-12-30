# frozen_string_literal: true

require 'torc_project/version'
require 'torc_project/input_manager'
require 'torc_project/good'

module TorcProject
  class Error < StandardError; end

  file = InputManager.new('./input01.txt')
  @data = file.run
  sales_tax = 0.0
  total_amount = 0.0

  @data.each do |good|
    sales_tax += good.taxes * good.amount
    total_amount += good.amount * good.price
    puts [good.amount, "#{good.description.join(' ')}:", good.amount * (good.price + good.taxes).round(2)].join(' ')
  end
  puts ['Sales Taxes:', sales_tax].join(' ')
  puts ['Total:', total_amount].join(' ')
end

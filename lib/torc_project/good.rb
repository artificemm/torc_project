# frozen_string_literal: true

module TorcProject
  class Good
    FOOD = %w[chocolate chocolates pizza sushi].freeze
    MEDICAL = %w[pills shot cough].freeze
    BOOK = %w[book].freeze
    IMPORT = %w[import imported].freeze
    EXEMPT = [FOOD, MEDICAL, BOOK].flatten.freeze
    BASIC_SALES_TAX = 10
    IMPORT_DUTY_TAX = 5

    attr_accessor :amount, :description, :price, :import_tax, :basic_tax, :taxes

    def initialize(obj)
      good = obj.split
      @amount = good[0].to_i
      @description = good[1..-3]
      @price = good[-1].to_f
      @import_tax = calculate_import_tax
      @basic_tax = calculate_basic_tax
      @taxes = import_tax + basic_tax
    end

    private

    def word_from_constant?(ary, constnt)
      ary.any? { |word| constnt.any? word }
    end

    def calculate_import_tax
      return 0.0 unless word_from_constant?(description, IMPORT)

      ((price * IMPORT_DUTY_TAX) / 100.0).round(2)
    end

    def calculate_basic_tax
      return 0.0 if word_from_constant?(description, EXEMPT)

      ((price * BASIC_SALES_TAX) / 100.0).round(2)
    end
  end
end

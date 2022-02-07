## we create a module name (salestaxrule) to check eligibility and also the amount of sales tax
require './lib/constants' 
module SalesTaxRule
    class << self
      def applies_to?(item)
        !item.tax_exempt?
      end

      def tax_for(item)
        item.price * tax_rate     
      end

      def tax_rate
        Constants::SALES_TAX_RATE
      end
    end
  end  
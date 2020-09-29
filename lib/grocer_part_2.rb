require_relative './part_1_solution.rb'
require 'pry'


def apply_coupons(cart, coupons)
 
 i = 0
 
 coupons.each do |key|
 item = find_item_by_name_in_collection(key[:item],cart)
 coupon_name = "#{key[:item]} W/COUPON"
 with_coupon = find_item_by_name_in_collection(coupon_name,cart)
 if item && item[:count] >= coupons[i][:num]
   if coupon_name 
     coupon_name[:count] += coupons[i][:num]
     item[:count] -= coupons[i][:num]
   else
     with_coupon = {
            :item => coupon_name,
            :price => coupons[i][:cost] / coupons[i][:num],
            :clearance => item[:clearance],
            :count => coupons[i][:num]
     }
     cart << with_coupon
     item[:count] -= coupons[i][:num]
 end
 end
 i+=1
 end
   
  cart
  
end



def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end

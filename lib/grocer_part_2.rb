require_relative './part_1_solution.rb'
require 'pry'


def apply_coupons(cart, coupons)
 
 i = 0
 
 coupons.each do |key|
 item = find_item_by_name_in_collection(key[:item],cart)
 coupon_name = "#{key[:item]} W/COUPON"
 with_coupon = find_item_by_name_in_collection(coupon_name,cart)
 if item && item[:count] >= coupons[i][:num]
   if with_coupon
     with_coupon[:count] += coupons[i][:num]
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
 
  
  cart.each do |key|
    
    if key[:clearance] 
      key[:price] = (key[:price] * 0.8).round(2)
  end
end
  cart
  
end



def checkout(cart, coupons)

  con_cart = consolidate_cart(cart)
  applied_coupons = apply_coupons(con_cart,coupons)
  applied_clearance = apply_clearance(applied_coupons)
  
  total = 0
  
  applied_clearance.each do |key|
  total += key[:price] * key[:count]
  
   end
      if total > 100
        total = (total * 0.9).round(2)
end
total
end

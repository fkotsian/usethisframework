aida = Framework.create(name: "AIDA", 
                     description: "Advertising framework used to target a market.")
                     
aida_items = [
  Item.new(name: "Attention", explanation: "Attract the attention of the customer", framework: aida),
  Item.new(name: "Interest", explanation: "Gain the interest of the customer", framework: aida),
  Item.new(name: "Desire", explanation: "Convince customers that they want and desire the product or service and that it will satisfy their needs.", framework: aida),
  Item.new(name: "Action", explanation: "Lead customers towards taking action and/or purchasing.", framework: aida)
]

aida_items.each {|i| i.save }
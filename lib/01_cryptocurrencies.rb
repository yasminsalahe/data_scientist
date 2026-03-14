names = ["Bitcoin", "Ethereum", "XRP", "Bitcoin Cash", "EOS", "Litecoin", "Cardano", "Stellar", "IOTA", "Tether"]
prices = ["6500.12", "450.45", "0.32", "750.00", "12.45", "150.00", "0.25", "0.20", "1.50", "1.00"]

crypto_data = names.zip(prices).to_h

puts "--- RÉSULTATS ANALYSE CRYPTO ---"

max = crypto_data.max_by { |name, price| price.to_f }
puts "La crypto la plus chère est : #{max[0]} (#{max[1]})"

min = crypto_data.min_by { |name, price| price.to_f }
puts "La crypto la moins chère est : #{min[0]} (#{min[1]})"

cheap = crypto_data.count { |name, price| price.to_f < 1.0 }
puts "Il y a #{cheap} cryptos à moins de 1€."
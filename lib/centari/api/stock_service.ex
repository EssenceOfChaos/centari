# Free stock price
# https://cloud.iexapis.com/stable/tops?token=pk_40c6c71966a445cca7038a5445fd54a0&symbols=aapl
# [{
#   "symbol":"AAPL",
#   "sector":"electronictechnology",
#   "securityType":"cs",
#   "bidPrice":155.01,
#   "bidSize":100,
#   "askPrice":155.45,
#   "askSize":309,
#   "lastUpdated":1662482035635,
#   "lastSalePrice":155.02,
#   "lastSaleSize":100,
#   "lastSaleTime":1662482035557,
#   "volume":725136
# }]

# Company Data
# https://cloud.iexapis.com/stable/stock/aapl/company?token=pk_40c6c71966a445cca7038a5445fd54a0
# {
# "symbol":"AAPL",
# "companyName":"Apple Inc",
# "exchange":"NASDAQ",
# "industry":"Electronic Computer Manufacturing ",
# "website":"https://www.apple.com/",
# "description":"Apple Inc. is an American multinational technology company headquartered in Cupertino, California,",
# "CEO":"Timothy Cook",
# "securityName":"Apple Inc",
# "issueType":"cs",
# "sector":"Manufacturing",
# "primarySicCode":3571,
# "employees":147000,
# "tags":["Electronic Technology","Telecommunications Equipment","Manufacturing","Electronic Computer Manufacturing "],
# "address":"1 Apple Park Way",
# "address2":null,
# "state":"California",
# "city":"Cupertino",
# "zip":"95014-0642",
# "country":"United States",
# "phone":"14089961010"
# }

# Logos
# https://storage.googleapis.com/iex/api/logos/TSLA.png

# News
# https://cloud.iexapis.com/stable/stock/aapl/news?token=pk_40c6c71966a445cca7038a5445fd54a0

# News last 1
# https://cloud.iexapis.com/stable/stock/aapl/news/last/1?token=pk_40c6c71966a445cca7038a5445fd54a0

# Unemployment Rate
# https://cloud.iexapis.com/stable/data-points/market/UNRATE?token=pk_40c6c71966a445cca7038a5445fd54a0

# finnhub api key --> ccbnvaiad3i8urq8g4j0
# finnhhub sandbox api key --> sandbox_ccbnvaiad3i8urq8g4jg

# https://finnhub.io/api/v1/quote?symbol=AAPL&token=ccbnvaiad3i8urq8g4j0
# {"c":154.23,"d":-1.58,"dp":-1.0141,"h":157.09,"l":153.73,"o":156.47,"pc":155.81,"t":1662484622}

# c = current price
# d = change
# dp = percent change
# h = high price of day
# l = low price of day
# o = open price of day
# pc = previous close

# const socket = new WebSocket('wss://ws.finnhub.io?token=ccbnvaiad3i8urq8g4j0');
# ?? what dis?? https://finnhub.io/api/v1wss://ws.finnhub.io?token=ccbnvaiad3i8urq8g4j0

# // Connection opened -> Subscribe
# socket.addEventListener('open', function (event) {
#     socket.send(JSON.stringify({'type':'subscribe', 'symbol': 'AAPL'}))
#     socket.send(JSON.stringify({'type':'subscribe', 'symbol': 'BINANCE:BTCUSDT'}))
#     socket.send(JSON.stringify({'type':'subscribe', 'symbol': 'IC MARKETS:1'}))
# });

# // Listen for messages
# socket.addEventListener('message', function (event) {
#     console.log('Message from server ', event.data);
# });

# // Unsubscribe
#  var unsubscribe = function(symbol) {
#     socket.send(JSON.stringify({'type':'unsubscribe','symbol': symbol}))
# }

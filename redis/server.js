
var port = process.env.PORT || 5000
var http = require( 'http' )

http.createServer( function ( req, res ) {
  res.writeHead( 200, { 'Content-Type': 'text/plain' })

  var redis  = require("redis")
  var client = redis.createClient( 27018 )

  client.on( "error", function (err) { console.log("Error " + err) })
  client.set("string key", "string val", redis.print)
  client.hset("hash key", "hashtest 1", "some value", redis.print)
  client.hset(["hash key", "hashtest 2", "some other value"], redis.print)
  client.hkeys("hash key", function (err, replies) {
      replies.forEach( function (reply, i) { res.write( "[" + i + "]:[" + reply + "]\n" ) })
      client.quit()
      res.end( '' )
  })

}).listen( port, '127.0.0.1' )

console.log( 'Server running at http://127.0.0.1:' + port + '/' )

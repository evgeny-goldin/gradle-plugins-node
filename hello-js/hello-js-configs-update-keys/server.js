
var fs      = require( 'fs' )
var http    = require( 'http' )
var config1 = JSON.parse( fs.readFileSync( 'config/development.json', 'ascii' ))
var config2 = JSON.parse( fs.readFileSync( 'config/development-2.json', 'ascii' ))
var port    = config1.port

http.createServer( function ( req, res ) {
  res.writeHead( 200, { 'Content-Type': 'text/plain' })
  res.end( 'hello-js-configs-update-keys|' + config1.key1 + '|' + config2.key2 + '|' + config1.a.b.c.d.e + '|' + config2.a.b.c.d.e )
}).listen( port, '127.0.0.1' )

console.log( 'Server running at http://127.0.0.1:' + port + '/' )

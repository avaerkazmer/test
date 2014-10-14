/* app.js */
var http = require('http');

function app(cb) {
    var s = http.createServer(function(req, res) {
        res.end('Hello, world!');
    });

    s.listen(8080, cb);

    return s;
}

if (require.main === module) {
    app();
} else {
    module.exports = app;
}

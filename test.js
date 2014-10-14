/* test.js */
var http = require('http'),
    request = require('request'),
    should = require('should'),
    app = require('./app.js');

describe('basic', function() {
    it('should respond with hello world', function(cb) {
        var s = app(function(err) {
            request('http://127.0.0.1:8080', function(err, res, body) {
                body.should.be.exactly('Hello, world!');

                s.close(cb);
            });
        });
    });
});

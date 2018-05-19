var http = require('http');
var url = require('url');
var fs = require("fs");
http.createServer(function (request, response) {
    path = url.parse(request.url);
    fs.readFile("static/index.html", "utf8", function(err, file) {
        if (err) {
            response.writeHead(404, {
                'Content-Type': 'text/plain'
            });
            response.end();
            return;
        }
        // 发送 HTTP 头部
        // HTTP 状态值: 200 : OK
        // 内容类型: text/plain
        response.writeHead(200, {
            'Content-Type': 'text/html'
        });
        // 发送响应数据 "index.html"
        response.write(file);
        response.end();
    });
}).listen(5000);

// 终端打印如下信息
console.log('Server running at http://127.0.0.1:5000/');
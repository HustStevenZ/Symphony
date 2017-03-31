'use strict';
var request = require('request');
var jsdom = require('jsdom');
var jquery = require('jquery');
var html = undefined;
jsdom.env({
    url: "https://freessr.xyz",
    done: function (err, window) {
        if (err) {
            console.error(err);
            return;
        }
        var $ = require("jquery")(window);
        var div = $(".col-md-6").get()[0];
        var firstdiv = div.children;
        var ssconfig = {'local_port': 4377,'local_address':'127.0.0.1'};
        var map = {'服务器地址':'server','端口':'server_port','密码':'password','加密方式':'method'};
        for(var i = 0;i<firstdiv.length;i++)
        {
            var text = firstdiv[i].textContent.split(':');
            if(map[text[0]])
            {
                ssconfig[map[text[0]]]=text[1];
                if(map[text[0]] == 'server_port')
                    ssconfig[map[text[0]]]=Number(text[1]);
            }
        }
        console.log(JSON.stringify(ssconfig));
    }
});
// require("jsdom").env("", function(err, window) {
//     if (err) {
//         console.error(err);
//         return;
//     }
//
//     var $ = require("jquery")(window);
//
//     $.get("https://www.baidu.com",function(html){
//         var $doc = $(html);
//         console.log(html);
//     });
//
// });

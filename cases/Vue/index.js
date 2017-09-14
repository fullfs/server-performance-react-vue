var express = require('express');
var app = express();
var fs = require('fs');
var path = require('path');
const compiler = require('vue-template-compiler')
const renderer = require('vue-server-renderer').createRenderer()
const Vue = require('vue')
function getRenderFunction(tpl) {
    const tpl2 = compiler.compileToFunctions(tpl);
    return tpl2.render;
}

var getItemData = function (argument) {
    return {
        id: (Math.random() * 1000000).toFixed(),
        price: (Math.random() * 1000000).toFixed(),
        price_sqm: (Math.random() * 100000).toFixed(),
        price_avg: (Math.random() * 1000000).toFixed(),
        photo: [{}, {}, {}],
        address: ['3-к', 'Блюхера', '14'],
        district: 'Ленинский район',
        area: [42, 21, 15],
        floor: [4, 5],
        description: 'Поступило в продажу очень редкое предложение! Современная квартира-студия. Нестандартная планировка, качественный ремонт, приятные соседи и месторасположение - это очень приятное сочетание!!!'
    };
}

var items = [];

for (var i = 250 - 1; i >= 0; i--) {
    items.push(getItemData());
};


var appTpl = getRenderFunction(fs.readFileSync(__dirname + '/app.tpl', 'utf-8').replace(/\n|\r|\t/g, '').replace(/ +/g, ' '));


app.get('/', function(req, res) {

    Vue.component('my-list', {
        props: ['items'],
        render: getRenderFunction(fs.readFileSync(__dirname + '/list.tpl', 'utf-8').replace(/\n|\r|\t/g, '').replace(/ +/g, ' '))
    })

    Vue.component('item', {
        props: ['item'],
        template: fs.readFileSync(__dirname + '/item.tpl', 'utf-8').replace(/\n|\r|\t/g, '').replace(/ +/g, ' ')
    });

    console.time('render')
    const vm = new Vue({
        render: appTpl,
        data: function() {
            return {items: items};
        }
    });

    renderer.renderToString(vm, (err, html) => {
        console.timeEnd('render')
        res.send(html);
    //   console.log(err, html) // -> <div server-rendered="true">hello</div>
    })

});

var server = app.listen(3000, 'localhost', function() {
    var host = server.address().address;
    var port = server.address().port;

    console.log('App listening at http://%s:%s', host, port);
});

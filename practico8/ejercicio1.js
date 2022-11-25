
'use strict'
const fs = require('fs');
let rawdata = fs.readFileSync('./personas.json');

//console.log(JSON.stringify(rawdata)); Con esta linea me imprime en la consola el json en formato AIS

let persona = JSON.parse(rawdata);
console.log(persona);
 // el metodo parse nos convierte el json en un objeto de javascript


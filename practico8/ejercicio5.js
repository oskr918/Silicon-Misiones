const fs = require('fs');
const rawdata = fs.readFileSync('../practico7/ejercicio02/departamentos.json', 'utf8');

var departamentos = JSON.parse(rawdata);
console.log(departamentos)
const fs = require('fs');
fs.readFile('../practico7/personas.json', (err, data) => {
if (err) throw err;
console.log(JSON.stringify(data));
console.log("data", data);
});
/* Los contenidos del archivo se registran de dos maneras: primero, 
como una cadena utilizando el método JSON.stringify y luego como un buffer 
utilizando el método console.log.*/
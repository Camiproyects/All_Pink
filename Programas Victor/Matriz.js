Datos=	[
    ["80223220","Luis Andrés Montoya Montoya","Ingeniería de Telecomunicaciones","IV","3.0","3.3","4.2","4.5"],
    ["51662369","Sandra Milena Castellanos Marín","Medicina","VI","3.5","1.1","0.4","1.6"],
    ["79444555","Francisco Martínez Marin","Ingeniería de Alimentos","III","3.4","4.5","4.4","3.0"],
    ["79001003","Luis Francisco Castañeda Roa","Ingeniería de Sistemas","VIII","3.3","3.4","4.5","4.4"],
    ["79003003","Pedro José Pineda Pineda","Odontología","VI","4.0","4.1","3.9","4.5"],
    ["52900901","Ruth Paola Mahecha Mahecha","Odontología","VII","3.6","3.6","3.8","3.9"],
    ["26900345","Lucia Valderrama Pineda","Fisioterapia","VIII","4.4","4.5","4.1","3.1"],
    ["35676900","Mariela Lucia Olguín Ramírez","Medicina","V","3.0","3.1","4.6","3.7"],
    ["27101234","Lucila Peñaranda Peñaranda","Enfermería","II","2.5","4.6","3.4","4.6" ],
    ["80231678","Milena Palacios Palacios","Ingeniería Mecánica","III","3.6","3.4","3.5","4.5"],
    ["1030617979","Luis Alberto Castellanos Frias","Odontología","VI","4.0","4.1","3.9","4.5"], 
    ["1019066342","Nercy Aleidis Rengifo Rengifo","Fisioterapia","VII","3.6","3.6","3.8","3.9"],
    ["1014249436","Fabián Raúl Moreno Carvajal","Medicina","VIII","4.4","4.5","4.1","3.1"],
    ["1022380843","Jonathan Mauricio Baez Baez","Enfermería","V","3.0","3.1","4.6","3.7"],
    ["1012353083","Germán Dario Rodríguez Baez","Ingeniería Mecánica","II","2.5","4.6","3.4","4.6"],
    ["1030630231","Diego Fernando Giraldo Romero","Ingeniería de Petróleo","III","3.6","3.4","3.5","4.5"],
    ["1020765332","Luz Herminda Fonseca Daza","Psicología","VI","4.0","4.1","3.9","4.5"],
    ["1022357137","Rhonald Dahian Jiménez García","Ingeniería Civil","VI","3.5","4.0","3.3","3.5"],
    ["52263227","Edgar Andrés Bejarano Pérez","Ingeniería Civil","IV","3.0","3.3","4.2","4.5"],
    ["1013579638","Diego Fernando Bautista Gómez","Ingeniería Civil","III","3.4","4.5","4.4","3.0"],
    ["1030617978","Luis Alberto Jaime Hernández","Ingeniería  de Sistemas","II","4.0","4.1","3.9","4.5"],
    ["1019066343","Zabala Pereira Nercy Aleidys","Ingeniería Mecánica","V","3.0","3.3","4.2","4.5"],
    ["1014249434","Fabian Raul Duarte Serrano","Medicina","IV","3.6","3.6","3.8","3.9"],
    ["1022380842","Jhonatan Mauricio Rodríguez  C.","Ingeniería de Petróleos","I","3.4","4.5","4.4","3.0"],
    ["1012353082","German Dario González  Riaño","Ingeniería de Petróleos","III","3.4","4.5","4.4","3.0"],
    ["96040605441","Michael Duvan Beltran Salcedo","Medicina","IV","3.0","3.3","4.2","4.5"],
    ["1013641467","Romero Piña Dylan David","Fisioterapia","II","3.6","3.6","3.8","3.9"],
    ["1030632107","Ruben Dario Fuquene C.","Ingeniería Mecánica","V","3.0","3.3","4.2","4.5"],
    ["53072770","Maryory Cuesta Rodríguez","Ingeniería de Telecomunicaciones","IV","3.0","3.3","4.2","4.5"],
    ["1014245401","Cristian Camilo Ortiz Ortiz","Ingeniería de Telecomunicaciones","VI","2.0","3.1","4.8","1.5"],
    ["95020796896","Daniel Andres Zapata Bello","Ingeniería Mecánica","IV","3.0","3.3","4.2","4.5"],
    ["1003819124","José Eitner Montiel  Aldana","Medicina","IV","3.0","3.3","4.2","4.5"],
    ["1031131906","Luis Guillermo Andrade Cifuentes","Medicina","VIII","3.9","3.8","2.6","4.5"],
    ["1019018284","Jairo Joel Noguera melo","Medicina","VIII","3.7","3.7","4.7","4.0"],
    ["1070115361","Yuly Katherine Sierra","Ingeniería Mecánica","V","2.7","3.9","4.7","4.5"],
    ["1014218719","Bryan Andrés Ortegón","Medicina","IV","3.0","3.3","4.2","4.5"],
    ["1030611565","Mónica Andrea Plaza Bernal","Medicina","IV","3.6","3.8","4.8","4.0"],
];
/*
function buscarPorID(id) {
    const ResultadoTabla = document.getElementById('ResultadoTabla');
    const ResultadoCuerpo = document.getElementById('ResultadoCuerpo');
    const SinResultado = document.getElementById('SinResultado');

    ResultadoCuerpo.innerHTML = '';
    const fila = Datos.find(row => row[0] === id);
    
    if (fila) {
        ResultadoTabla.style.display = 'table';
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${fila[0]}</td>
            <td>${fila[1]}</td>
            <td>${fila[2]}</td>
            <td>${fila[4]}</td>
            <td>${fila[5]}</td>
            <td>${fila[6]}</td>
            <td>${fila[7]}</td>
            <td>${(parseFloat(fila[4]) + parseFloat(fila[5]) + parseFloat(fila[6]) + parseFloat(fila[7])) / 4}</td>
        `;
        ResultadoCuerpo.appendChild(row);
        SinResultado.style.display = 'none';
    } else {
        ResultadoTabla.style.display = 'none';
        SinResultado.style.display = 'block';
    }
}
*/
function Consulta() {
    const id = document.getElementById('IDEntrada').value;
    buscarPorID(id);
}
function buscarPorID(id) {
    const ResultadoTabla = document.getElementById('ResultadoTabla');
    const ResultadoCuerpo = document.getElementById('ResultadoCuerpo');
    const SinResultado = document.getElementById('SinResultado');
    ResultadoCuerpo.innerHTML = '';
    let Fila = null;
    let i = 0;

    do {
        if (i < Datos.length && Datos[i][0] === id) {
            Fila = Datos[i];
            break;
        }
        i++;
    } while (i < Datos.length);
    if (Fila) {
        ResultadoTabla.style.display = 'table';
        const row = document.createElement('tr');
        row.innerHTML = 
        `<td>${Fila[0]}</td>
        <td>${Fila[1]}</td>
        <td>${Fila[2]}</td>
        <td>${Fila[4]}</td>
        <td>${Fila[5]}</td>
        <td>${Fila[6]}</td>
        <td>${Fila[7]}</td>
        <td>${(parseFloat(Fila[4]) + parseFloat(Fila[5]) + parseFloat(Fila[6]) + parseFloat(Fila[7])) / 4}</td>`;
        ResultadoCuerpo.appendChild(row);
        SinResultado.style.display = 'none';
    } else {
        ResultadoTabla.style.display = 'none';
        SinResultado.style.display = 'block';
    }
}
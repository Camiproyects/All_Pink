var TamañoAncho=window.screen.width;
var TamañoLargo=window.screen.height;
function InicioDeUsuario() {
    var recordarRadio = document.getElementById('Recordar');
    if (recordarRadio.checked) {
        Swal.fire({
            title: "Has Ingresado",
            text: "Has Iniciado Sesión. Recuerda que se guardará la sesión en este equipo.",
            icon: "success"
        });
    } else {
        Swal.fire({
            title: "Has Ingresado",
            text: "Has Iniciado Sesión. Recuerda que NO se guardará la sesión en este equipo.",
            icon: "success"
        });
    }
}
z
function RegistrarUsuario(){
    window.open('Formulario.html')
    return false;
}
function Mostrarformulario(){
    window.open('Iniciar Sesión.html')
    return false;
}
function VerificarFormulario(){
    var Nombres=document.getElementById("nombres").value;
    var Correo=document.getElementById("correo").value;
    var Clave=document.getElementById("clave").value;
    var confirmar_Clave=document.getElementById("confirmar_Clave").value;
        if (Nombres.length==0){
            Swal.fire({
            title: " UPS!",
            text: "Porfavor Ingrese Sus Nombres",
            icon: "error"
        });
        return;
}
if (Correo.length==0){
    Swal.fire({
        title: " UPS!",
        text: "Porfavor Ingrese Su Correo",
        icon: "error"
        });
    return false;
}
if (Clave.length==0){
    Swal.fire({
        title: " UPS!",
        text: "Porfavor Ingrese Su Clave",
        icon: "error"
        });
    return false;
}
if (confirmar_Clave.length==0){
    Swal.fire({
        title: " UPS!",
        text: "Porfavor Confirma Tu Clave",
        icon: "error"
        });
    return false;
}
var Clave=/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).+$/;
    if (!ClaveLETmix.test(Clave)){
        Swal.fire({
            title: "OYE!",
            text: "Tu Contraseña Debe Tener Una Metuscula Minuscula Y Numeros",
            icon: "error"
            });
            return false;
    }
if (Clave!==confirmar_Clave){
    Swal.fire({
        title: "Error",
        text: "Las Claves DEben Ser Iguales",
        icon: "error"
    });
}
    var Terminos = document.getElementById('terminos');
    if (!Terminos.checked) {
        Swal.fire({
            title: "Términos y Condiciones",
            text: "Por favor, acepta los términos y condiciones",
            icon: "error"
        });
        return;
    }
    Swal.fire({
        title: "Éxito!",
        text: "Formulario enviado correctamente",
        icon: "success"
    });
}


document.addEventListener('DOMContentLoaded', () => {
    const buttons = document.querySelectorAll('button');
    buttons.forEach(button => {
        button.addEventListener('click', () => {
            alert('Producto añadido al carrito!');
        });
    });
});

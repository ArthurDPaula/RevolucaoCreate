// sessão
function validarSessao() {
    // aguardar();

    var email = sessionStorage.EMAIL_USUARIO;
    var nome = sessionStorage.NOME_USUARIO;

    var b_usuario = document.getElementById("b_usuario");
    var b_email = document.getElementById("b_email")

    if (email != null && nome != null) {
        // window.alert(`Seja bem-vindo, ${nome}!`);
        b_usuario.innerHTML = nome;
        b_email.innerHTML = email;

        // finalizarAguardar();
    } else {
        window.location = "login.html";
    }
}

function limparSessao() {
    // aguardar();
    sessionStorage.clear();
    // finalizarAguardar();
    window.location = "../login.html";
}

// carregamento (loading)
function aguardar() {
    var divAguardar = document.getElementById("div_aguardar");
}

function finalizarAguardar(texto) {
    var divAguardar = document.getElementById("div_aguardar");

    var divErrosLogin = document.getElementById("div_erros_login");
    if (texto) {
    }
}


// modal
function mostrarModal() {
    var divModal = document.getElementById("div_modal");
}

function fecharModal() {
    var divModal = document.getElementById("div_modal");
}


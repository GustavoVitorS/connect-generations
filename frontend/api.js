updateInicial();
const input = document.querySelector("input");
input.addEventListener("input", updateValue);
let dados;


function updateValue(e) {
  
  let valor = e.target.value;

  if (valor == "") {
    updateInicial();
  } else {
    let apagar = document.getElementById("giriaContainer")
    apagar.innerHTML = "";
    fetch('http://localhost:8080/termos/listarFiltrado?termo=' + valor + "&size=10")
    .then(response => response.json())
    .then(data => {
      dados = data;
      console.log(data);
      for (let index = 0; index < dados.content.length; index++) {
        var tag = document.createElement("div");
        var primeiroP = document.createElement("p");
        var segundoP = document.createElement("p");
        var text = document.createTextNode(dados.content[index].termo);
        var exp = document.createTextNode(dados.content[index].significado);
        segundoP.style.fontSize = "10px";
        segundoP.style.fontStyle = "italic";
        primeiroP.appendChild(text);
        segundoP.appendChild(exp);
        tag.appendChild(primeiroP);
        tag.appendChild(segundoP);
        var element = document.getElementById("giriaContainer");
        element.appendChild(tag);
      }
    })
    .catch(error => {
      console.error('Erro ao obter dados da API:', error);
    });
  } 
}

function updateInicial() {
  fetch('http://localhost:8080/termos/listar?size=10')
  .then(response => response.json())
  .then(data => {
    let apagar = document.getElementById("giriaContainer")
    apagar.innerHTML = "";
    dados = data;
    console.log(data);
    for (let index = 0; index < dados.content.length; index++) {
      var tag = document.createElement("div");
      var primeiroP = document.createElement("p")
      var segundoP = document.createElement("p");
      var text = document.createTextNode(dados.content[index].termo);
      var exp = document.createTextNode(dados.content[index].significado);
      segundoP.style.fontSize = "10px";
      segundoP.style.fontStyle = "italic";
      primeiroP.appendChild(text);
      segundoP.appendChild(exp);
      tag.appendChild(primeiroP);
      tag.appendChild(segundoP);
    
      var element = document.getElementById("giriaContainer");
      element.appendChild(tag);
    }
  })  
  .catch(error => {
    console.error('Erro ao obter dados da API:', error);
  });
}

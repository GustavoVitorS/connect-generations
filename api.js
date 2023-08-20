fetch('')
  .then(response => response.json())
  .then(data => {
    console.log(data);
  })
  .catch(error => {
    console.error('Erro ao obter dados da API:', error);
  });

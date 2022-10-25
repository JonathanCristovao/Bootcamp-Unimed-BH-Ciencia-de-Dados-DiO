# Projeto: Pacote de Processamento de Imagens
## Autora do Projeto: Karina Kato
### Projeto: Descomplicando a criação de pacotes de processamento de imagens em Python (DiO)
#### Tecnologia: Python
#### Data: 25/10/2022
-----------------------------------------
### Descrição
O pacote "package_image_processing_DiO" é usado para:

- Módulo "Processing":
  - Correspondência de histograma;
  - Similaridade estrutural;
  - Redimensionar imagem;

- Módulo "Utils":
  - Ler imagem;
  - Salvar imagem;
  - Plotar imagem;
  - Resultado do gráfico;
  - Plotar histograma;
---------------------------------------------
## Passo a passo da configuração para hospedar um pacote em Python no ambiente de testes Test Pypi

- [x] Instalação das últimas versões de "setuptools" e "wheel"

```
py -m pip install --user --upgrade setuptools wheel
```
- [x] Tenha certeza que o diretório no terminal seja o mesmo do arquivo "setup.py"

```
C:\User\user-name\image-processing-package> py setup.py sdist bdist_wheel
```

- [x] Após completar a instalação, verifique se as pastas abaixo foram adicionadas ao projeto:
  - [x] build;
  - [x] dist;
  - [x] image_processing_test.egg-info.

- [x] Basta subir os arquivos, usando o Twine, para o Test Pypi:

```
py -m twine upload --repository testpypi dist/*
```

- [x] Após rodar o comando acima no terminal, será pedido para inserir o usuário e senha. Feito isso, o projeto estará hospedado no Test Pypi.hospedá-lo no Pypi diretamente.

### O objetivo este projeto foi realizar um simples teste com o projeto da Karina com hospedagem no Test Pypi em um projeto do bootcamp Unimed BH da DiO.

----------------------------------------------------
## Instalação local, após hospedagem no Test Pypi

- [x] Instalação de dependências
```
pip install -r requirements.txt
```

- [x] Instalção do Pacote

Use o gerenciador de pacotes ```pip install -i https://test.pypi.org/simple/ package-image-processing-DiO ```para instalar image_processing-test

```bash
pip install image-processing-test
```
-------------------------------------------------
## Como usar em qualquer projeto

```python
from image-processing-test.processing import combination
combination.find_difference(image1, image2)
```
![alt text](image.png)

## Autor (quem hospedou o projeto no Test Pypi)
jonathansilva13



## License
[MIT](https://choosealicense.com/licenses/mit/)

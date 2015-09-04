# Minicurso R: Ferramentas práticas 

Bem-vindo ao minicurso sobre R da SEst-UFSCar 2015!

Este minicurso é voltado a pessoas que já têm algum background básico com a 
linguagem `R`, interessadas em aumentar a produtividade nas análises e tornar
seus trabalhos reproduzíveis.

A filosofia do minicurso é que um estatístico precisa ter liberdade
e transparência ao realizar suas análises, mas também precisa focar na 
modelagem, gastando o menor tempo possível na organização dos arquivos 
e na manipulação de dados.

## Programa

O minicurso tem apenas 6 horas de duração e abordará uma quantidade razoável de
tópicos, portanto terá um caráter bastante introdutório e superficial. Vamos
discutir sobre

- manipulação de dados com `dplyr` e `tidyr` (2h),
- visualização de dados com `ggplot2` (1h),
- elaboração de relatórios com `rmarkdown` e `knitr` (1h) e
- desenvolvimento de pacotes com `devtools` (2h)

No decorrer do minicurso também apresentaremos algumas ferramentas que ajudam
muito em diversas tarefas dentro e fora do R, que geralmente perdemos muito 
tempo:

- `stringr` e `lubridade` para manipulação de textos e datas
- `readr`, `readxl` e `haven` para leitura de dados
- `rvest` e `xml2` para web scraping
- `git` e `github` para versionamento e compartilhamento de código

Como é possível observar, o curso é fortemente baseado nos pacotes do cientista
chefe do RStudio Hadley Wickham. Para complementar o conteúdo do curso, 
recomendamos a leitura dos livros

- [Advanced R](adv-r.had.co.nz) para informações gerais e avançadas sobre R.
- [R packages](r-pkgs.had.co.nz) para desenvolvimento de pacotes no R.

## Pré-requisitos

- Funcionalidades básicas do R.
    - R como calculadora
    - Flow control: `if`, `else`, `for`, `while` etc.
    - Vetorização
    - Leitura de dados
- Utilização do RStudio.
    - Instalação do RStudio
    - Criação de projetos

Caso tenha dificuldades, recomendamos a leitura do material básico 
do [Curso R neste link](http://curso-r.github.io/). É rápido!

## Setup

Utilizaremos as seguintes configurações

```
Session info ------------------------------------------------------------------
 setting  value                       
 version  R version 3.2.2 (2015-08-14)
 system   x86_64, linux-gnu           
 ui       RStudio (0.99.667)          
 language en_US                       
 collate  en_US.UTF-8                 
 tz       <NA>                        

Packages ----------------------------------------------------------------------
 package    * version date       source                            
 devtools   * 1.7.0   2015-01-17 CRAN (R 3.2.0)                    
 digest     * 0.6.8   2014-12-31 CRAN (R 3.2.0)                    
 htmltools  * 0.2.6   2014-09-08 CRAN (R 3.2.0)                    
 memoise    * 0.2.1   2014-04-22 CRAN (R 3.2.0)                    
 rmarkdown  * 0.7.3   2015-08-28 Github (rstudio/rmarkdown@ee2f13c)
 rsconnect  * 0.4.1.4 2015-08-28 Github (rstudio/rsconnect@295276c)
 rstudioapi * 0.3.1   2015-04-07 CRAN (R 3.2.0)   
```

Além disso, teremos o programa `pandoc` já instalado.

## Local e data

Dias 17, 18 e 19 de setembro de 2015, das 10h às 12h.  

Universidade Federal de São Carlos.
Centro de Ciências Exatas e Tecnológicas - Departamento de Estatística.  

Via Washington Luís, km 235. Bairro Monjolinho, São Carlos, SP, Brasil.
CEP 13.565-905.


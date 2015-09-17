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

Utilizaremos as seguintes configurações (não se assuste)

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
 package       * version    date       source                            
 assertthat      0.1        2013-12-06 CRAN (R 3.2.0)                    
 BradleyTerry2   1.0-6      2015-02-09 CRAN (R 3.2.0)                    
 brglm           0.5-9      2013-11-08 CRAN (R 3.2.0)                    
 car             2.1-0      2015-09-03 CRAN (R 3.2.2)                    
 caret         * 6.0-52     2015-07-17 CRAN (R 3.2.2)                    
 codetools       0.2-14     2015-07-15 CRAN (R 3.2.2)                    
 colorspace      1.2-6      2015-03-11 CRAN (R 3.2.0)                    
 curl            0.9.3      2015-08-25 CRAN (R 3.2.2)                    
 DBI             0.3.1      2014-09-24 CRAN (R 3.2.0)                    
 devtools      * 1.8.0      2015-05-09 CRAN (R 3.2.2)                    
 digest          0.6.8      2014-12-31 CRAN (R 3.2.0)                    
 dplyr         * 0.4.3.9000 2015-09-04 Github (hadley/dplyr@5489216)     
 foreach         1.4.2      2014-04-11 CRAN (R 3.2.0)                    
 ggplot2       * 1.0.1.9003 2015-09-01 Github (hadley/ggplot2@816d789)   
 git2r           0.11.0     2015-08-12 CRAN (R 3.2.2)                    
 gtable          0.1.2      2012-12-05 CRAN (R 3.2.0)                    
 gtools          3.5.0      2015-05-29 CRAN (R 3.2.2)                    
 htmltools       0.2.6      2014-09-08 CRAN (R 3.2.0)                    
 httr          * 1.0.0      2015-06-25 CRAN (R 3.2.2)                    
 iterators       1.0.7      2014-04-11 CRAN (R 3.2.0)                    
 knitr         * 1.11       2015-08-14 CRAN (R 3.2.2)                    
 lattice       * 0.20-33    2015-07-14 CRAN (R 3.2.1)                    
 lme4            1.1-9      2015-07-05 Github (lme4/lme4@a8538aa)        
 lubridate     * 1.3.3      2013-12-31 CRAN (R 3.2.0)                    
 magrittr        1.5        2014-11-22 CRAN (R 3.2.0)                    
 MASS            7.3-44     2015-08-30 CRAN (R 3.2.2)                    
 Matrix          1.2-2      2015-07-08 CRAN (R 3.2.1)                    
 MatrixModels    0.4-1      2015-08-22 CRAN (R 3.2.2)                    
 memoise         0.2.1      2014-04-22 CRAN (R 3.2.0)                    
 mgcv            1.8-7      2015-07-23 CRAN (R 3.2.1)                    
 minqa           1.2.4      2014-10-09 CRAN (R 3.2.0)                    
 munsell         0.4.2      2013-07-11 CRAN (R 3.2.0)                    
 nlme            3.1-122    2015-08-19 CRAN (R 3.2.2)                    
 nloptr          1.0.4      2014-08-04 CRAN (R 3.2.0)                    
 nnet            7.3-11     2015-08-30 CRAN (R 3.2.2)                    
 pbkrtest        0.4-2      2014-11-13 CRAN (R 3.2.0)                    
 plyr          * 1.8.3.9000 2015-08-10 Github (hadley/plyr@9d8294e)      
 quantreg        5.19       2015-08-31 CRAN (R 3.2.2)                    
 R6              2.1.1      2015-08-19 CRAN (R 3.2.2)                    
 Rcpp            0.12.0     2015-07-25 CRAN (R 3.2.1)                    
 reshape2        1.4.1      2014-12-06 CRAN (R 3.2.0)                    
 rmarkdown     * 0.8        2015-08-30 CRAN (R 3.2.2)                    
 rsconnect       0.4.1.4    2015-08-28 Github (rstudio/rsconnect@295276c)
 rversions       1.0.2      2015-07-13 CRAN (R 3.2.2)                    
 rvest         * 0.2.0.9000 2015-09-02 Github (hadley/rvest@d482ed0)     
 scales        * 0.3.0.9000 2015-09-09 Github (hadley/scales@7fc502c)    
 SparseM         1.7        2015-08-15 CRAN (R 3.2.2)                    
 stringi         0.5-5      2015-06-29 CRAN (R 3.2.2)                    
 stringr       * 1.0.0.9000 2015-09-04 Github (hadley/stringr@5f9319b)   
 tidyr         * 0.3.1.9000 2015-09-14 Github (hadley/tidyr@49b30ea)     
 xml2          * 0.1.2      2015-09-01 CRAN (R 3.2.2)                    
 yaml            2.1.13     2014-06-12 CRAN (R 3.2.0) 
```

Além disso, teremos o programa `pandoc` já instalado.

## Local e data

Dias 17, 18 e 19 de setembro de 2015, das 10h às 12h.  

Universidade Federal de São Carlos.
Centro de Ciências Exatas e Tecnológicas - Departamento de Estatística.  

Via Washington Luís, km 235. Bairro Monjolinho, São Carlos, SP, Brasil.
CEP 13.565-905.


pega_ano <- function(ano) {
  if(!ano %in% 2001:2014) stop('Ano deve estar entre 2001 e 2014')
  u <- sprintf('http://www.chancedegol.com.br/br%02d.htm', ano - 2000)
  h <- u %>%
    GET %>%
    content('text') %>%
    read_html %>%
    html_node('table')
  cores <- h %>%
    html_nodes(xpath = '//font[@color="#FF0000"]') %>%
    html_text
  d <- h %>%
    html_table(header = TRUE) %>%
    tbl_df %>%
    mutate(cor = cores)
  names(d) <- c('data_jogo', 'mandante', 'placar', 'visitante',
                'p_mandante', 'p_empate', 'p_visitante', 'p_vitorioso')
  d
}

cdg <- data_frame(ano = 2001:2014) %>%
  group_by(ano) %>%
  do(pega_ano(.$ano)) %>%
  ungroup

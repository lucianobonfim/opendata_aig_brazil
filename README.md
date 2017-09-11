# Opendata AIG Brazil

## Sobre o Projeto de Dados Abertos

![Modelo de Dados](/reference/data_model.png)

**Download do Conjunto de Dados**

1. [OCORRÊNCIAS AERONÁUTICAS](/data/oco.csv "Tabela de Ocorrências - oco.csv")
2. [AERONAVES ENVOLVIDAS](/data/anv.csv "Tabela de Aeronaves Envolvidas - anv.csv")
3. [FATORES CONTRIBUINTES](/data/ftc.csv "Tabela de Fatores Contribuintes - ftc.csv")
4. [RECOMENDAÇÕES DE SEGURANÇA](/data/rec.csv "Tabela de Recomendações de Segurança - rec.csv")

**Notas Técnicas sobre a Padronização dos Dados**

1. Os dados estão organizados em colunas e demarcados com 'aspas duplas' ("").
2. As colunas das tabelas estão separadas pelo til (~).
3. As tabelas contém cabeçalhos que identificam as suas colunas.
4. Em cada tabela existe uma coluna contendo a informação sobre a data de extração dos dados.
5. O repositório oferece ao todo 53 variáveis / features. Chaves primárias e informações sobre data da extração foram descartadas deste quantitativo.

## Outras Informações "For Dummies"

1. Para uma visualização interativa / dinâmica dos dados visite o [Painel SIPAER](http://painelsipaer.cenipa.aer.mil.br "PAINEL SIPAER").
2. Os relatórios finais podem ser consultados no [site do CENIPA - Relatórios](http://www.cenipa.aer.mil.br/cenipa/paginas/relatorios/relatorios-finais "RELATÓRIOS").
3. As recomendações de segurança podem ser consultadas no [site do CENIPA - Recomendações](http://www.cenipa.aer.mil.br/cenipa/paginas/relatorios/recomendacoes "RECOMENDAÇES DE SEGURANÇA").
4. Artigos científicos sobre o tema podem ser encontrados / publicados na [Revista Conexão SIPAER](http://conexaosipaer.cenipa.gov.br/index.php/sipaer "Conexão SIPAER").
5. Se você insiste em trabalhar com dados abertos no padrão .csv, mas não entende bolhufas sobre relacionamento de tabelas, não tenha vergonha de ser dummie. Sugiro que faça download e utilize o arquivo [Tudo resumido em 1 única tabela](/data/all.csv "Tabela Resumida - all.csv"). Esta tabela não possui o mesmo nível granular das outras 4, porém pode te ajudar!

## Outros Recursos "Bases de Dados"

**Outras bases de dados para consultas:**

1. [NTSB](http://www.ntsb.gov/_layouts/ntsb.aviation/index.aspx "Base de dados do NTSB - Estados Unidos")
2. [BEA](https://www.bea.aero/no_cache/les-enquetes/les-evenements-notifies/ "Base de dados do BEA - França")
3. [RISCO DA FAUNA](http://www.cenipa.aer.mil.br/cenipa/sigra/pesquisa_dadosExt "Reportes de eventos de Risco da Fauna no Brasil")
4. [RAIO LASER](http://www.cenipa.aer.mil.br/cenipa/raio_laser/pesquisa "Reportes de eventos de Raio Laser na Aviação Brasileira")
5. [RISCO BALOEIRO](http://www.cenipa.aer.mil.br/cenipa/baloeiro/pesquisa "Reportes de eventos com soltura de Balões que afetam a Aviação Brasileira")
6. [AERÓDROMOS BRASILEIROS](http://dados.gov.br/dataset/airport21jul16 "Listagem de Aeródromos brasileiros publicada pelo DECEA")
7. [AEROVIAS BRASILEIRAS](http://dados.gov.br/dataset/airway21jul16 "Listagem com as Aerovias Brasileiras publicada pelo DECEA")

**Dicas para melhor aproveitamento dos recursos**

1. Antes de fazer o download dos dados, leia com calma todo o **texto desta página**. Este recurso irá guiá-lo(a) para um adequado entendimento sobre os relacionamentos entre os conjuntos de dados disponíveis (ocorrencia, aeronave envolvida, fator_contribuinte e recomendações de segurança).
2. Para aprofundar-se no tema, visite o site do CENIPA e confira as [LEGISLAÇÕES](http://www.cenipa.aer.mil.br/cenipa/index.php/legislacao) que norteiam a investigação e prevenção de acidentes aeronáuticos no Brasil.
3. Conheça o [Manual de Investigação do SIPAER](http://www.cenipa.aer.mil.br/cenipa/index.php/legislacao/category/7-mca-manual-do-comando-da-aeronautica?download=23%3Amca-3-6). Nos anexos deste documento você encontrará uma **tabela de domínios** (taxonomia) para algumas das variáveis disponíveis nos conjuntos de dados.
4. Devido ao **dinamismo dos trabalhos de investigação** e preocupação do CENIPA com a **agilidade na disponibilização dos dados**, os conjuntos de dados estarão sujeitos a modificações sempre que forem atualizados. Portanto, sempre que possível, utilize a "data de extração" dos conjuntos de dados para justificar/referenciar os seus estudos e análises.
5. Saiba como trabalhar com dados no formato CSV. [Clique aqui para aprender](http://www.portaltransparencia.gov.br/faleConosco/perguntas-tema-download-dados.asp)

## Dúvidas

Se persistirem dúvidas, por gentileza me reporte com uma **Issue**. [Clique aqui para relatar um Problema](https://github.com/nosbielcs/opendata_aig_brazil/issues)

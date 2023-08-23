# GNU_Install

Os dois scripts são usados para instalar o GNU Radio, um kit de ferramentas de rádio definido por software, em um sistema Linux. O primeiro script usa o gerenciador de pacotes apt para instalar o GNU Radio, enquanto o segundo script usa o compilador CMake para construir e instalar o GNU Radio a partir do código-fonte.


O primeiro script começa verificando se o gerenciador de pacotes apt está instalado. Se não estiver instalado, o script o instalará. Em seguida, o script usa o gerenciador de pacotes apt para instalar o GNU Radio. Por fim, o script verifica se o GNU Radio foi instalado com sucesso.

O segundo script começa verificando se o compilador CMake está instalado. Se não estiver instalado, o script o instalará. Em seguida, o script cria um diretório para o projeto GNU Radio. O script então baixa o código-fonte do GNU Radio do GitHub. Em seguida, o script entra no diretório do código-fonte do GNU Radio e usa o compilador CMake para construir o GNU Radio. Por fim, o script instala o GNU Radio. O script então verifica se o GNU Radio foi instalado com sucesso.

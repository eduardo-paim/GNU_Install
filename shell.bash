#!/bin/bash

# Este script instala o GNU Radio em um sistema Linux usando o gerenciador de pacotes apt.

# Verifique se o gerenciador de pacotes apt está instalado.
if ! dpkg-query -s apt >/dev/null 2>&1; then
  echo "O gerenciador de pacotes apt não está instalado. Instalando o apt..."
  apt-get install apt -y
fi

# Instale o GNU Radio.
apt-get install gnuradio -y

# Verifique se o GNU Radio foi instalado com sucesso.
if ! gnuradio-companion; then
  echo "O GNU Radio não foi instalado com sucesso."
  exit 1
fi

echo "O GNU Radio foi instalado com sucesso."

#!/bin/bash

# Este script instala o GNU Radio em um sistema Linux usando o compilador CMake.

# Verifique se o compilador CMake está instalado.
if ! which cmake >/dev/null 2>&1; then
  echo "O compilador CMake não está instalado. Instalando o CMake..."
  apt-get install cmake -y
fi

# Crie um diretório para o projeto GNU Radio.
mkdir gnuradio
cd gnuradio

# Baixe o código-fonte do GNU Radio.
git clone https://github.com/gnuradio/gnuradio.git

# Entre no diretório do código-fonte do GNU Radio.
cd gnuradio

# Construá o GNU Radio.
cmake .
make

# Instale o GNU Radio.
make install

# Verifique se o GNU Radio foi instalado com sucesso.
if ! gnuradio-companion; then
  echo "O GNU Radio não foi instalado com sucesso."
  exit 1
fi

echo "O GNU Radio foi instalado com sucesso."

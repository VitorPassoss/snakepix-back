# Use a imagem oficial do Node.js
FROM node:14

# Crie um diretório de trabalho
WORKDIR /usr/src/app

# Copie o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

COPY . .

RUN npm install

# Exponha a porta que a aplicação usa
EXPOSE 5020

# Comando para rodar a aplicação
CMD ["node", "server.js"]

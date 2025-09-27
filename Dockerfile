# Base oficial do Node
FROM node:18-alpine

# Diretório de trabalho no container
WORKDIR /app

# Copia package.json e instala dependências
COPY package*.json ./
RUN npm install --production

# Copia código da aplicação
COPY . .

# Expõe a porta usada pelo app
EXPOSE 3000

# Comando de inicialização
CMD ["npm", "start"]

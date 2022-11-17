FROM node:lts-alpine

# install simple http server for serving static content
#installare un semplice server http per servire contenuti statici
RUN npm install -g http-server

# make the 'app' folder the current working directory
# rendere la cartella 'app' la directory di lavoro corrente
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
# copia sia 'package.json' che 'package-lock.json' (se disponibile)
COPY package*.json ./

# install project dependencies
# installare le dipendenze del progetto
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
# copiare i file e le cartelle del progetto nella directory di lavoro corrente (ovvero la cartella "app")
COPY . .

# build app for production with minification
# creare app per la produzione con minimizzazione
RUN npm run build

EXPOSE 8080
CMD [ "http-server", "dist" ]

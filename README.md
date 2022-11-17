# Boolgram
Boolgram è un'applicazione che replica il funzionamento di Instagram Web. 

Le tecnologie utilizzate sono: **Axios**, **Js**, **SCSS**, **Vue**. 
>
I dati visualizzati nelle sezioni delle storie, dei post e dei suggerimneti sono date da chiamate API. La funzionalità di questo applicativo è la possibilità di visualizzare i commenti del post.
>
E' stato aggiunto uno skeleton loading animato. Prima che i dati siano effettivamente disponibili, mostriamo uno scheletro di come si visualizzerà il contenuto.
>
Tutto il progetto è stato incluso in un container docker. Per poter utilizzare il container ho scaricato docker per desktop.
>
Successivamente per creare l'immagine ho lanciato il comando
```
docker build -t boolgram/docker-boolgram-app .
```
Per eseguire in un container
```
docker run -it -p 8080:8080 --rm --name docker-boolgram boolgram/docker-boolgram-app
```

# Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

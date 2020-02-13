# canoe-beton 
[![CircleCI](https://circleci.com/gh/ClubCedille/canoe-beton/tree/master.svg?style=svg)](https://circleci.com/gh/ClubCedille/canoe-beton/tree/master)
## To Start Working

- Make sure Node is installed

- Install bower and gulp ```npm install -g bower gulp```  

- Clone the repo

- Run ```npm install``` at the root directory of the project

- Run ```bower install``` at the root directory of the project

## Available gulp Tasks

- ```gulp build``` run all tasks and package the site in the dist folder
- ```gulp serve``` open the app in your browser and make it refresh automatically on file saves
- ```gulp lint``` (included in build task) check your source for errors (mainly for javascript)
- ```gulp clean``` clean the dist and temp folder
- ```gulp serve:dist``` same as serve task, but with the files in the dist folder
- ```gulp wiredep``` inject bower components

## Using docker-compose

To launch the website in a "production" environment, simply use `docker-compose up`

## Deployment
- Make sure forever is installed
```
npm install -g forever
```
- Copy the config.skel as config.prod.js in the config folder
```
cp config/config.skel config/config.prod.js
```
- Modify the config.prod.js with production configuration
- Build the application
```
gulp build
```
- Start the application as a daemon
```
NODE_ENV=prod forever server.js
```

## Aide pour la modification du site canoe-beton
(sans Git commands)

### Mettre à jour votre Fork

- Pour s'assurer que votre repository est à jour, supprimez la et appuyez sur `Fork` dans la repository source 
 
    1. Cliquer sur `Settings`  [Image en aide](https://github.com/jalilbengoufa/Help_canoe-beton/blob/master/1.png)

    2. Supprimer la repository en cliquant sur `Delete this repository` [Image en aide](https://github.com/jalilbengoufa/Help_canoe-beton/blob/master/2.png )
    3. Dans `ClubCedille/canoe-beton`  appuyer sur  `Fork` [Image en aide](https://github.com/jalilbengoufa/Help_canoe-beton/blob/master/3.png)


### Modifier l'image du background

- Changer le path de l'image dans la section intro du fichier `style.scss` qui se trouve dans `app/styles/style.scss`
  - *le path à modifier est dans la ligne `background: url(../images/nouvelleImage.jpg) no-repeat center;`*


### Ajouter un membre

 - Il suffit d'ajouter ce code HTML dans la `Section : Team ` du fichier `index.html`
 
    - *Il faut un maximum de 4 memebre entre le tag `<div class="row">`*
    - *Ne pas oublier de changer le path pour la photo*
    
 ```
  <div class="col-xs-6 col-sm-6 col-md-3">
      <div class="wow bounceInUp" data-wow-delay="0.5s">
        <div class="team boxed-grey">
          <div class="inner">
            <h5>Nom du membre</h5>
            <div class="avatar"><img data-src="images/pathDuDossierPhotos.jpg" alt=""
                                     class="img-responsive img-circle"/></div>
            <p class="subtitle">Post</p>
          </div>
        </div>
      </div>
  </div>
 ```
 
 ### Ajouter une compétition
 
 - Ajouter ce code HTML dans la `Section : Competition ` du fichier `index.html`
  ```
  <br>
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-lg-4">
        <p><b>Type de compétition:</b> à modifier</p>
        <p><b>Lieu de compétition:</b> à modifier</p>
        <p><b>Placement:</b> à modifier</p>
      </div>
      <div class="col-xs-12 col-sm-12 col-lg-8">
      <img data-src="images/pathImageCompetition.png" alt=""
           class="img-responsive "/>
      </div>
    </div>
</div>
  ``` 
  
### Ajouter un sponsor

 - Ajouter ce code HTML dans la `Section : sponsors ` du fichier `index.html`
   - *Il faut que les sponsors soient entre le tag `<div class="row">` pour être sur la même ligne*
  ``` 
  <div class="col-xs-6 col-sm-3 col-md-3">
       <div class="wow bounceInUp" data-wow-delay="0.2s">
         <div class="team boxed-grey">
           <div class="inner">
             <div><img data-src="images/sponsors/image.jpg" alt="" class="img-responsive"/></div>
           </div>
         </div>
       </div>
  </div>
  ``` 
  
### Modification de la gallery 

 - Ajouter ce code HTML dans la `Section : gallery ` du fichier `index.html`pour inserer une photo 
   - *Juste après la ligne  `<div class="carousel-inner" role="listbox">`*
 
 ``` 
 <div class="item active">
        <img data-src="images/PathImage.jpg" alt="img1" class="img-responsive">
 </div>
 
 ``` 


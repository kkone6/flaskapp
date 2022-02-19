# Clone Project:

cloner le projet avec la commande suivante 

git clone git@github.com:kkone6/flaskapp.git

   or
   
git clone https://github.com/kkone6/flaskapp.git

# Build Docker Image 

Verifier que vous n'avez pas une image du meme noms que flask_img en faisant la commande :

`docker images`

si oui faite la commande ci-apres pour la suprimer : 

`docker rmi flask_img`

Ensuite rendez vous sur le dossier flaskapp a l'aide la commande :

`cd flaskapp`

Enfin faite la commande ci apres pour construire l'immage. 

`docker build -t flaskapp_img .`

docker images (pour verifier que l'image a ete construite)

# Run docker container 

`docker run -d --name flaskapp_cnt -p 80:5000 flaskapp_img`

# Test flaskapp 
http://localhost/

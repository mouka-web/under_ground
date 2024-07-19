# Utiliser l'image officielle de PHP
FROM php:7.4-apache

# Copier les fichiers de l'application dans le conteneur
COPY . /var/www/html/

# Changer le propriétaire des fichiers copiés
RUN chown -R www-data:www-data /var/www/html/

# Exposer le port 80
EXPOSE 80

FROM php:7.4-apache

# Installer les extensions nécessaires
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copier les fichiers de l'application dans le conteneur
COPY . /var/www/html/

# Changer le propriétaire des fichiers copiés
RUN chown -R www-data:www-data /var/www/html/

# Exposer le port 80
EXPOSE 80

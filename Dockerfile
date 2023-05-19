FROM ubuntu
<<<<<<< HEAD
RUN mkdir mohan
save
=======
RUN apt-get update
RUN touch /root/index.html
RUN apt-get install -y apache2 apache2-utils
EXPOSE 80
RUN echo "Securekloud sample page" >> /root/index.html
COPY index.html /var/www/html/
CMD apachectl -D FOREGROUND
>>>>>>> parent of cc3a4dd (Update Dockerfile)

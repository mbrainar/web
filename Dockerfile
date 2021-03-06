FROM nginx

COPY ./env_setup.sh /root
RUN chmod +x /root/env_setup.sh

#RUN echo $$BUILD_NUMBER
#RUN echo $$BUILD_NUMBER >> /usr/share/nginx/html/build.txt

EXPOSE 80

COPY ./app /usr/share/nginx/html


CMD ["/root/env_setup.sh"]

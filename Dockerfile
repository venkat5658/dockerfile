FROM nginx:latest
ADD /usr/share/nginx/html/
COPY https://raw.githubusercontent.com/venkat5658/dockerfile/main/Index.html /usr/share/nginx/html/
RUN chmod +r /usr/share/nginx/html/index.html/
RUN docker run -d --name nginx -p 8080:80 nginx:latest
RUN aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 179625949269.dkr.ecr.ap-south-1.amazonaws.com
RUN docker build -t nginx .
RUN docker tag nginx:latest 179625949269.dkr.ecr.ap-south-1.amazonaws.com/nginx:latest
RUN docker push 179625949269.dkr.ecr.ap-south-1.amazonaws.com/nginx:latest

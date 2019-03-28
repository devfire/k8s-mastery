docker run -d -p 80:80 sa-frontend
docker run -d -p 8080:8080 -e SA_LOGIC_API_URL='http://172.16.1.118:5000' sa-webapp
#docker run -d -p 8080:8080  sa-webapp
docker run -d -p 5000:5000 sa-logic

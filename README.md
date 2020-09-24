

Due to a recent update in the Create React App library, we will need to change how we start our containers.

In the upcoming lecture, you'll need to add the -it flag to run the container in interactive mode:

d run -it -p 3000:3000 CONTAINER_ID

d run -it -p 3000:3000 -v /app/node_modules -v $(pwd):/app 33b350bba91


######
# Install travis cli and encrypt google service account json
######

docker run -it -v $(pwd):/app ruby:2.4 sh
cd app
gem install travis
travis -> no
travis login
travis encrypt-file service-account.json -r isaacloft/complex-kube
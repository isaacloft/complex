

Due to a recent update in the Create React App library, we will need to change how we start our containers.

In the upcoming lecture, you'll need to add the -it flag to run the container in interactive mode:

d run -it -p 3000:3000 CONTAINER_ID

d run -it -p 3000:3000 -v /app/node_modules -v $(pwd):/app 33b350bba91
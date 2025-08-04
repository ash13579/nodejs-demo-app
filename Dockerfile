# 1. Start with a basic ingredient: a lightweight version of Node.js
FROM node:18-alpine

# 2. Create a special folder inside the box for our app
WORKDIR /usr/src/app

# 3. Copy the list of ingredients (package.json) first.
# This is a clever trick to speed things up later.
COPY package*.json ./

# 4. Install all the tools the app needs based on that list
RUN npm install

# 5. Now, copy the rest of our app's code into the folder
COPY . .

# 6. Tell the outside world that our app uses port 3000
EXPOSE 3000

# 7. Finally, state the command to start the app when the box is opened
CMD [ "node", "app.js" ]
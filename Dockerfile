FROM node:20-alpine
WORKDIR /app

COPY package.json ./
RUN npm install

COPY . ./

ENV GOOGLE_ID=510781597310-r9089pt1a3m1uhk64boimumuppfle2ta.apps.googleusercontent.com
ENV GOOGLE_CLIENT_SECRET=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
ENV MONGODB_URI=mongodb+srv://coediary:RCvgVDTsuujlQMkl@cluster1.wnxar7i.mongodb.net/?retryWrites=true&w=majority&appName=Cluster1
ENV NEXTAUTH_URL=http://localhost:3000
ENV NEXTAUTH_URL_INTERNAL=http://localhost:3000
ENV NEXTAUTH_SECRET=ILs1hhJGBi0h9VAr8VRjTcKk1DqCBkKf6qn66jTBu+Y=

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]

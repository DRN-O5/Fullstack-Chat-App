FROM node:22

WORKDIR /app

# Copy root + server package.json
COPY package*.json ./
COPY server/package*.json server/

# Install root deps (scripts)
RUN npm install

# Install server deps (IMPORTANT)
RUN npm install --prefix server

# Copy the rest
COPY . .

ENV PORT=5001
ENV NODE_ENV=production

EXPOSE 5001

CMD ["npm", "start"]

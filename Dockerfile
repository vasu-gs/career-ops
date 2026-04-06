FROM node:18-slim

RUN npx playwright install --with-deps chromium

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

CMD ["tail", "-f", "/dev/null"]

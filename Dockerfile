# Gunakan image Node.js 18 (Alpine untuk ukuran kecil)
FROM node:18-alpine

# Tetapkan direktori kerja di dalam kontainer
WORKDIR /app

# Salin package.json dan package-lock.json
COPY package*.json ./

# Instal dependensi
RUN npm install

# Salin sisa file aplikasi
COPY . .

# Expose port yang digunakan oleh aplikasi
EXPOSE 80

# Perintah untuk menjalankan aplikasi
CMD ["node", "app.js"]
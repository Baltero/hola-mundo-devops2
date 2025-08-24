const request = require('supertest');
const app = require('./index'); // Asegúrate de exportar `app` en index.js

test('GET / debería devolver Hola Mundo', async () => {
  const response = await request(app).get('/');
  expect(response.text).toBe('Hola Mundo desde DevOps CI/CD!');
  expect(response.statusCode).toBe(200);
});

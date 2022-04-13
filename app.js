import express from 'express';
import swaggerUi from 'swagger-ui-express';
import YAML from 'yamljs';

const app = express();
const port = 3000;

const swaggerDoc = YAML.load('./swagger/build/swagger.yaml');

app.get('/', (req, res) => {
  res.send('OK');
});

app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDoc));

app.listen(port, () => {
  console.log(`listening on port ${port}`);
});

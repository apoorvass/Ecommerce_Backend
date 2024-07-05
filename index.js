const express= require('express');
const mysql= require('mysql');
const cors= require('cors');

const app= express()
const port=3000

app.use(cors())

const db=mysql.createConnection({
    host:'local host',
    user:'root',
    password:'',
    database: 'ecommerce',
});

db.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
  } else {
    console.log('Connected to MySQL');
  }
});

// Express Middleware
app.use(express.json());


// API Routes
app.post('/cars', (req, res) => {
  console.log(req.body.car)
  let query = `SELECT * FROM featuredcars WHERE model='${req.body.car}`;
  console.log(query);
    db.query(query, (err, results) => {
   
      if (err) {
        res.status(500).send('Internal Server Error');
        return;
      }

      console.log(results)
      res.json(results);
      
    });
  }
);

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`)
});




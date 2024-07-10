const express= require('express');
const mysql= require('mysql');
const cors= require('cors');

const app= express()
const port=3000

app.use(cors())

const db = mysql.createConnection({
  host:'localhost',
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

app.post('/featuredcategories', (req, res) => {
  let query = `SELECT * FROM featuredcategories`;
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


app.post('/topproducts', (req, res) => {
  let query = `SELECT * FROM top_products`;
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


app.post('/categoryproducts', (req, res) => {
  let {category} = req.body
  let query = `SELECT * FROM ${category}`;
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

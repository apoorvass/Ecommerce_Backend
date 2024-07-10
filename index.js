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


app.post('/Furnituers', (req, res) => {
  let query = `SELECT * FROM furnituers`;
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


app.post('/Footwears', (req, res) => {
  let query = `SELECT * FROM footwears`;
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

app.post('/Clothes', (req, res) => {
  let query = `SELECT * FROM clothes`;
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


app.post('/HomeAppliances', (req, res) => {
  let query = `SELECT * FROM home_appliances`;
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


app.post('/Electronics', (req, res) => {
  let query = `SELECT * FROM electronics`;
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



app.post('/Watches', (req, res) => {
  let query = `SELECT * FROM watches`;
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


app.post('/Toys', (req, res) => {
  let query = `SELECT * FROM toys`;
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


app.post('/Grocery', (req, res) => {
  let query = `SELECT * FROM groceries`;
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


app.post('/Mobiles', (req, res) => {
  let query = `SELECT * FROM mobiles`;
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


app.post('/Sports', (req, res) => {
  let query = `SELECT * FROM sports`;
  console.log(query);
    db.query(query, (err, results) => {
   
      if (err) {
        res.status(500).send('Internal Server Error');
        return;
      }

      console.log(results)
      res.json(results);0
      
    });
  }
);

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`)
});



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


app.post('/products', (req, res) => {

  let {id ,category} = req.body

  let query = `SELECT * FROM ${category} where id=${id}` ;
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

app.post('/relatedproducts', (req, res) => {
  let {category} = req.body
  let query = `SELECT * FROM ${category} ORDER BY RAND() LIMIT 4;`;
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


app.post('/signup', (req, res) => {
  let {fullname, email, password} = req.body;
  let query = `INSERT INTO signup(fullname,email,password) VALUES ('${fullname}','${email}', '${password}')`;
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


app.post('/login', (req, res) => {
  let {email, password} = req.body;
  let query = `SELECT * FROM signup WHERE email = '${email}' AND password = '${password}'`;
  console.log(query);
  db.query(query, (err, results) => {
    if (err) {
      console.error('Error fetching data:', err);
      return res.status(500).send({ message: 'Internal Server Error' });
    }
    
    if (results.length > 0) {
      return res.status(200).send({ message: 'Login Successful' });
    } else {
      return res.status(401).send({ message: 'Incorrect ID or Password' });
    }
    console.log(results);
  });
});


app.post('/contact', (req, res) => {
  let {email, subject, message} = req.body;
  let query = `INSERT INTO contact(email,subject,message) VALUES ('${email}','${subject}', '${message}')`;
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

app.post('/checkout', (req, res) => {
  let {name, email, country, city, pincode, mobile, address, voucher} = req.body;
  let query = `INSERT INTO checkout(name, email, country, city, pincode, mobile, address, voucher) VALUES ('${name}','${email}','${country}', '${city}','${pincode}','${mobile}','${address}','${voucher}')`;
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



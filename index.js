const express = require('express')
const app = express()
const bodyParser = require('body-parser');
const port = 3000

require('./dependencies/mongoose');
const Item = require('./models/Item');

app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', async (req, res) => {

  const items = await Item.find({});

  res.send(`
    <div style="padding:55px">

      <h1>Item Names [master updated 9]</h1>
      <pre>${JSON.stringify(items, null, 2)}</pre>
      <br /><br />

      <h2>Create new item</h2>
      <form method="post" action="/">
        name: <input type="text" name="name"><br />
        <input type="submit" value="Submit">
      </form>

      <br /><br />
      <h3>Env</h3>
      <pre>${JSON.stringify(process.env,null,2)}</pre>

    </div>
  `)
});

app.post('/', async (req, res) => {

  const item = new Item( req.body );
  await item.save();

  res.redirect('/');

})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))

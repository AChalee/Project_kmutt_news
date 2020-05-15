const express = require('express');
const router = express.Router();


// const user = require('@controllers/user.js');
const user = require('@controllers/test.js');


// router.get('/api/users/:id', user.getUserById);

// router.get('/api/users', user.getUsers);

// router.post('/api/users', user.newUser);

// router.delete('/users/:id', user.deleteUser);

// router.put('/api/users', user.updateUser);

router.get('/test',user.test);
// res.json({status: true, message: 'Hello World'});
// });

module.exports = router;
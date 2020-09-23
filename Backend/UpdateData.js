// Import Admin SDK
const admin = require('firebase-admin');
const serviceAccount = require('./serviceAccountKey.json');

//initialize admin SDK using serciceAcountKey
admin.initializeApp({
	credential: admin.credential.cert(serviceAccount)
});
const db = admin.firestore();



const cityRef = db.collection('cities').doc('DC');

// Set the 'capital' field of the city
const res = await cityRef.update({capital: true});



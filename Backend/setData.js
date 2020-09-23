// Import Admin SDK
const admin = require('firebase-admin');
const serviceAccount = require('./serviceAccountKey.json');

//initialize admin SDK using serciceAcountKey
admin.initializeApp({
	credential: admin.credential.cert(serviceAccount)
});
const db = admin.firestore();



//Add data,set data   
//ถ้าไม่มี collection เค้าจะสร้างขึ้นใหม่ให้

// const docRef = db.collection('SetData').doc('1');
// 	docRef.set({
//      topic: '1 new',
//  	 	detail: 'adddd',
 	 
//     });


//     console.log('Added / Set Data');


  ///////////////////////////////
///////////////////////////////


//set ข้อมูล  https://firebase.google.com/docs/firestore/manage-data/add-data

// const data = {
//     topic: '2 new',
//     detail: 'adddd',
// };
// const res =  db.collection('SetData').doc('1').set(data);

// console.log('Added / Set Data');



///////////////////////////////
// //set ข้อมูล
// const data = {
// 	stringExample: 'Hello, World!',
// 	booleanExample: true,
// 	numberExample: 20,
// 	dateExample: admin.firestore.Timestamp.fromDate(new Date('December 10, 1815')),
// 	arrayExample: [5, true, 'hello'],
// 	nullExample: null,
// 	objectExample: {
// 	  a: 5,
// 	  b: true
// 	}
//   };
  
// const res =  db.collection('Post').doc('1').set(data);

//https://www.youtube.com/watch?v=Z87OZtIYC_0
//https://medium.com/feedflood/write-to-cloud-firestore-using-node-js-server-c84859fefb86
//https://firebase.google.com/docs/firestore/query-data/get-data#node.js_3
//https://firebase.google.com/docs/firestore/quickstart#auth-required


// Import Admin SDK
const admin = require('firebase-admin');
const serviceAccount = require('./serviceAccountKey.json');

//initialize admin SDK using serciceAcountKey
admin.initializeApp({
	credential: admin.credential.cert(serviceAccount)
});
const db = admin.firestore();




///////////////////////////////
//ทำไม่ได้ ดึงข้อมูล
// const snapshot = db.collection('us').get();
// 	snapshot.forEach((doc) => {
// 		console.log(doc.id, '=>', doc.data());
// 	});
	  

//ทำไม่ได้ ดึงข้อมูล

///////////////////////////////




getDialogue().then(result =>{
	console.log(result);
	const obj = result;
	const data = {
		detail: obj.detail,
		topic: obj.topic
	};
	return db.collection('Post').doc('1')
	.set(data).then(() => 
	console.log('Written to database'));
});

function getDialogue(){
	return new Promise(function(resolve, reject) {
	resolve({
	"detail":"I'm ",
	"topic":"mukkkk"
	});
})
}















// async function getDocument(db) {

// const data = db.collection('Post').doc('1');
// const doc =  data.get();
// if (!doc.exists) {
//   console.log('No such document!');
// } else {
//   console.log('Document data:', doc.data());
// }
// }
























///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////


// class FirebaseService {
// 	constructor(name) {
// 	  this.name = name;
// 	}
  
// 	ref(id) {
// 	  return firebase.database().ref(`${this.name}/${id}`);
// 	}
  
// 	async get(id) {
// 	  const ref = await this.ref(id).once('value');
  
// 	  return ref.value;
// 	}
  
// 	async create(data) {
// 	  const id = firebase.database().ref().child(`/${this.name}`).push().key;
  
// 	  return this.update(id, data);
// 	}
  
// 	async update(id, data) {
// 	  this.ref(id).set(data);
  
// 	  return this.get(id);
// 	}
  
// 	async remove(id) {
// 	  const deletedEntry = await this.get(id);
  
// 	  this.ref(id).remove();
  
// 	  return deletedEntry;
// 	}
//   }





/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////


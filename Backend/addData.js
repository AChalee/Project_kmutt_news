
// Import Admin SDK
const admin = require('firebase-admin');
const serviceAccount = require('./serviceAccountKey.json');

//initialize admin SDK using serciceAcountKey
admin.initializeApp({
	credential: admin.credential.cert(serviceAccount)
});
const db = admin.firestore();



//Add a new document with a generated id.  /https://firebase.google.com/docs/firestore/manage-data/add-data
//ถ้าไม่มี collection ก็สร้างใหม่เลย 

const res =  db.collection('News').add({
	topic: 'ขอเชิญเที่ยวงาน Bangmod Marketplace Festival ',
	detail:'เทศกาลขายสนุก ช้อปสนั่น จับมือกันพ้นวิกฤติ พบกับร้านจำหน่ายสินค้าของนักศึกษา และ นักศึกษาเก่า มจธ. เพลิดเพลินไปกับเสียงเพลงและการแสดงของวง KMUTT Chorus และ KMUTT Dance Club เมืองสุขสยาม ณ ไอคอนสยาม ในวันที่ 18-20 กันยายนนี้ ตั้งแต่เวลา 10.00 น. - 22.00 น.',
	pathImage: '',
	hashtag: ['#KMUTT','#BangmodMarketplace']

});
  
  console.log('Added document with ID: ', res.id);




  ////////////////////////////////////////////
  //////////////////////////////////////////////
  //////////////////////////////////////////////



// const addData = db.collection('AddData').doc();

// // Later...
// const res =  addData.set({
//   // ...
// });
  






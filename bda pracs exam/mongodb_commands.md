# Mongo DB commands

1. Create a database or use an existing one<br>
`use demo`
2. Show existing databases<br>
`show databases`
3. Show existing collections<br>
`show collections`
4. Create a collection named "project"<br>
`db.createCollection("project")`
5. Insert into Collection<br>
` db.project.insert({id:1,prjname:"chatbot",pdomain:"nlp"})`<br>
outputs as:- `{"_id":"5db69bc52fd13dd46932d5c5","id":1,"prjname":"chatbot","pdomain":"nlp"}` <br>
`db.project.insert({_id:2,prjname:"gans",pdomain:"dl"})`<br>
outputs as:- `{"_id":2,"prjname":"gans","pdomain":"dl"}` <br>
6. Display all contents of collection<br>
`db.project.find()`<br>
outputs as:- `{ "_id" : ObjectId("5db69bc52fd13dd46932d5c5"), "id" : 1, "prjname" : "chatbot", "pdomain" : "nlp" }
{ "_id" : 2, "prjname" : "gans", "pdomain" : "dl" }
{ "_id" : ObjectId("5db69da62fd13dd46932d5c6"), "prjname" : "gans", "pdomain" : "dl" }
{ "_id" : 1, "prjname" : "cmf", "pdomain" : "web" }`
7. Types of insert: <br>
  7.1 Having id (i.e. `_id`) in collection and inserting in it, so this will result in duplicate error <br>
  ` db.project.insert({_id:2,prjname:"gans",pdomain:"dl"})` <br>
  7.2 Not having id will automatically generate its own<br>
  `db.project.insert({prjname:"gans",pdomain:"dl"})` <br> outputs as:-
  `{"_id":"5db69da62fd13dd46932d5c6","prjname":"gans","pdomain":"dl"}`<br>
  7.3 id doesn't exists in collection so it gets added<br>
  `db.project.insert({_id:1,prjname:"cmf",pdomain:"web"})`<br>
  outputs as:- `{"_id":1,"prjname":"cmf","pdomain":"web"}`<br>
8. Types of Update operations<br>
  8.1 upsert(true) and _id matches so it will update the result<br> 
  ` db.project.update({_id:2},{$set:{prjname:"xyz"}},{upsert:true})`<br>
  8.2 upsert(true) and _id does not match so it will insert a new value<br>
  `db.project.update({_id:3},{$set:{prjname:"xyz"}},{upsert:true})`<br>
  8.3 upsert(false) and no _id matches so no change i.e. no updation happens<br>
  `db.project.update({_id:4},{$set:{prjname:"xyz"}})` <br>
  8.4 upsert(false) and _id matches so updation happens<br>
  `db.project.update({_id:3},{$set:{prjname:"abc"}})`<br>
  8.5 To update multiple rows we use multi(true) i.e. it checks wherever match is found and updates those<br>
  `db.project.update({id:2},{$set:{prjname:"abc"}},{multi:true})`<br>
  8.6 multi(false) will update the first occured value only and not all<br>
  ` db.project.update({id:2},{$set:{prjname:"xyz"}},{multi:false})`<br>
9. Remove command<br>
  9.1 Remove with condition<br>
  `db.project.remove({"id":1})`<br>
  9.2 Without condition<br>
  `db.project.remove({})`<br>
10. Types of save commands<br>
  10.1 Having _id in collection so it will update<br>
  `db.project.save({_id:3,prjname:"xyz"})`<br>
  10.2 _id not there in collection so it inserts one of it own<br>
  `db.project.save({prjname:"pqr"})`<br>
  10.3 _id not present in collection so we insert the values<br>
  `db.project.save({_id:"5",prjname:"pqr"})`<br>
10. 
  
  
  
  
  
  
  
  
  
  
  

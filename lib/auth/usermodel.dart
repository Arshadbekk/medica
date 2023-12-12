class userModel{
String? name;
String? email;
String? password;
String? number;
String? id;
DateTime? createdTime;

userModel({
  required this.name,
  required this.email,
  required this.password,
  required this.number,
  required this.id,
  required this.createdTime,

});

factory userModel.fromJson(Map<String,dynamic> json)=>
    userModel(
        name: json['name'],
        email: json['email'],
        password: json['password'],
        number: json['number'],
        id: json['id'],
        createdTime: json['createdTime'].toDate()
    );

Map<String,dynamic> toJson()=>{
  "name":name,
  "email":email,
  "password":password,
  "number":number,
  "id":id,
  "createdTime":createdTime
};

}
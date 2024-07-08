class MyUserEntity{
  String userId;
  String email;
  String name;
  bool hasActiveCart;
  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });
   //in order to organize data to send it to firebase DB because the  database doesn't understand objects that we create with our classes 
  Map<String,Object?> toDocument(){
    return {
      'userId':userId,
      'email':email,
      'name':name,
      'hasActiveCart':hasActiveCart,
    };
  }
  static MyUserEntity fromDocument (Map<String,dynamic> doc){
    return MyUserEntity(
      userId: doc['userId'],
       email: doc['email'],
        name: doc['name'], 
        hasActiveCart: doc['hasActiveCart']);

  }
}
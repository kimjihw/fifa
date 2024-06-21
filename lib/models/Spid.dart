class Spid{
  final int id;
  final String name;

  Spid({required this.id, required this.name});

  factory Spid.fromJson(Map<String, dynamic> json){
    return Spid(
      id: json['id'],
      name: json['name']
    );
  }
}
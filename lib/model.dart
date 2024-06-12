class Projectmodel {
  String? name;
  String? address;
  String? email;
  int? phone;

  Projectmodel({
    this.name,
    this.address,
    this.email,
    this.phone,
  });

  Projectmodel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'address': address,
      'email': email,
      'phone': phone,
    };
  }
}

class Order {
  final String name;
  final String email;
  final String phone_number;
  final String address;
  final String car_id;
  final String transaction_date;
  final String lease_time;
  final String return_time;
  final String lease_date;
  final String return_date;
  final String where_go;
  final String amount;
  // final String img_ktp;

  Order({
    this.name,
    this.email,
    this.phone_number,
    this.address,
    this.car_id,
    this.transaction_date,
    this.lease_time,
    this.return_time,
    this.lease_date,
    this.return_date,
    this.where_go,
    this.amount,
    // this.img_ktp
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      name: json['name'],
      email: json['email'],
      phone_number: json['phone_number'],
      address: json['address'],
      car_id: json['car_id'],
      transaction_date: json['transaction_date'],
      lease_time: json['lease_time'],
      return_time: json['return_time'],
      lease_date: json['lease_date'],
      return_date: json['return_date'],
      where_go: json['where_go'],
      amount: json['amount'],
      // img_ktp: json['img_ktp'],
    );
  }
}

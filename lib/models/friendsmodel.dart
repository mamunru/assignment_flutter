class friendsmodel {
  String? gender;
  Name? name;
  Location? location;
  String? email;
  String? phone;
  String? cell;
  Picture? picture;
  String? nat;

  friendsmodel(
      {this.gender,
      this.name,
      this.location,
      this.email,
      this.phone,
      this.cell,
      this.picture,
      this.nat});

  friendsmodel.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    email = json['email'];
    phone = json['phone'];
    cell = json['cell'];
    picture =
        json['picture'] != null ? new Picture.fromJson(json['picture']) : null;
    nat = json['nat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this.gender;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['cell'] = this.cell;
    if (this.picture != null) {
      data['picture'] = this.picture!.toJson();
    }
    data['nat'] = this.nat;
    return data;
  }
}

class Name {
  String? title;
  String? first;
  String? last;

  Name({this.title, this.first, this.last});

  Name.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    first = json['first'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['first'] = this.first;
    data['last'] = this.last;
    return data;
  }
}

class Location {
  String? city;
  String? state;
  String? country;
  String? postcode;

  Location({this.city, this.state, this.country, this.postcode});

  Location.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postcode = json['postcode'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['postcode'] = this.postcode;
    return data;
  }
}

class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  Picture.fromJson(Map<String, dynamic> json) {
    large = json['large'];
    medium = json['medium'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['large'] = this.large;
    data['medium'] = this.medium;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}

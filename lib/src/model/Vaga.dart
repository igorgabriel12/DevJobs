class Vaga {
  String title;
  String company;
  String created_at;
  String location;
  String description;
  String type;
  String url;
  String company_url;

  Vaga(this.title, this.company, this.created_at, this.location, this.url,
      this.company_url, this.type, this.description);

  factory Vaga.fromJson(Map<String, dynamic> json) {
    var title = json["title"];
    var company = json["company"];
    var created_at = json["created_at"];
    var location = json["location"];
    var type = json["type"];
    var url = json["url"];
    var company_url = json["company_url"];
    var description = json["description"];
    return Vaga(title, company, created_at, location, type, url, company_url,
        description);
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'company': company,
        'created_at': created_at,
        'location': location,
        'type': type,
        'url': url,
        'company_url': company_url,
        'description': description,
      };
}

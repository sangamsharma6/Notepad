/*Part-1 in in this series*/

class Note {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;


  Note(this._title,this._date, this._priority ,[this._description]);
  Note.withId(this._title,this._date, this._priority,[this._description]);

  /*Getters and Setters*/
  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get title => _title;

  int get priority => _priority;

  set priority(int value) {
    if (value >= 1 && value <= 2) {
      _priority = value;
    }
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  set title(String value) {
    _title = value;
  }

/*used to save and retrieve from database*/
/*Convert note object to map object*/
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map){
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
}
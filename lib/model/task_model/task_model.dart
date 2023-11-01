class Task {
  final int id;
  final String title;
  final String description;
  final String date;
  final String priority;

  Task({
    required this.id,
    this.title = '-',
    this.description = '-',
    this.date = '-',
    this.priority = '-',
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      date: json['date'],
      priority: json['priority'],
    );
  }

  factory Task.toJson(Task task) {
    return Task(
      id: 0,
      title: '-',
      description: '-',
      date: '-',
      priority: '-',
    );
  }
}

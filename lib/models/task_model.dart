class TaskModel {
  String id; // Task ID
  String uid; // User ID
  String title; // Task title
  String description; // Task description
  String status; // Task status
  String category; // Task category
  String pinned; // Task pinned
  DateTime pinnedAt; // Task pinned at
  int pinnedPositon; // Task pinned position
  bool archived; // Task archived
  DateTime archivedAt; // Task archived at
  bool completed; // Task completed
  DateTime completedAt; // Task completed at
  String color; // task color
  DateTime createdAt; // date task was created
  DateTime updatedAt; // date task was updated

  TaskModel({
    required this.id,
    required this.uid,
    required this.title,
    required this.description,
    required this.status,
    required this.category,
    required this.pinned,
    required this.pinnedAt,
    required this.pinnedPositon,
    required this.archived,
    required this.archivedAt,
    required this.completed,
    required this.completedAt,
    required this.color,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert a TaskModel object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'uid': uid,
      'title': title,
      'description': description,
      'status': status,
      'category': category,
      'pinned': pinned,
      'pinnedAt': pinnedAt,
      'pinnedPosition': pinnedPositon,
      'archived': archived,
      'archivedAt': archivedAt,
      'completed': completed,
      'completedAt': completedAt,
      'color': color,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  // Convert a Map object into a TaskModel object
  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'],
      uid: map['uid'],
      title: map['title'],
      description: map['description'],
      status: map['status'],
      category: map['category'],
      pinned: map['pinned'],
      pinnedAt: map['pinnedAt'],
      pinnedPositon: map['pinnedPosition'],
      archived: map['archived'],
      archivedAt: map['archivedAt'],
      completed: map['completed'],
      completedAt: map['completedAt'],
      color: map['color'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  // Convert a JSON object into a TaskModel object
  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'],
      uid: json['uid'],
      title: json['title'],
      description: json['description'],
      status: json['status'],
      category: json['category'],
      pinned: json['pinned'],
      pinnedAt: json['pinnedAt'],
      pinnedPositon: json['pinnedPosition'],
      archived: json['archived'],
      archivedAt: json['archivedAt'],
      completed: json['completed'],
      completedAt: json['completedAt'],
      color: json['color'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  // Convert a task model into a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'title': title,
      'description': description,
      'status': status,
      'category': category,
      'pinned': pinned,
      'pinnedAt': pinnedAt,
      'pinnedPosition': pinnedPositon,
      'archived': archived,
      'archivedAt': archivedAt,
      'completed': completed,
      'completedAt': completedAt,
      'color': color,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}

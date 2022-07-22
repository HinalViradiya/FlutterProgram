class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

final todoList = List.generate(
  20,
  (index) => const Todo("{TodoList}", "To Do ListDesciption"),
);

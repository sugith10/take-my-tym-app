String capitalize(String name) {
  if (name.isEmpty) {
    return name;
  }
  return name.substring(0, 1).toUpperCase() + name.substring(1).toLowerCase();
}
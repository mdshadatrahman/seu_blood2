class BloodRequests {
  String name;
  String text;
  String image;
  bool isUrgent;

  BloodRequests({
    required this.name,
    this.isUrgent = true,
    required this.image,
    required this.text,
  });
}

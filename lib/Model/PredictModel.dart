class predictModel {
  double carat = 0;
  String cut = "";
  String color = "";
  String clarity = "";
  double depth = 0; // Change from depthValue to depth
  double table = 0; // Change from tableValue to table

  predictModel({
    required this.carat,
    required this.cut,
    required this.color,
    required this.clarity,
    required this.depth,
    required this.table,
  });

  Map<String, dynamic> toJson() {
    return {
      "carat": carat,
      "cut": cut,
      "color": color,
      "clarity": clarity,
      "depth": depth,  // Use "depth" here
      "table": table,  // Use "table" here
    };
  }
}

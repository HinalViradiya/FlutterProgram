class Arguments {
  final String title;
  final String image;
  final String totTime;
  final String lang;
  final String videoLink;


  const Arguments(this.title, this.image,this.videoLink,this.totTime,this.lang);
}

final todoList = List.generate(
  20,
  (index) => const Arguments("{Bueaty and Beast 4k}", "Bueaty and Beast",
  
  "https://www.youtube.com/watch?v=e3Nl_TCQXuw","1 hr 57 min","English"),
);

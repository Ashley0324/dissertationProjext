class Collection {
  final String name, author,location, date, type, description, image;

  Collection({
    required this.name,
    required this.author,
    required this.location,
    required this.date,
    required this.type,
    required this.description,
    required this.image,
  });
}

// list of products
// for our demo
List<Collection> collections = [
  Collection(
    name: "Table",
    author: "Unknown",
    location: "British Museum",
    type: "tablet",
    date: "Third Dynasty of Ur",
    image: "images/table.png",
    description:"Clay tablet with four and five lines of inscription; Third Dynasty of Ur.",
  ),
  Collection(
    name: "Tablet",
    author: "Unknown",
    location: "British Museum",
    type: "tablet",
    date: "Late Babylonian",
    image: "images/tablet.png",
    description:"Clay tablet; fragment; extispicy; Late Babylonian.",
  ),
  Collection(
    name: "Votive figure",
    author: "Unknown",
    location: "British Museum",
    type: "tablet",
    date: "2150BC-2000BC",
    image: "images/votive.png",
    description:"Woman’s head from a diorite votive statue; wearing broad head-band; carved and polished; damaged left eye and forehead.",
  ),
  Collection(
    name: "Model boat",
    author: "Unknown",
    location: "British Museum",
    type: "Model",
    date: "2500BC",
    image: "images/model.png",
    description:"Fired clay model boat; handmade.",
  ),
  Collection(
    name: "Etruscan cinerary urn",
    author: "Unknown",
    location: "British Museum",
    type: "cinerary urn",
    date: "300BC-100BC",
    image: "images/cinerary.png",
    description:"Tufa cinerary urn; embarkation of Helen; seven figures with Paris seated on folding stool; beading, dentils and a bevelled cornice above; egg and tongue between beading; both top corners and head of helmsman missing; little trace of paint; lid lost.",
  ),
  Collection(
    name: "Black-figure amphora",
    author: "Vulci, Italy",
    location: "British Museum",
    type: "Pottery",
    date: "520–500 BC",
    image: "images/black_figure.png",
    description:"Athenian black-figure storage jar (neck-amphora).",
  ),
  Collection(
    name: "Fish-pond",
    author: "unkown",
    location: "British Museum",
    type: "Earthenware",
    date: "1stC-2ndC (circa)",
    image: "images/fish_pond.png",
    description:"Fish-pond. Made of earthenware.",
  ),
];

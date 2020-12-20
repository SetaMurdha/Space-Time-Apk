class SkyObjectInfo{
  final int position;
  final String name;
  final String Image;
  final String description;
  final String Quotes;
  final List<String> imagess;

  SkyObjectInfo(
      this.position,{
        this.name,
        this.Image,
        this.description,
        this.Quotes,
        this.imagess,
      });
}

List<SkyObjectInfo> skyObject = [
  SkyObjectInfo(1,
    name: 'Comet',
      Image: "https://images.unsplash.com/photo-1587614382346-4ec70e388b28?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      description: "asd",
      Quotes: "The Runner",
      imagess: [
        'https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg',
        'https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg',
        'https://cdn.pixabay.com/photo/2015/06/26/18/48/mercury-822825_1280.png',
        'https://image.shutterstock.com/image-illustration/mercury-high-resolution-images-presents-600w-367615301.jpg'
    ]
  ),

  SkyObjectInfo(2,
      name: 'Planets',
      Image: "https://images.unsplash.com/photo-1587614382346-4ec70e388b28?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      description: "asd",
      Quotes: "The Adventurer",
      imagess: [
        "https://images2.alphacoders.com/103/thumb-1920-103242.jpg",
        "https://images2.alphacoders.com/563/thumb-1920-56300.jpg",
        "https://images2.alphacoders.com/916/thumb-1920-916108.jpg",
        "https://images.alphacoders.com/960/thumb-1920-9603.jpg"
      ]
  ),
  SkyObjectInfo(3,
      name: 'Stars',
      Image: "https://images.unsplash.com/photo-1587614382346-4ec70e388b28?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      description: "asd",
      Quotes: "The Burning One",
      imagess: [
        "https://images2.alphacoders.com/596/thumb-1920-596263.jpg",
        "https://images4.alphacoders.com/841/thumb-1920-84184.jpg",
        "https://images8.alphacoders.com/397/thumb-1920-397547.jpg",
        "https://images6.alphacoders.com/664/thumb-1920-664350.jpg"
      ]
  )
];

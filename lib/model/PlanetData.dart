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
      "https://images2.alphacoders.com/506/thumb-1920-506596.png",
      "https://images4.alphacoders.com/106/thumb-1920-1068731.jpg",
      "https://images6.alphacoders.com/533/thumb-1920-533402.png",
      "https://images7.alphacoders.com/593/thumb-1920-593191.jpg",
      "https://images8.alphacoders.com/737/thumb-1920-737474.png"
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

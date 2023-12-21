class NitrutionLogic {
  int currentPageIndex = 0;
  List<Map<String, dynamic>> questions = [
    {
      'question':
          'Size özel program oluşturabilmemiz için soruları size en uygun olacak şekilde cevaplayın.\n \n Cinsiyetinizi öğrenmekle başlayalım. ',
      'answers': [
        'KADIN',
        'ERKEK',
      ],
    },
    {
      'question': 'Hedefini öğrenelim?',
      'answers': ['KİLO ALMAK', 'KİLO VERMEK', 'KİLO KORUMAK'],
      'correctAnswer': 'A',
    },
    {
      'question': 'Fiziksel aktivite durumu nasıl?',
      'answers': [
        'Sedanter: (Masa başı, hareketsiz)',
        'Hafif aktif(öğrenci)',
        'Orta aktif(doktor, tempolu iş hayatı)',
        'Ağır aktif(Ağırlık kaldırma, inşaat işçisi)'
      ],
    },
    {
      'question': 'Vegan veya vejeteryan mısın?',
      'answers': [
        'Veganım)',
        'Vejeteryanım',
        'Vegan veya vejeteryan değilim',
      ],
    },
    {
      'question': 'Hangi öğün düzeni senin için daha uygun?',
      'answers': [
        '3 ana 1 ara öğün',
        '2 ana 1 ara öğün',
        '3 ana 2 ara öğün',
        '2 ana 2 ara öğün',
      ],
    },
  ];

  void setInfo(int pageIndex, ) {
    
  }
}

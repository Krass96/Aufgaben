List<List<List<Map<String, int>>>> myList = [
  [
    [
      {"Alpha": 24},
    ],
    [
      {"Beta": 25},
    ],
  ],
  [
    [
      {"Alpha": 34},
    ],
    [
      {"Beta": 35},
    ],
  ],
  [
    [
      {"Alpha": 44},
    ],
    [
      {"Beta": 45},
    ],
  ],
  [
    [
      {"Alpha": 54},
    ],
    [
      {"Beta": 55},
    ],
  ],
  [
    [
      {"Alpha": 64},
    ],
    [
      {"Beta": 65},
    ],
  ],
];
int result =
    myList[0][0][0]["Alpha"]! +
    myList[1][0][0]["Alpha"]! +
    myList[2][0][0]["Alpha"]! +
    myList[3][0][0]["Alpha"]! +
    myList[4][0][0]["Alpha"];
print(result) {}

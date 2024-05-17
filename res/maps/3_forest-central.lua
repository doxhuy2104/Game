return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.5.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 47,
  height = 41,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 26,
  nextobjectid = 1683,
  properties = {
    ["background"] = "fog",
    ["dark"] = 25,
    ["darkType"] = "parallax",
    ["defaultX"] = 290,
    ["defaultY"] = 290,
    ["music"] = "forest",
    ["shader"] = "saturation",
    ["shaderVal"] = 0.7,
    ["weather"] = "none"
  },
  tilesets = {
    {
      name = "overworld",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 23,
      image = "_tilesets/overworld.png",
      imagewidth = 368,
      imageheight = 520,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 736,
      tiles = {
        {
          id = 176,
          animation = {
            {
              tileid = 176,
              duration = 100
            },
            {
              tileid = 177,
              duration = 100
            },
            {
              tileid = 178,
              duration = 100
            }
          }
        },
        {
          id = 199,
          animation = {
            {
              tileid = 199,
              duration = 100
            },
            {
              tileid = 200,
              duration = 100
            },
            {
              tileid = 201,
              duration = 100
            }
          }
        },
        {
          id = 222,
          animation = {
            {
              tileid = 222,
              duration = 100
            },
            {
              tileid = 223,
              duration = 100
            },
            {
              tileid = 224,
              duration = 100
            }
          }
        },
        {
          id = 245,
          animation = {
            {
              tileid = 245,
              duration = 200
            },
            {
              tileid = 268,
              duration = 200
            },
            {
              tileid = 291,
              duration = 200
            }
          }
        },
        {
          id = 246,
          animation = {
            {
              tileid = 246,
              duration = 200
            },
            {
              tileid = 269,
              duration = 200
            },
            {
              tileid = 292,
              duration = 200
            }
          }
        },
        {
          id = 247,
          animation = {
            {
              tileid = 247,
              duration = 200
            },
            {
              tileid = 270,
              duration = 200
            },
            {
              tileid = 293,
              duration = 200
            }
          }
        }
      }
    },
    {
      name = "terrain",
      firstgid = 737,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 50,
      image = "_tilesets/terrain.png",
      imagewidth = 800,
      imageheight = 1280,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {
        {
          name = "Grasslands",
          tile = 59,
          properties = {},
          colors = {
            {
              color = { 255, 0, 0 },
              name = "Elevation",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 0, 255, 0 },
              name = "Grass",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 0, 0, 255 },
              name = "Grass Edges",
              probability = 1,
              tile = -1,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 1, 0, 0, 0, 0 },
              tileid = 51
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 0 },
              tileid = 52
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 0 },
              tileid = 53
            },
            {
              wangid = { 0, 1, 0, 0, 0, 1, 0, 1 },
              tileid = 54
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 1 },
              tileid = 55
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 57
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 59
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 60
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 61
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 62
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 63
            },
            {
              wangid = { 0, 3, 0, 0, 0, 3, 0, 3 },
              tileid = 64
            },
            {
              wangid = { 0, 3, 0, 0, 0, 0, 0, 3 },
              tileid = 65
            },
            {
              wangid = { 0, 3, 0, 3, 0, 0, 0, 3 },
              tileid = 66
            },
            {
              wangid = { 0, 0, 0, 3, 0, 0, 0, 0 },
              tileid = 67
            },
            {
              wangid = { 0, 0, 0, 0, 0, 3, 0, 0 },
              tileid = 68
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 0 },
              tileid = 101
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 102
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 1 },
              tileid = 103
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 1 },
              tileid = 104
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 0 },
              tileid = 105
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 109
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 110
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 111
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 112
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 113
            },
            {
              wangid = { 0, 0, 0, 0, 0, 3, 0, 3 },
              tileid = 114
            },
            {
              wangid = { 0, 3, 0, 3, 0, 3, 0, 3 },
              tileid = 115
            },
            {
              wangid = { 0, 3, 0, 3, 0, 0, 0, 0 },
              tileid = 116
            },
            {
              wangid = { 0, 3, 0, 0, 0, 0, 0, 0 },
              tileid = 117
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 3 },
              tileid = 118
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 0 },
              tileid = 151
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 1 },
              tileid = 152
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 1 },
              tileid = 153
            },
            {
              wangid = { 0, 0, 0, 3, 0, 3, 0, 3 },
              tileid = 164
            },
            {
              wangid = { 0, 0, 0, 3, 0, 3, 0, 0 },
              tileid = 165
            },
            {
              wangid = { 0, 3, 0, 3, 0, 3, 0, 0 },
              tileid = 166
            }
          }
        }
      },
      tilecount = 4000,
      tiles = {
        {
          id = 58,
          probability = 0.015
        },
        {
          id = 59,
          probability = 0.015
        },
        {
          id = 60,
          probability = 0.015
        },
        {
          id = 61,
          probability = 0.015
        },
        {
          id = 62,
          probability = 0.015
        },
        {
          id = 63,
          probability = 0.025
        },
        {
          id = 64,
          probability = 0.025
        },
        {
          id = 107,
          probability = 0.015
        },
        {
          id = 108,
          probability = 0.015
        },
        {
          id = 109,
          probability = 0.015
        },
        {
          id = 110,
          probability = 0.015
        },
        {
          id = 111,
          probability = 0.015
        },
        {
          id = 112,
          probability = 0.015
        },
        {
          id = 113,
          probability = 0.025
        }
      }
    },
    {
      name = "water",
      firstgid = 4737,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 40,
      image = "_tilesets/water2.png",
      imagewidth = 640,
      imageheight = 640,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {
        {
          name = "Water",
          tile = -1,
          properties = {},
          colors = {
            {
              color = { 255, 0, 0 },
              name = "Dirt Edge",
              probability = 1,
              tile = -1,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 1, 0, 0, 0, 0 },
              tileid = 641
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 0 },
              tileid = 642
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 0 },
              tileid = 643
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 0 },
              tileid = 681
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 682
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 1 },
              tileid = 683
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 0 },
              tileid = 721
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 1 },
              tileid = 722
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 1 },
              tileid = 723
            },
            {
              wangid = { 0, 1, 0, 0, 0, 1, 0, 1 },
              tileid = 801
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 1 },
              tileid = 802
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 1 },
              tileid = 803
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 1 },
              tileid = 841
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 0 },
              tileid = 843
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 1 },
              tileid = 881
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 0 },
              tileid = 882
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 0 },
              tileid = 883
            }
          }
        }
      },
      tilecount = 1600,
      tiles = {
        {
          id = 41,
          animation = {
            {
              tileid = 41,
              duration = 150
            },
            {
              tileid = 44,
              duration = 150
            },
            {
              tileid = 47,
              duration = 150
            },
            {
              tileid = 50,
              duration = 150
            },
            {
              tileid = 53,
              duration = 150
            },
            {
              tileid = 56,
              duration = 150
            },
            {
              tileid = 59,
              duration = 150
            },
            {
              tileid = 62,
              duration = 150
            }
          }
        },
        {
          id = 42,
          animation = {
            {
              tileid = 42,
              duration = 150
            },
            {
              tileid = 45,
              duration = 150
            },
            {
              tileid = 48,
              duration = 150
            },
            {
              tileid = 51,
              duration = 150
            },
            {
              tileid = 54,
              duration = 150
            },
            {
              tileid = 57,
              duration = 150
            },
            {
              tileid = 60,
              duration = 150
            },
            {
              tileid = 63,
              duration = 150
            }
          }
        },
        {
          id = 43,
          animation = {
            {
              tileid = 43,
              duration = 150
            },
            {
              tileid = 46,
              duration = 150
            },
            {
              tileid = 49,
              duration = 150
            },
            {
              tileid = 52,
              duration = 150
            },
            {
              tileid = 55,
              duration = 150
            },
            {
              tileid = 58,
              duration = 150
            },
            {
              tileid = 61,
              duration = 150
            },
            {
              tileid = 64,
              duration = 150
            }
          }
        },
        {
          id = 66,
          animation = {
            {
              tileid = 66,
              duration = 100
            },
            {
              tileid = 67,
              duration = 100
            },
            {
              tileid = 68,
              duration = 100
            }
          }
        },
        {
          id = 81,
          animation = {
            {
              tileid = 81,
              duration = 150
            },
            {
              tileid = 84,
              duration = 150
            },
            {
              tileid = 87,
              duration = 150
            },
            {
              tileid = 90,
              duration = 150
            },
            {
              tileid = 93,
              duration = 150
            },
            {
              tileid = 96,
              duration = 150
            },
            {
              tileid = 99,
              duration = 150
            },
            {
              tileid = 102,
              duration = 150
            }
          }
        },
        {
          id = 82,
          animation = {
            {
              tileid = 82,
              duration = 150
            },
            {
              tileid = 85,
              duration = 150
            },
            {
              tileid = 88,
              duration = 150
            },
            {
              tileid = 91,
              duration = 150
            },
            {
              tileid = 94,
              duration = 150
            },
            {
              tileid = 97,
              duration = 150
            },
            {
              tileid = 100,
              duration = 150
            },
            {
              tileid = 103,
              duration = 150
            }
          }
        },
        {
          id = 83,
          animation = {
            {
              tileid = 83,
              duration = 150
            },
            {
              tileid = 86,
              duration = 150
            },
            {
              tileid = 89,
              duration = 150
            },
            {
              tileid = 92,
              duration = 150
            },
            {
              tileid = 95,
              duration = 150
            },
            {
              tileid = 101,
              duration = 150
            },
            {
              tileid = 104,
              duration = 150
            }
          }
        },
        {
          id = 106,
          animation = {
            {
              tileid = 106,
              duration = 100
            },
            {
              tileid = 107,
              duration = 100
            },
            {
              tileid = 108,
              duration = 100
            }
          }
        },
        {
          id = 121,
          animation = {
            {
              tileid = 121,
              duration = 150
            },
            {
              tileid = 124,
              duration = 150
            },
            {
              tileid = 127,
              duration = 150
            },
            {
              tileid = 130,
              duration = 150
            },
            {
              tileid = 133,
              duration = 150
            },
            {
              tileid = 136,
              duration = 150
            },
            {
              tileid = 139,
              duration = 150
            },
            {
              tileid = 142,
              duration = 150
            }
          }
        },
        {
          id = 122,
          animation = {
            {
              tileid = 122,
              duration = 150
            },
            {
              tileid = 125,
              duration = 150
            },
            {
              tileid = 128,
              duration = 150
            },
            {
              tileid = 131,
              duration = 150
            },
            {
              tileid = 134,
              duration = 150
            },
            {
              tileid = 137,
              duration = 150
            },
            {
              tileid = 140,
              duration = 150
            },
            {
              tileid = 143,
              duration = 150
            }
          }
        },
        {
          id = 123,
          animation = {
            {
              tileid = 123,
              duration = 150
            },
            {
              tileid = 126,
              duration = 150
            },
            {
              tileid = 129,
              duration = 150
            },
            {
              tileid = 132,
              duration = 150
            },
            {
              tileid = 135,
              duration = 150
            },
            {
              tileid = 138,
              duration = 150
            },
            {
              tileid = 141,
              duration = 150
            },
            {
              tileid = 144,
              duration = 150
            }
          }
        },
        {
          id = 146,
          animation = {
            {
              tileid = 146,
              duration = 100
            },
            {
              tileid = 147,
              duration = 100
            },
            {
              tileid = 148,
              duration = 100
            }
          }
        },
        {
          id = 186,
          animation = {
            {
              tileid = 186,
              duration = 200
            },
            {
              tileid = 226,
              duration = 200
            },
            {
              tileid = 266,
              duration = 200
            }
          }
        },
        {
          id = 187,
          animation = {
            {
              tileid = 187,
              duration = 200
            },
            {
              tileid = 227,
              duration = 200
            },
            {
              tileid = 267,
              duration = 200
            }
          }
        },
        {
          id = 188,
          animation = {
            {
              tileid = 188,
              duration = 200
            },
            {
              tileid = 228,
              duration = 200
            },
            {
              tileid = 268,
              duration = 200
            }
          }
        },
        {
          id = 201,
          animation = {
            {
              tileid = 201,
              duration = 150
            },
            {
              tileid = 204,
              duration = 150
            },
            {
              tileid = 207,
              duration = 150
            },
            {
              tileid = 210,
              duration = 150
            },
            {
              tileid = 213,
              duration = 150
            },
            {
              tileid = 216,
              duration = 150
            },
            {
              tileid = 219,
              duration = 150
            },
            {
              tileid = 222,
              duration = 150
            }
          }
        },
        {
          id = 202,
          animation = {
            {
              tileid = 202,
              duration = 150
            },
            {
              tileid = 205,
              duration = 150
            },
            {
              tileid = 208,
              duration = 150
            },
            {
              tileid = 211,
              duration = 150
            },
            {
              tileid = 214,
              duration = 150
            },
            {
              tileid = 217,
              duration = 150
            },
            {
              tileid = 220,
              duration = 150
            },
            {
              tileid = 223,
              duration = 150
            }
          }
        },
        {
          id = 203,
          animation = {
            {
              tileid = 203,
              duration = 150
            },
            {
              tileid = 206,
              duration = 150
            },
            {
              tileid = 209,
              duration = 150
            },
            {
              tileid = 212,
              duration = 150
            },
            {
              tileid = 215,
              duration = 150
            },
            {
              tileid = 218,
              duration = 150
            },
            {
              tileid = 221,
              duration = 150
            },
            {
              tileid = 224,
              duration = 150
            }
          }
        },
        {
          id = 241,
          animation = {
            {
              tileid = 241,
              duration = 150
            },
            {
              tileid = 244,
              duration = 150
            },
            {
              tileid = 247,
              duration = 150
            },
            {
              tileid = 250,
              duration = 150
            },
            {
              tileid = 253,
              duration = 150
            },
            {
              tileid = 256,
              duration = 150
            },
            {
              tileid = 259,
              duration = 150
            },
            {
              tileid = 262,
              duration = 150
            }
          }
        },
        {
          id = 243,
          animation = {
            {
              tileid = 243,
              duration = 150
            },
            {
              tileid = 246,
              duration = 150
            },
            {
              tileid = 249,
              duration = 150
            },
            {
              tileid = 252,
              duration = 150
            },
            {
              tileid = 255,
              duration = 150
            },
            {
              tileid = 258,
              duration = 150
            },
            {
              tileid = 261,
              duration = 150
            },
            {
              tileid = 264,
              duration = 150
            }
          }
        },
        {
          id = 281,
          animation = {
            {
              tileid = 281,
              duration = 150
            },
            {
              tileid = 284,
              duration = 150
            },
            {
              tileid = 287,
              duration = 150
            },
            {
              tileid = 290,
              duration = 150
            },
            {
              tileid = 293,
              duration = 150
            },
            {
              tileid = 296,
              duration = 150
            },
            {
              tileid = 299,
              duration = 150
            },
            {
              tileid = 302,
              duration = 150
            }
          }
        },
        {
          id = 282,
          animation = {
            {
              tileid = 282,
              duration = 150
            },
            {
              tileid = 285,
              duration = 150
            },
            {
              tileid = 288,
              duration = 150
            },
            {
              tileid = 291,
              duration = 150
            },
            {
              tileid = 294,
              duration = 150
            },
            {
              tileid = 297,
              duration = 150
            },
            {
              tileid = 300,
              duration = 150
            },
            {
              tileid = 303,
              duration = 150
            }
          }
        },
        {
          id = 283,
          animation = {
            {
              tileid = 283,
              duration = 150
            },
            {
              tileid = 286,
              duration = 150
            },
            {
              tileid = 289,
              duration = 150
            },
            {
              tileid = 292,
              duration = 150
            },
            {
              tileid = 295,
              duration = 150
            },
            {
              tileid = 298,
              duration = 150
            },
            {
              tileid = 301,
              duration = 150
            },
            {
              tileid = 304,
              duration = 150
            }
          }
        },
        {
          id = 361,
          animation = {
            {
              tileid = 361,
              duration = 150
            },
            {
              tileid = 401,
              duration = 150
            },
            {
              tileid = 441,
              duration = 150
            },
            {
              tileid = 481,
              duration = 150
            }
          }
        },
        {
          id = 362,
          animation = {
            {
              tileid = 362,
              duration = 150
            },
            {
              tileid = 402,
              duration = 150
            },
            {
              tileid = 442,
              duration = 150
            },
            {
              tileid = 482,
              duration = 150
            }
          }
        },
        {
          id = 364,
          animation = {
            {
              tileid = 364,
              duration = 150
            },
            {
              tileid = 404,
              duration = 150
            },
            {
              tileid = 444,
              duration = 150
            },
            {
              tileid = 484,
              duration = 150
            }
          }
        },
        {
          id = 365,
          animation = {
            {
              tileid = 365,
              duration = 150
            },
            {
              tileid = 405,
              duration = 150
            },
            {
              tileid = 445,
              duration = 150
            },
            {
              tileid = 485,
              duration = 150
            }
          }
        },
        {
          id = 367,
          animation = {
            {
              tileid = 367,
              duration = 150
            },
            {
              tileid = 407,
              duration = 150
            },
            {
              tileid = 447,
              duration = 150
            },
            {
              tileid = 487,
              duration = 150
            }
          }
        },
        {
          id = 368,
          animation = {
            {
              tileid = 368,
              duration = 150
            },
            {
              tileid = 408,
              duration = 150
            },
            {
              tileid = 448,
              duration = 150
            },
            {
              tileid = 488,
              duration = 150
            }
          }
        },
        {
          id = 370,
          animation = {
            {
              tileid = 370,
              duration = 150
            },
            {
              tileid = 410,
              duration = 150
            },
            {
              tileid = 450,
              duration = 150
            },
            {
              tileid = 490,
              duration = 150
            }
          }
        },
        {
          id = 371,
          animation = {
            {
              tileid = 371,
              duration = 150
            },
            {
              tileid = 411,
              duration = 150
            },
            {
              tileid = 451,
              duration = 150
            },
            {
              tileid = 491,
              duration = 150
            }
          }
        },
        {
          id = 372,
          animation = {
            {
              tileid = 372,
              duration = 150
            },
            {
              tileid = 412,
              duration = 150
            },
            {
              tileid = 452,
              duration = 150
            },
            {
              tileid = 492,
              duration = 150
            }
          }
        },
        {
          id = 374,
          animation = {
            {
              tileid = 374,
              duration = 150
            },
            {
              tileid = 414,
              duration = 150
            },
            {
              tileid = 454,
              duration = 150
            },
            {
              tileid = 494,
              duration = 150
            }
          }
        },
        {
          id = 375,
          animation = {
            {
              tileid = 375,
              duration = 150
            },
            {
              tileid = 415,
              duration = 150
            },
            {
              tileid = 455,
              duration = 150
            },
            {
              tileid = 495,
              duration = 150
            }
          }
        },
        {
          id = 379,
          animation = {
            {
              tileid = 379,
              duration = 150
            },
            {
              tileid = 419,
              duration = 150
            },
            {
              tileid = 459,
              duration = 150
            },
            {
              tileid = 499,
              duration = 150
            }
          }
        },
        {
          id = 380,
          animation = {
            {
              tileid = 380,
              duration = 150
            },
            {
              tileid = 420,
              duration = 150
            },
            {
              tileid = 460,
              duration = 150
            },
            {
              tileid = 500,
              duration = 150
            }
          }
        },
        {
          id = 382,
          animation = {
            {
              tileid = 382,
              duration = 150
            },
            {
              tileid = 422,
              duration = 150
            },
            {
              tileid = 462,
              duration = 150
            },
            {
              tileid = 502,
              duration = 150
            }
          }
        },
        {
          id = 383,
          animation = {
            {
              tileid = 383,
              duration = 150
            },
            {
              tileid = 423,
              duration = 150
            },
            {
              tileid = 463,
              duration = 150
            },
            {
              tileid = 503,
              duration = 150
            }
          }
        },
        {
          id = 385,
          animation = {
            {
              tileid = 385,
              duration = 150
            },
            {
              tileid = 425,
              duration = 150
            },
            {
              tileid = 465,
              duration = 150
            },
            {
              tileid = 505,
              duration = 150
            }
          }
        },
        {
          id = 386,
          animation = {
            {
              tileid = 386,
              duration = 150
            },
            {
              tileid = 426,
              duration = 150
            },
            {
              tileid = 466,
              duration = 150
            },
            {
              tileid = 506,
              duration = 150
            }
          }
        },
        {
          id = 388,
          animation = {
            {
              tileid = 388,
              duration = 150
            },
            {
              tileid = 428,
              duration = 150
            },
            {
              tileid = 468,
              duration = 150
            },
            {
              tileid = 508,
              duration = 150
            }
          }
        },
        {
          id = 389,
          animation = {
            {
              tileid = 389,
              duration = 150
            },
            {
              tileid = 429,
              duration = 150
            },
            {
              tileid = 469,
              duration = 150
            },
            {
              tileid = 509,
              duration = 150
            }
          }
        },
        {
          id = 390,
          animation = {
            {
              tileid = 390,
              duration = 150
            },
            {
              tileid = 430,
              duration = 150
            },
            {
              tileid = 470,
              duration = 150
            },
            {
              tileid = 510,
              duration = 150
            }
          }
        },
        {
          id = 392,
          animation = {
            {
              tileid = 392,
              duration = 150
            },
            {
              tileid = 432,
              duration = 150
            },
            {
              tileid = 472,
              duration = 150
            },
            {
              tileid = 512,
              duration = 150
            }
          }
        },
        {
          id = 393,
          animation = {
            {
              tileid = 393,
              duration = 150
            },
            {
              tileid = 433,
              duration = 150
            },
            {
              tileid = 473,
              duration = 150
            },
            {
              tileid = 513,
              duration = 150
            }
          }
        },
        {
          id = 395,
          animation = {
            {
              tileid = 395,
              duration = 150
            },
            {
              tileid = 435,
              duration = 150
            },
            {
              tileid = 475,
              duration = 150
            },
            {
              tileid = 515,
              duration = 150
            }
          }
        },
        {
          id = 396,
          animation = {
            {
              tileid = 396,
              duration = 150
            },
            {
              tileid = 436,
              duration = 150
            },
            {
              tileid = 476,
              duration = 150
            },
            {
              tileid = 516,
              duration = 150
            }
          }
        },
        {
          id = 561,
          animation = {
            {
              tileid = 561,
              duration = 150
            },
            {
              tileid = 564,
              duration = 150
            },
            {
              tileid = 567,
              duration = 150
            },
            {
              tileid = 570,
              duration = 150
            }
          }
        },
        {
          id = 563,
          animation = {
            {
              tileid = 563,
              duration = 150
            },
            {
              tileid = 566,
              duration = 150
            },
            {
              tileid = 569,
              duration = 150
            },
            {
              tileid = 572,
              duration = 150
            }
          }
        },
        {
          id = 579,
          animation = {
            {
              tileid = 579,
              duration = 150
            },
            {
              tileid = 582,
              duration = 150
            },
            {
              tileid = 585,
              duration = 150
            },
            {
              tileid = 588,
              duration = 150
            }
          }
        },
        {
          id = 581,
          animation = {
            {
              tileid = 581,
              duration = 150
            },
            {
              tileid = 584,
              duration = 150
            },
            {
              tileid = 587,
              duration = 150
            },
            {
              tileid = 590,
              duration = 150
            }
          }
        },
        {
          id = 641,
          animation = {
            {
              tileid = 641,
              duration = 150
            },
            {
              tileid = 644,
              duration = 150
            },
            {
              tileid = 647,
              duration = 150
            },
            {
              tileid = 650,
              duration = 150
            },
            {
              tileid = 653,
              duration = 150
            },
            {
              tileid = 656,
              duration = 150
            },
            {
              tileid = 659,
              duration = 150
            },
            {
              tileid = 662,
              duration = 150
            }
          }
        },
        {
          id = 642,
          animation = {
            {
              tileid = 642,
              duration = 150
            },
            {
              tileid = 645,
              duration = 150
            },
            {
              tileid = 648,
              duration = 150
            },
            {
              tileid = 651,
              duration = 150
            },
            {
              tileid = 654,
              duration = 150
            },
            {
              tileid = 657,
              duration = 150
            },
            {
              tileid = 660,
              duration = 150
            },
            {
              tileid = 663,
              duration = 150
            }
          }
        },
        {
          id = 643,
          animation = {
            {
              tileid = 643,
              duration = 150
            },
            {
              tileid = 646,
              duration = 150
            },
            {
              tileid = 649,
              duration = 150
            },
            {
              tileid = 652,
              duration = 150
            },
            {
              tileid = 655,
              duration = 150
            },
            {
              tileid = 658,
              duration = 150
            },
            {
              tileid = 661,
              duration = 150
            },
            {
              tileid = 664,
              duration = 150
            }
          }
        },
        {
          id = 681,
          animation = {
            {
              tileid = 681,
              duration = 150
            },
            {
              tileid = 684,
              duration = 150
            },
            {
              tileid = 687,
              duration = 150
            },
            {
              tileid = 690,
              duration = 150
            },
            {
              tileid = 693,
              duration = 150
            },
            {
              tileid = 696,
              duration = 150
            },
            {
              tileid = 699,
              duration = 150
            },
            {
              tileid = 702,
              duration = 150
            }
          }
        },
        {
          id = 682,
          animation = {
            {
              tileid = 682,
              duration = 150
            },
            {
              tileid = 685,
              duration = 150
            },
            {
              tileid = 688,
              duration = 150
            },
            {
              tileid = 691,
              duration = 150
            },
            {
              tileid = 694,
              duration = 150
            },
            {
              tileid = 697,
              duration = 150
            },
            {
              tileid = 700,
              duration = 150
            },
            {
              tileid = 703,
              duration = 150
            }
          }
        },
        {
          id = 683,
          animation = {
            {
              tileid = 683,
              duration = 150
            },
            {
              tileid = 686,
              duration = 150
            },
            {
              tileid = 689,
              duration = 150
            },
            {
              tileid = 692,
              duration = 150
            },
            {
              tileid = 695,
              duration = 150
            },
            {
              tileid = 698,
              duration = 150
            },
            {
              tileid = 701,
              duration = 150
            },
            {
              tileid = 704,
              duration = 150
            }
          }
        },
        {
          id = 721,
          animation = {
            {
              tileid = 721,
              duration = 150
            },
            {
              tileid = 724,
              duration = 150
            },
            {
              tileid = 727,
              duration = 150
            },
            {
              tileid = 730,
              duration = 150
            },
            {
              tileid = 733,
              duration = 150
            },
            {
              tileid = 736,
              duration = 150
            },
            {
              tileid = 739,
              duration = 150
            },
            {
              tileid = 742,
              duration = 150
            }
          }
        },
        {
          id = 722,
          animation = {
            {
              tileid = 722,
              duration = 150
            },
            {
              tileid = 725,
              duration = 150
            },
            {
              tileid = 728,
              duration = 150
            },
            {
              tileid = 731,
              duration = 150
            },
            {
              tileid = 734,
              duration = 150
            },
            {
              tileid = 737,
              duration = 150
            },
            {
              tileid = 740,
              duration = 150
            },
            {
              tileid = 743,
              duration = 150
            }
          }
        },
        {
          id = 723,
          animation = {
            {
              tileid = 723,
              duration = 150
            },
            {
              tileid = 726,
              duration = 150
            },
            {
              tileid = 729,
              duration = 150
            },
            {
              tileid = 732,
              duration = 150
            },
            {
              tileid = 735,
              duration = 150
            },
            {
              tileid = 738,
              duration = 150
            },
            {
              tileid = 741,
              duration = 150
            },
            {
              tileid = 744,
              duration = 150
            }
          }
        },
        {
          id = 801,
          animation = {
            {
              tileid = 801,
              duration = 150
            },
            {
              tileid = 804,
              duration = 150
            },
            {
              tileid = 807,
              duration = 150
            },
            {
              tileid = 810,
              duration = 150
            },
            {
              tileid = 813,
              duration = 150
            },
            {
              tileid = 816,
              duration = 150
            },
            {
              tileid = 819,
              duration = 150
            },
            {
              tileid = 822,
              duration = 150
            }
          }
        },
        {
          id = 802,
          animation = {
            {
              tileid = 802,
              duration = 150
            },
            {
              tileid = 805,
              duration = 150
            },
            {
              tileid = 808,
              duration = 150
            },
            {
              tileid = 811,
              duration = 150
            },
            {
              tileid = 814,
              duration = 150
            },
            {
              tileid = 817,
              duration = 150
            },
            {
              tileid = 820,
              duration = 150
            },
            {
              tileid = 823,
              duration = 150
            }
          }
        },
        {
          id = 803,
          animation = {
            {
              tileid = 803,
              duration = 150
            },
            {
              tileid = 806,
              duration = 150
            },
            {
              tileid = 809,
              duration = 150
            },
            {
              tileid = 812,
              duration = 150
            },
            {
              tileid = 815,
              duration = 150
            },
            {
              tileid = 818,
              duration = 150
            },
            {
              tileid = 821,
              duration = 150
            },
            {
              tileid = 824,
              duration = 150
            }
          }
        },
        {
          id = 841,
          animation = {
            {
              tileid = 841,
              duration = 150
            },
            {
              tileid = 844,
              duration = 150
            },
            {
              tileid = 847,
              duration = 150
            },
            {
              tileid = 850,
              duration = 150
            },
            {
              tileid = 853,
              duration = 150
            },
            {
              tileid = 856,
              duration = 150
            },
            {
              tileid = 859,
              duration = 150
            },
            {
              tileid = 862,
              duration = 150
            }
          }
        },
        {
          id = 843,
          animation = {
            {
              tileid = 843,
              duration = 150
            },
            {
              tileid = 846,
              duration = 150
            },
            {
              tileid = 849,
              duration = 150
            },
            {
              tileid = 852,
              duration = 150
            },
            {
              tileid = 855,
              duration = 150
            },
            {
              tileid = 858,
              duration = 150
            },
            {
              tileid = 861,
              duration = 150
            },
            {
              tileid = 864,
              duration = 150
            }
          }
        },
        {
          id = 881,
          animation = {
            {
              tileid = 881,
              duration = 150
            },
            {
              tileid = 884,
              duration = 150
            },
            {
              tileid = 887,
              duration = 150
            },
            {
              tileid = 890,
              duration = 150
            },
            {
              tileid = 893,
              duration = 150
            },
            {
              tileid = 896,
              duration = 150
            },
            {
              tileid = 899,
              duration = 150
            },
            {
              tileid = 902,
              duration = 150
            }
          }
        },
        {
          id = 882,
          animation = {
            {
              tileid = 882,
              duration = 150
            },
            {
              tileid = 885,
              duration = 150
            },
            {
              tileid = 888,
              duration = 150
            },
            {
              tileid = 891,
              duration = 150
            },
            {
              tileid = 894,
              duration = 150
            },
            {
              tileid = 897,
              duration = 150
            },
            {
              tileid = 900,
              duration = 150
            },
            {
              tileid = 903,
              duration = 150
            }
          }
        },
        {
          id = 883,
          animation = {
            {
              tileid = 883,
              duration = 150
            },
            {
              tileid = 886,
              duration = 150
            },
            {
              tileid = 889,
              duration = 150
            },
            {
              tileid = 892,
              duration = 150
            },
            {
              tileid = 895,
              duration = 150
            },
            {
              tileid = 898,
              duration = 150
            },
            {
              tileid = 901,
              duration = 150
            },
            {
              tileid = 904,
              duration = 150
            }
          }
        }
      }
    },
    {
      name = "terrain",
      firstgid = 6337,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 50,
      image = "_tilesets/terrain.png",
      imagewidth = 800,
      imageheight = 1280,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {
        {
          name = "Grasslands",
          tile = 59,
          properties = {},
          colors = {
            {
              color = { 255, 0, 0 },
              name = "Elevation",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 0, 255, 0 },
              name = "Grass Edges",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 0, 255, 255 },
              name = "Water Edges",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 255, 119, 0 },
              name = "Path",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 0, 170, 0 },
              name = "Grass Edges 2",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 255, 0, 216 },
              name = "Dirt",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 255, 255, 0 },
              name = "Cliff",
              probability = 1,
              tile = -1,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 1, 0, 0, 0, 0 },
              tileid = 51
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 0 },
              tileid = 52
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 0 },
              tileid = 53
            },
            {
              wangid = { 0, 1, 0, 0, 0, 1, 0, 1 },
              tileid = 55
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 1 },
              tileid = 56
            },
            {
              wangid = { 0, 2, 0, 0, 0, 2, 0, 2 },
              tileid = 65
            },
            {
              wangid = { 0, 2, 0, 0, 0, 0, 0, 2 },
              tileid = 66
            },
            {
              wangid = { 0, 2, 0, 2, 0, 0, 0, 2 },
              tileid = 67
            },
            {
              wangid = { 0, 0, 0, 2, 0, 0, 0, 0 },
              tileid = 68
            },
            {
              wangid = { 0, 0, 0, 0, 0, 2, 0, 0 },
              tileid = 69
            },
            {
              wangid = { 0, 0, 0, 5, 0, 0, 0, 0 },
              tileid = 71
            },
            {
              wangid = { 0, 0, 0, 5, 0, 5, 0, 0 },
              tileid = 72
            },
            {
              wangid = { 0, 0, 0, 0, 0, 5, 0, 0 },
              tileid = 73
            },
            {
              wangid = { 0, 5, 0, 0, 0, 5, 0, 5 },
              tileid = 75
            },
            {
              wangid = { 0, 5, 0, 5, 0, 0, 0, 5 },
              tileid = 76
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 0 },
              tileid = 101
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 102
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 1 },
              tileid = 103
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 1 },
              tileid = 105
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 0 },
              tileid = 106
            },
            {
              wangid = { 0, 0, 0, 0, 0, 2, 0, 2 },
              tileid = 115
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 116
            },
            {
              wangid = { 0, 2, 0, 2, 0, 0, 0, 0 },
              tileid = 117
            },
            {
              wangid = { 0, 2, 0, 0, 0, 0, 0, 0 },
              tileid = 118
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 2 },
              tileid = 119
            },
            {
              wangid = { 0, 5, 0, 5, 0, 0, 0, 0 },
              tileid = 121
            },
            {
              wangid = { 0, 5, 0, 5, 0, 5, 0, 5 },
              tileid = 122
            },
            {
              wangid = { 0, 0, 0, 0, 0, 5, 0, 5 },
              tileid = 123
            },
            {
              wangid = { 0, 0, 0, 5, 0, 5, 0, 5 },
              tileid = 125
            },
            {
              wangid = { 0, 5, 0, 5, 0, 5, 0, 0 },
              tileid = 126
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 0 },
              tileid = 151
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 1 },
              tileid = 152
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 1 },
              tileid = 153
            },
            {
              wangid = { 0, 0, 0, 2, 0, 2, 0, 2 },
              tileid = 165
            },
            {
              wangid = { 0, 0, 0, 2, 0, 2, 0, 0 },
              tileid = 166
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 0 },
              tileid = 167
            },
            {
              wangid = { 0, 5, 0, 0, 0, 0, 0, 0 },
              tileid = 171
            },
            {
              wangid = { 0, 5, 0, 0, 0, 0, 0, 5 },
              tileid = 172
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 5 },
              tileid = 173
            },
            {
              wangid = { 0, 3, 0, 0, 0, 3, 0, 3 },
              tileid = 251
            },
            {
              wangid = { 0, 3, 0, 0, 0, 0, 0, 3 },
              tileid = 252
            },
            {
              wangid = { 0, 3, 0, 3, 0, 0, 0, 3 },
              tileid = 253
            },
            {
              wangid = { 0, 0, 0, 0, 0, 3, 0, 3 },
              tileid = 301
            },
            {
              wangid = { 0, 3, 0, 3, 0, 0, 0, 0 },
              tileid = 303
            },
            {
              wangid = { 0, 0, 0, 3, 0, 3, 0, 3 },
              tileid = 351
            },
            {
              wangid = { 0, 0, 0, 3, 0, 3, 0, 0 },
              tileid = 352
            },
            {
              wangid = { 0, 3, 0, 3, 0, 3, 0, 0 },
              tileid = 353
            },
            {
              wangid = { 0, 0, 0, 3, 0, 0, 0, 0 },
              tileid = 451
            },
            {
              wangid = { 0, 0, 0, 0, 0, 3, 0, 0 },
              tileid = 452
            },
            {
              wangid = { 0, 3, 0, 3, 0, 3, 0, 3 },
              tileid = 460
            },
            {
              wangid = { 0, 3, 0, 0, 0, 0, 0, 0 },
              tileid = 501
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 3 },
              tileid = 502
            },
            {
              wangid = { 0, 0, 0, 7, 0, 0, 0, 0 },
              tileid = 660
            },
            {
              wangid = { 0, 0, 0, 7, 0, 7, 0, 0 },
              tileid = 661
            },
            {
              wangid = { 0, 0, 0, 0, 0, 7, 0, 0 },
              tileid = 662
            },
            {
              wangid = { 0, 0, 0, 7, 0, 0, 0, 0 },
              tileid = 663
            },
            {
              wangid = { 0, 0, 0, 7, 0, 7, 0, 0 },
              tileid = 664
            },
            {
              wangid = { 0, 0, 0, 0, 0, 7, 0, 0 },
              tileid = 665
            },
            {
              wangid = { 0, 7, 0, 7, 0, 0, 0, 0 },
              tileid = 710
            },
            {
              wangid = { 0, 7, 0, 7, 0, 7, 0, 7 },
              tileid = 711
            },
            {
              wangid = { 0, 0, 0, 0, 0, 7, 0, 7 },
              tileid = 712
            },
            {
              wangid = { 0, 7, 0, 7, 0, 0, 0, 0 },
              tileid = 713
            },
            {
              wangid = { 0, 0, 0, 0, 0, 7, 0, 7 },
              tileid = 715
            },
            {
              wangid = { 0, 7, 0, 0, 0, 0, 0, 0 },
              tileid = 760
            },
            {
              wangid = { 0, 7, 0, 0, 0, 0, 0, 7 },
              tileid = 761
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 7 },
              tileid = 762
            },
            {
              wangid = { 0, 7, 0, 0, 0, 0, 0, 0 },
              tileid = 763
            },
            {
              wangid = { 0, 7, 0, 0, 0, 0, 0, 7 },
              tileid = 764
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 7 },
              tileid = 765
            },
            {
              wangid = { 0, 0, 0, 4, 0, 0, 0, 0 },
              tileid = 951
            },
            {
              wangid = { 0, 0, 0, 4, 0, 4, 0, 0 },
              tileid = 952
            },
            {
              wangid = { 0, 0, 0, 0, 0, 4, 0, 0 },
              tileid = 953
            },
            {
              wangid = { 0, 4, 0, 0, 0, 4, 0, 4 },
              tileid = 955
            },
            {
              wangid = { 0, 4, 0, 4, 0, 0, 0, 4 },
              tileid = 956
            },
            {
              wangid = { 0, 0, 0, 6, 0, 0, 0, 0 },
              tileid = 958
            },
            {
              wangid = { 0, 0, 0, 6, 0, 6, 0, 0 },
              tileid = 959
            },
            {
              wangid = { 0, 0, 0, 0, 0, 6, 0, 0 },
              tileid = 960
            },
            {
              wangid = { 0, 6, 0, 0, 0, 6, 0, 6 },
              tileid = 962
            },
            {
              wangid = { 0, 6, 0, 6, 0, 0, 0, 6 },
              tileid = 963
            },
            {
              wangid = { 0, 4, 0, 4, 0, 0, 0, 0 },
              tileid = 1001
            },
            {
              wangid = { 0, 4, 0, 4, 0, 4, 0, 4 },
              tileid = 1002
            },
            {
              wangid = { 0, 0, 0, 0, 0, 4, 0, 4 },
              tileid = 1003
            },
            {
              wangid = { 0, 0, 0, 4, 0, 4, 0, 4 },
              tileid = 1005
            },
            {
              wangid = { 0, 4, 0, 4, 0, 4, 0, 0 },
              tileid = 1006
            },
            {
              wangid = { 0, 6, 0, 6, 0, 0, 0, 0 },
              tileid = 1008
            },
            {
              wangid = { 0, 6, 0, 6, 0, 6, 0, 6 },
              tileid = 1009
            },
            {
              wangid = { 0, 0, 0, 0, 0, 6, 0, 6 },
              tileid = 1010
            },
            {
              wangid = { 0, 0, 0, 6, 0, 6, 0, 6 },
              tileid = 1012
            },
            {
              wangid = { 0, 6, 0, 6, 0, 6, 0, 0 },
              tileid = 1013
            },
            {
              wangid = { 0, 4, 0, 0, 0, 0, 0, 0 },
              tileid = 1051
            },
            {
              wangid = { 0, 4, 0, 0, 0, 0, 0, 4 },
              tileid = 1052
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 4 },
              tileid = 1053
            },
            {
              wangid = { 0, 6, 0, 0, 0, 0, 0, 0 },
              tileid = 1058
            },
            {
              wangid = { 0, 6, 0, 0, 0, 0, 0, 6 },
              tileid = 1059
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 6 },
              tileid = 1060
            }
          }
        },
        {
          name = "Cave",
          tile = -1,
          properties = {},
          colors = {
            {
              color = { 255, 0, 0 },
              name = "Wall",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 0, 255, 0 },
              name = "Ground",
              probability = 1,
              tile = -1,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 1, 0, 0, 0, 0 },
              tileid = 1351
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 0 },
              tileid = 1352
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 0 },
              tileid = 1353
            },
            {
              wangid = { 0, 1, 0, 0, 0, 1, 0, 1 },
              tileid = 1355
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 1 },
              tileid = 1356
            },
            {
              wangid = { 0, 0, 0, 2, 0, 0, 0, 0 },
              tileid = 1358
            },
            {
              wangid = { 0, 0, 0, 2, 0, 2, 0, 0 },
              tileid = 1359
            },
            {
              wangid = { 0, 0, 0, 0, 0, 2, 0, 0 },
              tileid = 1360
            },
            {
              wangid = { 0, 2, 0, 0, 0, 2, 0, 2 },
              tileid = 1362
            },
            {
              wangid = { 0, 2, 0, 2, 0, 0, 0, 2 },
              tileid = 1363
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 0 },
              tileid = 1401
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 1402
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 1 },
              tileid = 1403
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 1 },
              tileid = 1405
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 0 },
              tileid = 1406
            },
            {
              wangid = { 0, 2, 0, 2, 0, 0, 0, 0 },
              tileid = 1408
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 1409
            },
            {
              wangid = { 0, 0, 0, 0, 0, 2, 0, 2 },
              tileid = 1410
            },
            {
              wangid = { 0, 0, 0, 2, 0, 2, 0, 2 },
              tileid = 1412
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 0 },
              tileid = 1413
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 0 },
              tileid = 1451
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 1 },
              tileid = 1452
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 1 },
              tileid = 1453
            },
            {
              wangid = { 0, 2, 0, 0, 0, 0, 0, 0 },
              tileid = 1458
            },
            {
              wangid = { 0, 2, 0, 0, 0, 0, 0, 2 },
              tileid = 1459
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 2 },
              tileid = 1460
            }
          }
        }
      },
      tilecount = 4000,
      tiles = {
        {
          id = 59,
          probability = 0.015
        },
        {
          id = 60,
          probability = 0.015
        },
        {
          id = 61,
          probability = 0.015
        },
        {
          id = 62,
          probability = 0.015
        },
        {
          id = 63,
          probability = 0.015
        },
        {
          id = 64,
          probability = 0.025
        },
        {
          id = 107,
          probability = 0.015
        },
        {
          id = 108,
          probability = 0.015
        },
        {
          id = 109,
          probability = 0.015
        },
        {
          id = 110,
          probability = 0.015
        },
        {
          id = 111,
          probability = 0.015
        },
        {
          id = 112,
          probability = 0.015
        },
        {
          id = 113,
          probability = 0.015
        },
        {
          id = 251,
          animation = {
            {
              tileid = 251,
              duration = 350
            },
            {
              tileid = 254,
              duration = 350
            },
            {
              tileid = 257,
              duration = 350
            },
            {
              tileid = 260,
              duration = 350
            }
          }
        },
        {
          id = 253,
          animation = {
            {
              tileid = 253,
              duration = 350
            },
            {
              tileid = 256,
              duration = 350
            },
            {
              tileid = 259,
              duration = 350
            },
            {
              tileid = 262,
              duration = 350
            }
          }
        },
        {
          id = 264,
          animation = {
            {
              tileid = 264,
              duration = 350
            },
            {
              tileid = 314,
              duration = 350
            },
            {
              tileid = 364,
              duration = 350
            },
            {
              tileid = 414,
              duration = 350
            }
          }
        },
        {
          id = 265,
          animation = {
            {
              tileid = 265,
              duration = 350
            },
            {
              tileid = 315,
              duration = 350
            },
            {
              tileid = 365,
              duration = 350
            },
            {
              tileid = 415,
              duration = 350
            }
          }
        },
        {
          id = 301,
          animation = {
            {
              tileid = 301,
              duration = 350
            },
            {
              tileid = 304,
              duration = 350
            },
            {
              tileid = 307,
              duration = 350
            },
            {
              tileid = 310,
              duration = 350
            }
          }
        },
        {
          id = 303,
          animation = {
            {
              tileid = 303,
              duration = 350
            },
            {
              tileid = 306,
              duration = 350
            },
            {
              tileid = 309,
              duration = 350
            },
            {
              tileid = 312,
              duration = 350
            }
          }
        },
        {
          id = 351,
          animation = {
            {
              tileid = 351,
              duration = 350
            },
            {
              tileid = 354,
              duration = 350
            },
            {
              tileid = 357,
              duration = 350
            },
            {
              tileid = 360,
              duration = 350
            }
          }
        },
        {
          id = 352,
          animation = {
            {
              tileid = 352,
              duration = 350
            },
            {
              tileid = 355,
              duration = 350
            },
            {
              tileid = 358,
              duration = 350
            },
            {
              tileid = 361,
              duration = 350
            }
          }
        },
        {
          id = 353,
          animation = {
            {
              tileid = 353,
              duration = 350
            },
            {
              tileid = 356,
              duration = 350
            },
            {
              tileid = 359,
              duration = 350
            },
            {
              tileid = 362,
              duration = 350
            }
          }
        },
        {
          id = 451,
          animation = {
            {
              tileid = 451,
              duration = 350
            },
            {
              tileid = 453,
              duration = 350
            },
            {
              tileid = 455,
              duration = 350
            },
            {
              tileid = 457,
              duration = 350
            }
          }
        },
        {
          id = 452,
          animation = {
            {
              tileid = 452,
              duration = 350
            },
            {
              tileid = 454,
              duration = 350
            },
            {
              tileid = 456,
              duration = 350
            },
            {
              tileid = 458,
              duration = 350
            }
          }
        },
        {
          id = 501,
          animation = {
            {
              tileid = 501,
              duration = 350
            },
            {
              tileid = 503,
              duration = 350
            },
            {
              tileid = 505,
              duration = 350
            },
            {
              tileid = 507,
              duration = 350
            }
          }
        },
        {
          id = 502,
          animation = {
            {
              tileid = 502,
              duration = 350
            },
            {
              tileid = 504,
              duration = 350
            },
            {
              tileid = 506,
              duration = 350
            },
            {
              tileid = 508,
              duration = 350
            }
          }
        },
        {
          id = 606,
          animation = {
            {
              tileid = 606,
              duration = 100
            },
            {
              tileid = 607,
              duration = 100
            },
            {
              tileid = 608,
              duration = 100
            }
          }
        },
        {
          id = 656,
          animation = {
            {
              tileid = 656,
              duration = 100
            },
            {
              tileid = 657,
              duration = 100
            },
            {
              tileid = 658,
              duration = 100
            }
          }
        },
        {
          id = 706,
          animation = {
            {
              tileid = 706,
              duration = 100
            },
            {
              tileid = 707,
              duration = 100
            },
            {
              tileid = 708,
              duration = 100
            }
          }
        },
        {
          id = 756,
          animation = {
            {
              tileid = 756,
              duration = 200
            },
            {
              tileid = 806,
              duration = 200
            },
            {
              tileid = 856,
              duration = 200
            }
          }
        },
        {
          id = 757,
          animation = {
            {
              tileid = 757,
              duration = 200
            },
            {
              tileid = 807,
              duration = 200
            },
            {
              tileid = 857,
              duration = 200
            }
          }
        },
        {
          id = 758,
          animation = {
            {
              tileid = 758,
              duration = 200
            },
            {
              tileid = 808,
              duration = 200
            },
            {
              tileid = 858,
              duration = 200
            }
          }
        },
        {
          id = 1366,
          probability = 0.05
        },
        {
          id = 1367,
          probability = 0.1
        },
        {
          id = 1368,
          probability = 0.05
        },
        {
          id = 1415,
          probability = 0.1
        },
        {
          id = 1416,
          probability = 0.05
        },
        {
          id = 1417,
          probability = 0.05
        },
        {
          id = 1418,
          probability = 0.05
        },
        {
          id = 1516,
          probability = 0.05
        },
        {
          id = 1517,
          probability = 0.1
        },
        {
          id = 1518,
          probability = 0.05
        },
        {
          id = 1565,
          probability = 0.1
        },
        {
          id = 1566,
          probability = 0.05
        },
        {
          id = 1567,
          probability = 0.05
        },
        {
          id = 1568,
          probability = 0.05
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 47,
      height = 41,
      id = 25,
      name = "FakeBase",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795,
        795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 47,
      height = 41,
      id = 1,
      name = "Base",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        6395, 6396, 6395, 6395, 6400, 6395, 6447, 6395, 6395, 6399, 6446, 6396, 6395, 6447, 6395, 6447, 6395, 6400, 6398, 6395, 6447, 6395, 6395, 6395, 6395, 6395, 6446, 6399, 6395, 6447, 6395, 6395, 6400, 6448, 6395, 6395, 6448, 6449, 6450, 6396, 6395, 6395, 6395, 6399, 6449, 6395, 6395,
        6399, 6397, 6395, 6395, 6395, 6395, 6395, 6446, 6447, 6395, 6400, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6448, 6448, 6395, 6399, 6399, 6399, 6395, 6398, 6395, 6395, 6395, 6395, 6397, 6395, 6400, 6448, 6395, 6395, 6395, 6395, 6395, 6395, 6396, 6397, 6447, 6395, 6448, 6395, 6395,
        6399, 6398, 6395, 6446, 6397, 6395, 6447, 6395, 6400, 6395, 6446, 6395, 6395, 6395, 6448, 6397, 6398, 6395, 6395, 6395, 6447, 6445, 6395, 6446, 6395, 6395, 6395, 6445, 6395, 6395, 6395, 6395, 6400, 6448, 6395, 6448, 6395, 6395, 6399, 6395, 6395, 6448, 6395, 6395, 6395, 6447, 6447,
        6398, 6400, 6397, 6395, 6446, 6395, 6395, 6399, 6395, 6448, 6448, 6395, 6395, 6395, 6448, 6395, 6445, 6395, 6395, 6448, 6395, 6449, 6449, 6449, 6395, 6399, 6395, 6449, 6395, 6395, 6397, 6447, 6449, 6396, 6395, 6397, 6395, 6395, 6395, 6395, 6395, 6449, 6399, 6449, 6395, 6395, 6447,
        6395, 6395, 6395, 6395, 6395, 6395, 6446, 6400, 6395, 6395, 6400, 6395, 6450, 6395, 6396, 6395, 6450, 6395, 6395, 6395, 6398, 6400, 6395, 6449, 6395, 6448, 6395, 6395, 6395, 6450, 6450, 6395, 6395, 6395, 6448, 6398, 6395, 6446, 6398, 6395, 6395, 6395, 6399, 6395, 6396, 6449, 6395,
        6397, 6395, 6448, 6446, 6398, 6447, 6395, 6447, 6395, 6448, 6395, 6395, 6395, 6395, 6395, 6395, 6450, 6396, 6449, 6395, 6395, 6399, 6395, 6400, 6395, 6447, 6395, 6395, 6395, 6395, 6448, 6449, 6395, 6395, 6397, 6395, 6395, 6395, 6446, 6395, 6395, 6446, 6395, 6395, 6396, 6397, 6400,
        6400, 6395, 6395, 6395, 6395, 6395, 6450, 6446, 6446, 6395, 6395, 6395, 6446, 6395, 6446, 6395, 6395, 6395, 6445, 6448, 6396, 6398, 6395, 6397, 6395, 6395, 6395, 6395, 6449, 6446, 6446, 6395, 6447, 6400, 6447, 6450, 6395, 6400, 6395, 6447, 6395, 6395, 6449, 6395, 6448, 6445, 6397,
        6397, 6395, 6448, 6395, 6450, 6395, 6446, 6400, 6445, 6395, 6395, 6395, 6398, 6395, 6395, 6395, 6395, 6398, 6395, 6397, 6398, 6395, 6445, 6395, 6399, 6395, 6400, 6400, 6395, 6395, 6395, 6395, 6395, 6445, 6395, 6395, 6395, 6395, 6399, 6395, 6447, 6395, 6395, 6397, 6445, 6446, 6395,
        6448, 6395, 6398, 6395, 6395, 6448, 6395, 6395, 6447, 6395, 6447, 6395, 6395, 6395, 6395, 6450, 6395, 6450, 6398, 6395, 6395, 6395, 6395, 6397, 6397, 6400, 6398, 6400, 6395, 6400, 6447, 6397, 6449, 6448, 6395, 6450, 6395, 6395, 6395, 6448, 6395, 6395, 6395, 6446, 6395, 6395, 6395,
        6395, 6395, 6400, 6395, 6449, 6447, 6395, 6395, 6395, 6395, 6395, 6447, 6395, 6448, 6395, 6397, 6446, 6395, 6395, 6447, 6445, 6450, 6450, 6395, 6395, 6400, 6395, 6395, 6446, 6395, 6448, 6395, 6395, 6395, 6395, 6397, 6395, 6395, 6395, 6395, 6395, 6446, 6395, 6395, 6395, 6399, 6395,
        6399, 6395, 6449, 6400, 6395, 6395, 6395, 6450, 6395, 6395, 6445, 6395, 6395, 6399, 6395, 6399, 6395, 6449, 6446, 6398, 6395, 6450, 6395, 6395, 6447, 6448, 6447, 6395, 6395, 6397, 6395, 6398, 6395, 6395, 6395, 6395, 6395, 6397, 6395, 6395, 6395, 6395, 6395, 6395, 6445, 6395, 6445,
        6395, 6445, 6397, 6395, 6395, 6395, 6395, 6395, 6397, 6395, 6445, 6395, 6396, 6399, 6395, 6395, 6449, 6446, 6450, 6447, 6396, 6398, 6395, 6399, 6395, 6396, 6400, 6395, 6395, 6446, 6395, 6395, 6450, 6449, 6395, 6395, 6395, 6395, 6446, 6395, 6395, 6395, 6395, 6447, 6449, 6448, 6395,
        6395, 6395, 6395, 6447, 6395, 6395, 6450, 6448, 6446, 6395, 6448, 6395, 6395, 6445, 6399, 6400, 6395, 6395, 6395, 6398, 6395, 6395, 6398, 6395, 6449, 6395, 6395, 6395, 6395, 6396, 6395, 6396, 6395, 6395, 6395, 6395, 6395, 6395, 6396, 6395, 6395, 6395, 6448, 6399, 6395, 6395, 6400,
        6395, 6399, 6445, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6397, 6395, 6398, 6395, 6449, 6395, 6447, 6395, 6400, 6447, 6395, 6395, 6397, 6399, 6395, 6395, 6395, 6395, 6395, 6398, 6445, 6445, 6399, 6395, 6398, 6396, 6399, 6399, 6395, 6395, 6395, 6395, 6395, 6395, 6397, 6395,
        6395, 6399, 6396, 6395, 6445, 6395, 6395, 6395, 6395, 6395, 6447, 6449, 6399, 6395, 6396, 6396, 6449, 6395, 6395, 6395, 6395, 6395, 6445, 6397, 6399, 6395, 6395, 6395, 6395, 6450, 6395, 6399, 6395, 6395, 6395, 6445, 6395, 6396, 6396, 6395, 6446, 6399, 6396, 6395, 6395, 6395, 6400,
        6446, 6445, 6395, 6400, 6395, 6448, 6447, 6450, 6395, 6395, 6397, 6395, 6450, 6395, 6395, 6397, 6395, 6449, 6397, 6395, 6395, 6395, 6450, 6399, 6400, 6448, 6395, 6448, 6395, 6395, 6447, 6395, 6397, 6450, 6398, 6395, 6446, 6400, 6399, 6400, 6399, 6398, 6395, 6395, 6447, 6395, 6450,
        6395, 6449, 6395, 6399, 6397, 6447, 6447, 6448, 6395, 6449, 6450, 6395, 6395, 6447, 6395, 6395, 6446, 6448, 6395, 6400, 6395, 6395, 6445, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6398, 6395, 6395, 6447, 6395, 6395, 6395, 6395, 6448, 6395, 6399, 6395, 6400, 6395, 6395, 6447, 6395,
        6395, 6395, 6449, 6395, 6395, 6395, 6398, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6397, 6450, 6395, 6449, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6399, 6395, 6395, 6445, 6395, 6398, 6397, 6450, 6450, 6395, 6395, 6445, 6445, 6395, 6395, 6446, 6399, 6397, 6395, 6446,
        6395, 6395, 6395, 6400, 6395, 6450, 6449, 6395, 6400, 6395, 6446, 6395, 6446, 6396, 6450, 6395, 6397, 6395, 6446, 6395, 6448, 6400, 6395, 6446, 6395, 6395, 6395, 6395, 6398, 6396, 6447, 6449, 6395, 6447, 6395, 6445, 6395, 6399, 6398, 6449, 6450, 6445, 6395, 6395, 6397, 6395, 6450,
        6395, 6395, 6395, 6398, 6395, 6446, 6395, 6447, 6398, 6395, 6395, 6395, 6450, 6395, 6447, 6397, 6400, 6395, 6395, 6449, 6395, 6395, 6446, 6395, 6449, 6395, 6397, 6395, 6446, 6449, 6398, 6398, 6399, 6398, 6395, 6448, 6447, 6395, 6450, 6395, 6395, 6395, 6395, 6449, 6395, 6398, 6448,
        6400, 6395, 6400, 6395, 6395, 6398, 6395, 6395, 6396, 6395, 6450, 6445, 6395, 6395, 6395, 6450, 6395, 6395, 6395, 6448, 6395, 6395, 6395, 6450, 6395, 6395, 6399, 6448, 6396, 6395, 6398, 6395, 6395, 6395, 6395, 6400, 6449, 6395, 6395, 6400, 6448, 6400, 6400, 6400, 6446, 6395, 6395,
        6448, 6397, 6395, 6448, 6450, 6395, 6447, 6395, 6447, 6446, 6395, 6395, 6399, 6446, 6395, 6395, 6395, 6450, 6445, 6395, 6395, 6397, 6400, 6395, 6396, 6446, 6449, 6399, 6396, 6395, 6395, 6397, 6395, 6395, 6395, 6395, 6400, 6399, 6395, 6399, 6395, 6395, 6395, 6395, 6395, 6395, 6445,
        6395, 6395, 6399, 6398, 6398, 6395, 6450, 6395, 6395, 6449, 6448, 6395, 6395, 6445, 6395, 6395, 6395, 6395, 6445, 6395, 6396, 6395, 6395, 6395, 6395, 6395, 6395, 6449, 6395, 6396, 6449, 6395, 6446, 6396, 6396, 6395, 6395, 6399, 6400, 6395, 6398, 6445, 6449, 6448, 6395, 6395, 6445,
        6449, 6396, 6397, 6395, 6450, 6395, 6450, 6395, 6450, 6445, 6395, 6395, 6395, 6399, 6395, 6398, 6395, 6400, 6395, 6447, 6395, 6399, 6448, 6450, 6395, 6449, 6400, 6395, 6395, 6395, 6395, 6395, 6395, 6399, 6395, 6399, 6445, 6448, 6395, 6395, 6395, 6399, 6395, 6395, 6447, 6395, 6395,
        6395, 6395, 6400, 6446, 6396, 6395, 6449, 6448, 6398, 6446, 6395, 6400, 6395, 6445, 6450, 6395, 6448, 6446, 6446, 6399, 6395, 6395, 6448, 6395, 6448, 6397, 6395, 6446, 6395, 6395, 6395, 6395, 6397, 6395, 6395, 6448, 6395, 6399, 6396, 6395, 6396, 6395, 6395, 6395, 6395, 6448, 6395,
        6395, 6395, 6445, 6449, 6395, 6395, 6395, 6395, 6395, 6397, 6399, 6396, 6395, 6395, 6448, 6446, 6396, 6395, 6395, 6395, 6397, 6395, 6395, 6395, 6398, 6395, 6449, 6395, 6447, 6400, 6395, 6395, 6399, 6395, 6448, 6395, 6395, 6395, 6395, 6395, 6449, 6400, 6396, 6445, 6397, 6395, 6399,
        6395, 6397, 6395, 6447, 6445, 6448, 6395, 6396, 6450, 6397, 6395, 6447, 6448, 6450, 6395, 6395, 6395, 6398, 6446, 6395, 6395, 6445, 6446, 6395, 6450, 6395, 6446, 6397, 6399, 6395, 6450, 6398, 6396, 6399, 6399, 6395, 6395, 6446, 6395, 6395, 6400, 6400, 6395, 6395, 6398, 6447, 6395,
        6398, 6395, 6395, 6395, 6446, 6395, 6449, 6395, 6395, 6445, 6398, 6445, 6395, 6395, 6395, 6445, 6395, 6395, 6400, 6395, 6395, 6395, 6395, 6395, 6397, 6395, 6395, 6395, 6395, 6446, 6395, 6395, 6395, 6395, 6446, 6395, 6395, 6395, 6449, 6399, 6395, 6395, 6395, 6395, 6395, 6446, 6395,
        6447, 6395, 6398, 6395, 6395, 6397, 6395, 6395, 6447, 6395, 6447, 6395, 6395, 6446, 6448, 6395, 6395, 6396, 6395, 6395, 6395, 6395, 6398, 6395, 6395, 6400, 6395, 6446, 6395, 6395, 6446, 6395, 6446, 6395, 6400, 6395, 6397, 6395, 6395, 6449, 6395, 6395, 6395, 6449, 6399, 6395, 6395,
        6395, 6395, 6395, 6395, 6399, 6395, 6447, 6399, 6395, 6446, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6448, 6395, 6397, 6395, 6395, 6400, 6449, 6395, 6395, 6395, 6446, 6395, 6395, 6395, 6395, 6447, 6397, 6396, 6395, 6395, 6399, 6446, 6395, 6395, 6395, 6395, 6395, 6396, 6400, 6450,
        6395, 6449, 6395, 6399, 6395, 6395, 6399, 6395, 6399, 6395, 6446, 6395, 6447, 6395, 6398, 6398, 6395, 6400, 6395, 6395, 6395, 6445, 6448, 6395, 6446, 6395, 6395, 6448, 6450, 6445, 6395, 6395, 6395, 6395, 6447, 6399, 6398, 6447, 6448, 6395, 6395, 6395, 6399, 6397, 6448, 6395, 6395,
        6395, 6395, 6397, 6446, 6450, 6395, 6395, 6400, 6395, 6446, 6395, 6396, 6395, 6396, 6400, 6395, 6395, 6395, 6448, 6398, 6395, 6395, 6445, 6395, 6395, 6395, 6446, 6449, 6395, 6395, 6395, 6449, 6398, 6396, 6395, 6447, 6447, 6395, 6395, 6395, 6450, 6447, 6450, 6399, 6396, 6395, 6395,
        6395, 6395, 6395, 6395, 6448, 6395, 6447, 6395, 6448, 6395, 6395, 6395, 6395, 6395, 6395, 6396, 6395, 6395, 6445, 6396, 6448, 6400, 6395, 6399, 6395, 6445, 6395, 6450, 6395, 6395, 6399, 6399, 6395, 6395, 6395, 6398, 6448, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6397, 6449, 6395,
        6447, 6397, 6448, 6395, 6395, 6395, 6400, 6395, 6395, 6395, 6395, 6400, 6395, 6395, 6395, 6448, 6399, 6395, 6395, 6448, 6448, 6395, 6400, 6400, 6395, 6450, 6395, 6395, 6395, 6395, 6395, 6396, 6395, 6395, 6395, 6395, 6448, 6395, 6400, 6395, 6395, 6395, 6445, 6395, 6395, 6395, 6395,
        6445, 6395, 6395, 6395, 6397, 6400, 6446, 6397, 6395, 6395, 6445, 6395, 6397, 6448, 6397, 6395, 6395, 6446, 6395, 6450, 6395, 6395, 6397, 6397, 6395, 6398, 6395, 6395, 6445, 6449, 6395, 6395, 6450, 6400, 6395, 6445, 6395, 6395, 6395, 6449, 6400, 6395, 6450, 6395, 6395, 6397, 6395,
        6395, 6396, 6395, 6395, 6395, 6395, 6395, 6447, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6396, 6445, 6395, 6395, 6447, 6395, 6399, 6395, 6395, 6395, 6395, 6445, 6395, 6395, 6395, 6395, 6395, 6395, 6446, 6395, 6395, 6447, 6447, 6395, 6395, 6395, 6395, 6450, 6398, 6395, 6395,
        6398, 6395, 6450, 6450, 6395, 6395, 6399, 6395, 6447, 6449, 6449, 6450, 6450, 6445, 6447, 6397, 6395, 6395, 6395, 6397, 6396, 6395, 6397, 6395, 6400, 6396, 6395, 6395, 6449, 6446, 6395, 6448, 6395, 6449, 6448, 6395, 6396, 6395, 6395, 6395, 6395, 6446, 6395, 6395, 6395, 6395, 6395,
        6445, 6395, 6395, 6450, 6400, 6395, 6395, 6395, 6445, 6445, 6397, 6395, 6398, 6448, 6395, 6395, 6396, 6395, 6395, 6395, 6400, 6446, 6445, 6396, 6395, 6395, 6395, 6446, 6395, 6395, 6395, 6395, 6449, 6395, 6395, 6446, 6395, 6395, 6395, 6395, 6448, 6445, 6446, 6395, 6395, 6450, 6395,
        6395, 6397, 6395, 6448, 6395, 6395, 6395, 6450, 6395, 6395, 6395, 6449, 6395, 6446, 6395, 6449, 6395, 6395, 6447, 6448, 6395, 6395, 6395, 6397, 6395, 6395, 6395, 6395, 6448, 6395, 6399, 6397, 6447, 6395, 6395, 6397, 6395, 6399, 6395, 6395, 6395, 6396, 6400, 6395, 6396, 6397, 6395,
        6395, 6400, 6395, 6398, 6395, 6449, 6395, 6447, 6447, 6448, 6399, 6395, 6397, 6395, 6397, 6395, 6395, 6397, 6446, 6395, 6446, 6447, 6449, 6395, 6449, 6395, 6395, 6395, 6447, 6395, 6447, 6395, 6448, 6395, 6395, 6395, 6445, 6399, 6450, 6395, 6449, 6395, 6395, 6395, 6446, 6395, 6395,
        6395, 6395, 6448, 6395, 6395, 6448, 6395, 6395, 6395, 6395, 6449, 6395, 6399, 6397, 6395, 6395, 6395, 6446, 6395, 6449, 6447, 6395, 6448, 6395, 6395, 6395, 6395, 6395, 6395, 6450, 6395, 6400, 6395, 6398, 6395, 6445, 6446, 6399, 6395, 6395, 6395, 6395, 6395, 6395, 6398, 6395, 6398
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 47,
      height = 41,
      id = 15,
      name = "Environment",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 0, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 0, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 0, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1291, 1389, 1389, 1389, 1389, 1389, 1389, 1389, 1389,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1389, 1389, 1389, 1389, 1389, 1389, 0, 1548, 1548, 1548, 1548, 1548, 1548, 1548, 1548,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1439, 1439, 1439, 1439, 1439, 0, 0, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1489, 1489, 1489, 1489, 1489, 0, 0, 108, 151, 150, 151, 150, 151, 151, 150,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1539, 1539, 1539, 1539, 1539, 1539, 0, 131, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 47,
      height = 41,
      id = 20,
      name = "Terrain",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5419, 5419, 5419, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5419, 5419, 5419, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5419, 5419, 5419, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5419, 0, 0, 5418, 4819, 4819, 4819, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 840, 0, 0, 5418, 4819, 4819, 4819, 4819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5418, 4819, 4819, 4819, 4819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5418, 4819, 4819, 4819, 4819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5619, 5619, 5619, 5619, 5620, 4819, 4819, 4819, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5378, 5419, 5419, 5419, 4819, 4819, 4819, 4819, 4819, 4819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 7346, 7346, 7346, 7346, 7346, 7346, 7346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5418, 5419, 5419, 5419, 4819, 4819, 4819, 4819, 4819, 4819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 7346, 7358, 1758, 1758, 1762, 7408, 7408, 7408, 7408, 7347, 0, 0, 0, 0, 0, 0, 0, 0, 792, 4819, 5419, 5419, 5419, 4819, 4819, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 7346, 7408, 7408, 1808, 1808, 1699, 1796, 1796, 1796, 1796, 1797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4819, 5419, 5419, 5419, 4819, 4819, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 7302, 7302, 7302, 7303, 7299, 1797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4819, 5419, 5419, 5419, 4819, 4819, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 7302, 7352, 7302, 7355, 7347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5419, 5419, 5419, 5419, 4819, 4819, 5420, 0, 0, 0, 0, 0, 0, 795, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 7346, 7346, 7299, 7396, 7397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5418, 5419, 5419, 5419, 5419, 4819, 4819, 5420, 0, 0, 0, 0, 0, 1548, 7166, 7166, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 7396, 7396, 7396, 7397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5418, 5419, 5419, 5419, 5419, 4819, 4819, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5580, 5419, 5419, 5419, 5419, 4819, 4819, 5420, 0, 0, 0, 0, 0, 0, 6395, 0, 0, 0, 0, 0, 0, 0, 0,
        7289, 7289, 7289, 7289, 7290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5580, 5419, 5419, 5419, 5419, 4819, 4819, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        7389, 7389, 7389, 7389, 7390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 5540, 5419, 5419, 5419, 4819, 4819, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5580, 5419, 5419, 5419, 4819, 4819, 5618, 5380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 5540, 5419, 5419, 4819, 4819, 5419, 5420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 5540, 5419, 4819, 4819, 5419, 5618, 5380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5580, 5419, 4819, 4819, 5419, 5419, 5618, 5619, 5379, 5379, 5379, 5379, 5379, 5619, 5619, 5379, 5619, 5379, 5619, 5619,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 5540, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5540, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 5459, 5459, 5540, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 5459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7157, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7157, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 47,
      height = 41,
      id = 21,
      name = "Elevation",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 839, 840, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 839, 840, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 839, 840, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 889, 889, 890, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 890, 0, 0, 0, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 840, 0, 0, 0, 0, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 890, 0, 0, 0, 0, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 840, 0, 0, 0, 0, 0, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1415, 1416, 1416, 1620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 890, 0, 0, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 840, 0, 0, 0, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 7018, 1507, 1507, 1507, 1507, 1507, 1507, 1507, 1507,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 840, 0, 0, 0, 0, 0, 0, 5116, 0, 0, 0, 0, 0, 0, 7068, 1557, 1557, 1557, 1557, 1557, 1557, 1557, 1557,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5119, 1507, 1507, 1507, 1507, 1507, 1507, 7122, 1557, 1557, 1557, 1557, 1557, 1557, 1557, 1557,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 788, 789, 790, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5122, 1557, 1557, 1557, 1557, 1557, 1557, 1558, 1557, 1557, 1557, 1557, 1557, 1557, 1557, 1557,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6388, 6389, 843, 0, 842, 789, 6389, 6389, 6390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5122, 1557, 1557, 1557, 1557, 1557, 1557, 1558, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6438, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5132, 1607, 1607, 1607, 1607, 1607, 1607, 1608, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6438, 0, 0, 0, 0, 0, 0, 0, 6442, 6390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 6388, 6389, 6443, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 6388, 6389, 6443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6442, 6390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        6389, 6389, 6389, 6389, 6389, 6389, 6389, 6443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 888, 889, 889, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5458, 5459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6442, 6390, 0, 0, 0, 0, 0, 0, 0, 1456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 1506, 1507, 1507, 1507, 1507, 1420, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 1556, 1557, 1557, 1557, 1557, 1470, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 1556, 1557, 1557, 1557, 1557, 1456, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 1606, 1607, 1607, 1607, 1607, 1506, 1420, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1556, 1470, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6442, 6389, 6390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1556, 1520, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1606, 1525, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1456, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6442, 790, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1456, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 842, 789, 789, 789, 790, 0, 0, 0, 0, 0, 0, 1456, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 840, 0, 0, 0, 0, 0, 0, 1456, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 840, 0, 0, 0, 0, 0, 0, 7056, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 840, 0, 0, 0, 0, 0, 0, 7056, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 47,
      height = 41,
      id = 2,
      name = "Objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 47,
      height = 41,
      id = 16,
      name = "Platform",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6442, 6390, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6392, 6490, 0, 0, 0, 0, 838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 788, 843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 6392, 6489, 6489, 6489, 6489, 6489, 6489, 6393, 6439, 6440, 0, 0, 0, 0, 838, 0, 0, 0, 0, 840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 6439, 6440, 0, 0, 0, 0, 0, 0, 6488, 6489, 6490, 0, 0, 0, 0, 838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 6392, 6490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 888, 889, 793, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 6440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 838, 0, 840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 6392, 6490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 888, 889, 890, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        328, 328, 6489, 6489, 6490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 281, 282, 282, 282, 282, 282, 282, 282,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 281, 282, 282, 309, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 888, 793, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 789, 282, 284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 328, 328, 328, 328, 328, 328, 328,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 308, 284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 47,
      height = 41,
      id = 11,
      name = "Objects2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 47,
      height = 41,
      id = 4,
      name = "Test",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 47,
      height = 41,
      id = 23,
      name = "Top",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1406, 1407, 1407, 1407, 1407, 1407, 1407, 1407, 1407, 1407, 1407, 1407, 1407,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "Walls",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1439,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 0,
          width = 80,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1517,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 416,
          width = 32,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1518,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 528,
          width = 64,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1519,
          name = "",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 576,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1520,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 592,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1521,
          name = "",
          type = "",
          shape = "rectangle",
          x = 624,
          y = 448,
          width = 48,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1522,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 416,
          width = 80,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1530,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 0,
          width = 48,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1531,
          name = "",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 0,
          width = 32,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1532,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 560,
          width = 32,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1549,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 128,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1550,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 128,
          width = 48,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1551,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 128,
          width = 16,
          height = 44,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1552,
          name = "",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 96,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1553,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 0,
          width = 48,
          height = 144,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1554,
          name = "",
          type = "",
          shape = "rectangle",
          x = 496,
          y = 144,
          width = 128,
          height = 108,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1555,
          name = "",
          type = "",
          shape = "rectangle",
          x = 496,
          y = 252,
          width = 48,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1556,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 252,
          width = 64,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1557,
          name = "",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 272,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1558,
          name = "",
          type = "",
          shape = "rectangle",
          x = 592,
          y = 336,
          width = 160,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1559,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 0,
          width = 48,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1560,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 64,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1561,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 128,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1562,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 112,
          width = 96,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1563,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 208,
          width = 80,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1564,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 176,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1565,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 144,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1566,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 320,
          width = 112,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1567,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 304,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1568,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 288,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1569,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 240,
          width = 32,
          height = 60,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1570,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 224,
          width = 48,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1571,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 240,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1572,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 272,
          width = 48,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1573,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 304,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1574,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 352,
          width = 64,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1575,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 368,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "Loot",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 12,
      name = "Plants",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1300,
          name = "grass1",
          type = "",
          shape = "point",
          x = 452,
          y = 12,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1301,
          name = "grass1",
          type = "",
          shape = "point",
          x = 360,
          y = 20,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1357,
          name = "grass1",
          type = "",
          shape = "point",
          x = 20,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1358,
          name = "grass1",
          type = "",
          shape = "point",
          x = 16,
          y = 408,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1361,
          name = "grass1",
          type = "",
          shape = "point",
          x = 564,
          y = 628,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1588,
          name = "grass1",
          type = "",
          shape = "point",
          x = 120,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1589,
          name = "grass1",
          type = "",
          shape = "point",
          x = 88,
          y = 344,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1590,
          name = "grass1",
          type = "",
          shape = "point",
          x = 232,
          y = 276,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1591,
          name = "grass1",
          type = "",
          shape = "point",
          x = 200,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1592,
          name = "grass1",
          type = "",
          shape = "point",
          x = 168,
          y = 332,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1593,
          name = "grass1",
          type = "",
          shape = "point",
          x = 264,
          y = 344,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1594,
          name = "grass1",
          type = "",
          shape = "point",
          x = 300,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1595,
          name = "grass1",
          type = "",
          shape = "point",
          x = 312,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1596,
          name = "grass1",
          type = "",
          shape = "point",
          x = 380,
          y = 396,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1597,
          name = "grass1",
          type = "",
          shape = "point",
          x = 408,
          y = 472,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1598,
          name = "grass1",
          type = "",
          shape = "point",
          x = 340,
          y = 444,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1599,
          name = "grass1",
          type = "",
          shape = "point",
          x = 328,
          y = 476,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1600,
          name = "grass1",
          type = "",
          shape = "point",
          x = 440,
          y = 556,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1601,
          name = "grass1",
          type = "",
          shape = "point",
          x = 412,
          y = 616,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1602,
          name = "grass1",
          type = "",
          shape = "point",
          x = 520,
          y = 648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1603,
          name = "grass1",
          type = "",
          shape = "point",
          x = 488,
          y = 568,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1604,
          name = "grass1",
          type = "",
          shape = "point",
          x = 528,
          y = 528,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1605,
          name = "grass1",
          type = "",
          shape = "point",
          x = 524,
          y = 576,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1606,
          name = "grass1",
          type = "",
          shape = "point",
          x = 628,
          y = 592,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1607,
          name = "grass1",
          type = "",
          shape = "point",
          x = 624,
          y = 640,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1608,
          name = "grass1",
          type = "",
          shape = "point",
          x = 584,
          y = 556,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1609,
          name = "grass1",
          type = "",
          shape = "point",
          x = 464,
          y = 512,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1610,
          name = "grass1",
          type = "",
          shape = "point",
          x = 504,
          y = 484,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1611,
          name = "grass1",
          type = "",
          shape = "point",
          x = 528,
          y = 444,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1612,
          name = "grass1",
          type = "",
          shape = "point",
          x = 460,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1613,
          name = "grass1",
          type = "",
          shape = "point",
          x = 420,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1614,
          name = "grass1",
          type = "",
          shape = "point",
          x = 388,
          y = 332,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1615,
          name = "grass1",
          type = "",
          shape = "point",
          x = 380,
          y = 276,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1616,
          name = "grass1",
          type = "",
          shape = "point",
          x = 352,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1617,
          name = "grass1",
          type = "",
          shape = "point",
          x = 560,
          y = 348,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1618,
          name = "grass1",
          type = "",
          shape = "point",
          x = 520,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1619,
          name = "grass1",
          type = "",
          shape = "point",
          x = 332,
          y = 252,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1620,
          name = "grass1",
          type = "",
          shape = "point",
          x = 344,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1621,
          name = "grass1",
          type = "",
          shape = "point",
          x = 268,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1622,
          name = "grass1",
          type = "",
          shape = "point",
          x = 128,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1623,
          name = "grass1",
          type = "",
          shape = "point",
          x = 40,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1624,
          name = "grass1",
          type = "",
          shape = "point",
          x = 8,
          y = 312,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1625,
          name = "grass1",
          type = "",
          shape = "point",
          x = 280,
          y = 144,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1626,
          name = "grass1",
          type = "",
          shape = "point",
          x = 284,
          y = 72,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1627,
          name = "grass1",
          type = "",
          shape = "point",
          x = 316,
          y = 92,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1628,
          name = "grass1",
          type = "",
          shape = "point",
          x = 316,
          y = 12,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1629,
          name = "grass1",
          type = "",
          shape = "point",
          x = 268,
          y = 24,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1630,
          name = "grass1",
          type = "",
          shape = "point",
          x = 440,
          y = 108,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1631,
          name = "grass1",
          type = "",
          shape = "point",
          x = 468,
          y = 32,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1632,
          name = "grass1",
          type = "",
          shape = "point",
          x = 428,
          y = 32,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1633,
          name = "grass1",
          type = "",
          shape = "point",
          x = 408,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1634,
          name = "grass1",
          type = "",
          shape = "point",
          x = 376,
          y = 168,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1635,
          name = "grass1",
          type = "",
          shape = "point",
          x = 376,
          y = 208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1636,
          name = "grass1",
          type = "",
          shape = "point",
          x = 564,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1637,
          name = "grass1",
          type = "",
          shape = "point",
          x = 572,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1638,
          name = "grass1",
          type = "",
          shape = "point",
          x = 640,
          y = 64,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1639,
          name = "grass1",
          type = "",
          shape = "point",
          x = 588,
          y = 32,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1640,
          name = "grass1",
          type = "",
          shape = "point",
          x = 684,
          y = 164,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1641,
          name = "grass1",
          type = "",
          shape = "point",
          x = 644,
          y = 292,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1642,
          name = "grass1",
          type = "",
          shape = "point",
          x = 660,
          y = 344,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1643,
          name = "grass1",
          type = "",
          shape = "point",
          x = 600,
          y = 316,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1644,
          name = "grass1",
          type = "",
          shape = "point",
          x = 204,
          y = 316,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1645,
          name = "grass1",
          type = "",
          shape = "point",
          x = 60,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1646,
          name = "grass1",
          type = "",
          shape = "point",
          x = 72,
          y = 140,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1647,
          name = "grass1",
          type = "",
          shape = "point",
          x = 156,
          y = 128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1648,
          name = "grass1",
          type = "",
          shape = "point",
          x = 188,
          y = 96,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1649,
          name = "grass1",
          type = "",
          shape = "point",
          x = 88,
          y = 108,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1650,
          name = "grass1",
          type = "",
          shape = "point",
          x = 248,
          y = 92,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1651,
          name = "grass1",
          type = "",
          shape = "point",
          x = 232,
          y = 20,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1652,
          name = "grass1",
          type = "",
          shape = "point",
          x = 184,
          y = 28,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 14,
      name = "NPC",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1080,
          name = "soldierEastGate",
          type = "",
          shape = "point",
          x = 184,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 17,
      name = "Rocks",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 9,
      name = "Trees",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1393,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 680,
          y = 636,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1401,
          name = "big1",
          type = "fake",
          shape = "rectangle",
          x = 428,
          y = 680,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1405,
          name = "big1",
          type = "fake",
          shape = "rectangle",
          x = 372,
          y = 104,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1406,
          name = "big1",
          type = "fake",
          shape = "rectangle",
          x = 376,
          y = 492,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1470,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 44,
          y = 348,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1506,
          name = "campfire",
          type = "",
          shape = "point",
          x = 112,
          y = 208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1507,
          name = "stump",
          type = "",
          shape = "rectangle",
          x = 76,
          y = 624,
          width = 12,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1547,
          name = "banner2",
          type = "right",
          shape = "point",
          x = 232,
          y = 248,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1548,
          name = "banner2",
          type = "right",
          shape = "point",
          x = 232,
          y = 148,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1576,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 696,
          y = 512,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1577,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 308,
          y = 364,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1578,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 268,
          y = 280,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1579,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 340,
          y = 148,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1580,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 204,
          y = 36,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1582,
          name = "big1",
          type = "fake",
          shape = "rectangle",
          x = 20,
          y = 204,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1583,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 612,
          y = 308,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1584,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 656,
          y = 460,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1585,
          name = "tree1",
          type = "",
          shape = "rectangle",
          x = 150.273,
          y = 267.455,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1586,
          name = "tree1",
          type = "",
          shape = "rectangle",
          x = 366.25,
          y = 331.409,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1587,
          name = "tree1",
          type = "",
          shape = "rectangle",
          x = 596,
          y = 516,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1653,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 176,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1654,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 72,
          y = 152,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1655,
          name = "tree1",
          type = "fake",
          shape = "rectangle",
          x = 484,
          y = 632,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 22,
      name = "Props",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "Chests",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1681,
          name = "forestRiver",
          type = "small",
          shape = "point",
          x = 464,
          y = 72,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "Enemies",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1679,
          name = "hornetWorker",
          type = "",
          shape = "point",
          x = 580,
          y = 548,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 13,
      name = "Portals",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 10,
      name = "Water",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1656,
          name = "",
          type = "",
          shape = "rectangle",
          x = 496,
          y = 0,
          width = 48,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1657,
          name = "",
          type = "",
          shape = "rectangle",
          x = 492,
          y = 64,
          width = 52,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1658,
          name = "",
          type = "",
          shape = "rectangle",
          x = 432,
          y = 120,
          width = 112,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1659,
          name = "",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 128,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1660,
          name = "",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 144,
          width = 80,
          height = 28,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1661,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 172,
          width = 96,
          height = 68,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1662,
          name = "",
          type = "",
          shape = "rectangle",
          x = 396,
          y = 240,
          width = 100,
          height = 52,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1663,
          name = "",
          type = "",
          shape = "rectangle",
          x = 496,
          y = 272,
          width = 4,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1664,
          name = "",
          type = "",
          shape = "rectangle",
          x = 412,
          y = 292,
          width = 88,
          height = 28,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1666,
          name = "",
          type = "",
          shape = "rectangle",
          x = 428,
          y = 320,
          width = 88,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1668,
          name = "",
          type = "",
          shape = "rectangle",
          x = 444,
          y = 340,
          width = 76,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1669,
          name = "",
          type = "",
          shape = "rectangle",
          x = 460,
          y = 372,
          width = 60,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1670,
          name = "",
          type = "",
          shape = "rectangle",
          x = 520,
          y = 348,
          width = 8,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1671,
          name = "",
          type = "",
          shape = "rectangle",
          x = 492,
          y = 388,
          width = 28,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1672,
          name = "",
          type = "",
          shape = "rectangle",
          x = 528,
          y = 362.545,
          width = 64,
          height = 41.4545,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1673,
          name = "",
          type = "",
          shape = "rectangle",
          x = 536,
          y = 404,
          width = 216,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1674,
          name = "",
          type = "",
          shape = "rectangle",
          x = 592,
          y = 368,
          width = 160,
          height = 36,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "Transitions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 748,
          name = "1_meadow",
          type = "up",
          shape = "rectangle",
          x = 224,
          y = -16,
          width = 352,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = -1,
            ["destY"] = 788
          }
        },
        {
          id = 1069,
          name = "4_town",
          type = "left",
          shape = "rectangle",
          x = -16,
          y = 216,
          width = 16,
          height = 144,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 946,
            ["destY"] = 400
          }
        },
        {
          id = 1480,
          name = "8_forest-south",
          type = "down",
          shape = "rectangle",
          x = 516,
          y = 656,
          width = 152,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 784,
            ["destY"] = 10
          }
        },
        {
          id = 1487,
          name = "c_forest",
          type = "",
          shape = "rectangle",
          x = 540,
          y = 248,
          width = 24,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 472,
            ["destY"] = 1140
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 18,
      name = "Tutorials",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 19,
      name = "Weapons",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1508,
          name = "greataxe",
          type = "",
          shape = "point",
          x = 83.348,
          y = 628.783,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}

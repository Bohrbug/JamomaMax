{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 6,
      "minor": 0,
      "revision": 5
    },
    "rect": [
      72.0,
      107.0,
      934.0,
      570.0
    ],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 10.970939,
    "default_fontface": 0,
    "default_fontname": "Verdana",
    "gridonopen": 0,
    "gridsize": [
      5.0,
      5.0
    ],
    "gridsnaponopen": 0,
    "statusbarvisible": 2,
    "toolbarvisible": 1,
    "boxanimatetime": 200,
    "imprint": 0,
    "enablehscroll": 1,
    "enablevscroll": 1,
    "devicewidth": 0.0,
    "description": "",
    "digest": "",
    "tags": "",
    "boxes": [
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            156.0,
            226.0,
            81.0,
            20.0
          ],
          "text": "route symbol"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            71.0,
            227.0,
            81.0,
            20.0
          ],
          "text": "route symbol"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            731.0,
            285.0,
            69.0,
            20.0
          ],
          "text": "route bang"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-4",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            877.0,
            523.0,
            15.0,
            15.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-5",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            59.0,
            16.0,
            15.0,
            15.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            628.0,
            438.0,
            34.0,
            20.0
          ],
          "text": "print"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 6,
              "minor": 0,
              "revision": 5
            },
            "rect": [
              10.0,
              59.0,
              284.0,
              227.0
            ],
            "bglocked": 0,
            "openinpresentation": 0,
            "default_fontsize": 10.0,
            "default_fontface": 0,
            "default_fontname": "Verdana",
            "gridonopen": 0,
            "gridsize": [
              5.0,
              5.0
            ],
            "gridsnaponopen": 0,
            "statusbarvisible": 2,
            "toolbarvisible": 1,
            "boxanimatetime": 200,
            "imprint": 0,
            "enablehscroll": 1,
            "enablevscroll": 1,
            "devicewidth": 0.0,
            "description": "",
            "digest": "",
            "tags": "",
            "boxes": [
              {
                "box": {
                  "fontname": "Verdana",
                  "fontsize": 10.970939,
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    93.0,
                    118.0,
                    74.0,
                    20.0
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "fontname": "Verdana",
                  "fontsize": 10.970939,
                  "id": "obj-2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    95.0,
                    65.0,
                    20.0
                  ],
                  "text": "sprintf %s"
                }
              },
              {
                "box": {
                  "fontname": "Verdana",
                  "fontsize": 10.970939,
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    69.0,
                    50.0,
                    227.0,
                    20.0
                  ],
                  "text": "j.receive j.remote.module.from"
                }
              },
              {
                "box": {
                  "fontname": "Verdana",
                  "fontsize": 10.970939,
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    72.0,
                    33.0,
                    20.0
                  ],
                  "text": "gate"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-5",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    52.0,
                    15.0,
                    15.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-6",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.0,
                    138.0,
                    15.0,
                    15.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-7",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    93.0,
                    140.0,
                    15.0,
                    15.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-7",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-1",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    1
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-2",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-5",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [
              {
                "name": "j.loader.mxo",
                "type": "iLaX"
              }
            ]
          },
          "patching_rect": [
            797.0,
            190.0,
            108.0,
            20.0
          ],
          "saved_object_attributes": {
            "tags": "",
            "fontname": "Verdana",
            "default_fontface": 0,
            "digest": "",
            "default_fontname": "Verdana",
            "globalpatchername": "",
            "fontface": 0,
            "default_fontsize": 10.0,
            "fontsize": 10.0,
            "description": ""
          },
          "text": "p listenMappingTo"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 6,
              "minor": 0,
              "revision": 5
            },
            "rect": [
              10.0,
              59.0,
              298.0,
              241.0
            ],
            "bglocked": 0,
            "openinpresentation": 0,
            "default_fontsize": 10.0,
            "default_fontface": 0,
            "default_fontname": "Verdana",
            "gridonopen": 0,
            "gridsize": [
              5.0,
              5.0
            ],
            "gridsnaponopen": 0,
            "statusbarvisible": 2,
            "toolbarvisible": 1,
            "boxanimatetime": 200,
            "imprint": 0,
            "enablehscroll": 1,
            "enablevscroll": 1,
            "devicewidth": 0.0,
            "description": "",
            "digest": "",
            "tags": "",
            "boxes": [
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    50.0,
                    44.0,
                    15.0,
                    15.0
                  ]
                }
              },
              {
                "box": {
                  "fontname": "Verdana",
                  "fontsize": 10.970939,
                  "id": "obj-2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    105.0,
                    118.0,
                    74.0,
                    20.0
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "fontname": "Verdana",
                  "fontsize": 10.970939,
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    95.0,
                    65.0,
                    20.0
                  ],
                  "text": "sprintf %s"
                }
              },
              {
                "box": {
                  "fontname": "Verdana",
                  "fontsize": 10.970939,
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    69.0,
                    50.0,
                    227.0,
                    20.0
                  ],
                  "text": "j.receive j.remote.module.from"
                }
              },
              {
                "box": {
                  "fontname": "Verdana",
                  "fontsize": 10.970939,
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    72.0,
                    33.0,
                    20.0
                  ],
                  "text": "gate"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-6",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    22.0,
                    15.0,
                    15.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-7",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.0,
                    149.0,
                    15.0,
                    15.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-8",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    105.0,
                    148.0,
                    15.0,
                    15.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-2",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-7",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    1
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-1",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-6",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [
              {
                "name": "j.loader.mxo",
                "type": "iLaX"
              }
            ]
          },
          "patching_rect": [
            665.0,
            190.0,
            123.0,
            20.0
          ],
          "saved_object_attributes": {
            "tags": "",
            "fontname": "Verdana",
            "default_fontface": 0,
            "digest": "",
            "default_fontname": "Verdana",
            "globalpatchername": "",
            "fontface": 0,
            "default_fontsize": 10.0,
            "fontsize": 10.0,
            "description": ""
          },
          "text": "p listenMappingFrom"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-9",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ],
          "patching_rect": [
            599.0,
            242.0,
            34.0,
            20.0
          ],
          "text": "t b b"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-10",
          "maxclass": "newobj",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            599.0,
            396.0,
            212.0,
            20.0
          ],
          "text": "sprintf /create %s %s %s %s -> %s"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            640.0,
            342.0,
            89.0,
            20.0
          ],
          "text": "sprintf link%ld"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-12",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            640.0,
            320.0,
            28.0,
            20.0
          ],
          "text": "+ 1"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 5,
          "numoutlets": 4,
          "outlettype": [
            "int",
            "",
            "",
            "int"
          ],
          "patching_rect": [
            640.0,
            297.0,
            66.0,
            20.0
          ],
          "text": "counter"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            196.0,
            344.0,
            92.0,
            20.0
          ],
          "text": "prepend create"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            196.0,
            268.0,
            74.0,
            20.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            196.0,
            323.0,
            74.0,
            20.0
          ],
          "text": "prepend src"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-17",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            410.0,
            148.0,
            118.0,
            20.0
          ],
          "text": "j.filesaver TEXT"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-18",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            401.0,
            95.0,
            35.0,
            18.0
          ],
          "text": "clear"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-19",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            217.0,
            393.0,
            51.0,
            18.0
          ],
          "text": "compile"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "dump",
            "clear"
          ],
          "patching_rect": [
            253.5,
            228.0,
            78.0,
            20.0
          ],
          "text": "t dump clear"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            254.5,
            212.0,
            15.0,
            15.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            335.0,
            113.0,
            99.0,
            20.0
          ],
          "text": "j.filewatcher"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "open"
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 6,
              "minor": 0,
              "revision": 5
            },
            "rect": [
              412.0,
              228.0,
              640.0,
              480.0
            ],
            "bglocked": 0,
            "openinpresentation": 0,
            "default_fontsize": 10.0,
            "default_fontface": 0,
            "default_fontname": "Verdana",
            "gridonopen": 0,
            "gridsize": [
              25.0,
              25.0
            ],
            "gridsnaponopen": 0,
            "statusbarvisible": 2,
            "toolbarvisible": 1,
            "boxanimatetime": 200,
            "imprint": 0,
            "enablehscroll": 1,
            "enablevscroll": 1,
            "devicewidth": 0.0,
            "description": "",
            "digest": "",
            "tags": "",
            "boxes": [
              {
                "box": {
                  "fontname": "Verdana",
                  "fontsize": 10.0,
                  "frgb": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "id": "obj-23",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    118.0,
                    100.0,
                    178.0,
                    43.0
                  ],
                  "text": "prevent textfield to pop up for parameter such as /view/color/border etc...."
                }
              },
              {
                "box": {
                  "fontname": "Verdana",
                  "fontsize": 10.0,
                  "id": "obj-21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    51.0,
                    100.0,
                    53.0,
                    19.0
                  ],
                  "text": "sel bang"
                }
              },
              {
                "box": {
                  "fontname": "Verdana",
                  "fontsize": 10.0,
                  "id": "obj-14",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "open"
                  ],
                  "patching_rect": [
                    51.0,
                    130.0,
                    41.0,
                    19.0
                  ],
                  "text": "t open"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-24",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    51.0,
                    40.0,
                    25.0,
                    25.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-25",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.0,
                    209.0,
                    25.0,
                    25.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-25",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-14",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-21",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-24",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [

            ]
          },
          "patching_rect": [
            269.0,
            141.0,
            43.0,
            19.0
          ],
          "saved_object_attributes": {
            "tags": "",
            "fontname": "Verdana",
            "default_fontface": 0,
            "digest": "",
            "default_fontname": "Verdana",
            "globalpatchername": "",
            "fontface": 0,
            "default_fontsize": 10.0,
            "fontsize": 10.0,
            "description": ""
          },
          "text": "p view"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            59.0,
            414.0,
            70.0,
            20.0
          ],
          "save": [
            "#N",
            "thispatcher",
            ";",
            "#Q",
            "end",
            ";"
          ],
          "text": "thispatcher"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            59.0,
            393.0,
            120.0,
            20.0
          ],
          "saved_object_attributes": {
            "parameter_enable": 0
          },
          "text": "js j.mappings.js"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-26",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            59.0,
            323.0,
            134.0,
            33.0
          ],
          "text": "j.pass /modify /remove /create /clear"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            59.0,
            145.0,
            99.0,
            20.0
          ],
          "text": "prepend remove"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            159.0,
            145.0,
            85.0,
            20.0
          ],
          "text": "prepend store"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-32",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            159.0,
            183.0,
            161.0,
            20.0
          ],
          "saved_object_attributes": {
            "embed": 0
          },
          "text": "coll #0_j.mappings 1"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-33",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 13,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            71.0,
            70.0,
            810.0,
            20.0
          ],
          "text": "j.oscroute /modify /remove /create /view /loadMappings /clear /saveMappings /update /mapCreate /mapFrom /mapAlgorithm /mapTo"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-34",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            757.0,
            519.0,
            15.0,
            15.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "id": "obj-35",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 6,
              "minor": 0,
              "revision": 5
            },
            "rect": [
              10.0,
              59.0,
              182.0,
              200.0
            ],
            "bglocked": 0,
            "openinpresentation": 0,
            "default_fontsize": 10.0,
            "default_fontface": 0,
            "default_fontname": "Verdana",
            "gridonopen": 0,
            "gridsize": [
              5.0,
              5.0
            ],
            "gridsnaponopen": 0,
            "statusbarvisible": 2,
            "toolbarvisible": 1,
            "boxanimatetime": 200,
            "imprint": 0,
            "enablehscroll": 1,
            "enablevscroll": 1,
            "devicewidth": 0.0,
            "description": "",
            "digest": "",
            "tags": "",
            "boxes": [
              {
                "box": {
                  "comment": "",
                  "id": "obj-1",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    75.0,
                    90.0,
                    15.0,
                    15.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-2",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    75.0,
                    60.0,
                    15.0,
                    15.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-1",
                    0
                  ],
                  "disabled": 0,
                  "hidden": 0,
                  "source": [
                    "obj-2",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [

            ]
          },
          "patching_rect": [
            59.0,
            44.0,
            42.0,
            20.0
          ],
          "saved_object_attributes": {
            "tags": "",
            "fontname": "Verdana",
            "default_fontface": 0,
            "digest": "",
            "default_fontname": "Verdana",
            "globalpatchername": "",
            "fontface": 0,
            "default_fontsize": 10.0,
            "fontsize": 10.0,
            "description": ""
          },
          "text": "p thru"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.970939,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-36",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            126.0,
            54.0,
            298.0,
            20.0
          ],
          "text": "/modify is first so that it will be executed the fastest"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1002",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            66.0,
            244.0,
            46.0,
            19.0
          ],
          "text": "j.in"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1004",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            626.0,
            232.0,
            262.0,
            31.0
          ],
          "text": "j.message clear @type none @description \"Reset by removing all existing mappings. \""
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1009",
          "linecount": 4,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            244.3564,
            381.0,
            162.287201,
            55.0
          ],
          "text": "j.parameter mapToReturn @type generic @description \"Displays the currently active parameter\"",
          "varname": "mapToReturn[1]"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1011",
          "linecount": 4,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            66.0,
            381.0,
            169.0,
            55.0
          ],
          "text": "j.parameter mapFromReturn @type generic @description \"Displays the currently active parameter\"",
          "varname": "mapFromReturn[1]"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1013",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            450.0,
            552.0,
            369.0,
            19.0
          ],
          "text": "j.message mapCreate @description \"Bang to create new mapping.\"",
          "varname": "j.parameter[6]"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1015",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            77.3564,
            526.0,
            270.0,
            31.0
          ],
          "text": "j.parameter mapAlgorithm @type generic @description \"algorithm to use when mapping. \"",
          "varname": "mapAlgorithm[1]"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1016",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            487.0,
            516.0,
            325.0,
            31.0
          ],
          "text": "j.parameter mapTo @type boolean @description \"Turn on the listen function for values that you want to map to.\"",
          "varname": "mapTo[1]"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1018",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            501.75,
            480.0,
            340.0,
            31.0
          ],
          "text": "j.parameter mapFrom @type boolean @description \"Turn on the listen function for values that you want to map from.\"",
          "varname": "mapFrom[1]"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1028",
          "linecount": 3,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            612.5,
            273.0,
            452.0,
            43.0
          ],
          "text": "j.message update @type none @description \"If you have made changes in the viewer (or an external text editor) then you will need to send this /update message in order for them to take effect.  This done automatically when you open a fresh file.\""
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1032",
          "linecount": 3,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            585.5,
            362.0,
            361.0,
            43.0
          ],
          "text": "j.message saveMappings @description \"Save mappings to a file.  An argument determines the file path and name.  If no argument is given then a file dialog will be presented.\""
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1034",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            482.0,
            130.0,
            510.0,
            19.0
          ],
          "text": "j.message clear @repetitions/filter 0 @description \"Reset by removing all existing mappings. \""
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1036",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            599.0,
            328.0,
            350.0,
            31.0
          ],
          "text": "j.message view @type none @repetitions/filter 0 @description \"View current mappings in a text window.\""
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1041",
          "linecount": 4,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            572.0,
            413.0,
            374.0,
            55.0
          ],
          "text": "j.message loadMappings @description \"Load mappings from file. <br/>NOTE: j.mappings will be watching the file and automatically update if the content of the file is changed. This way you can use an external editor to work on the cue script while Jamoma is running.\""
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1042",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            482.0,
            92.0,
            589.0,
            31.0
          ],
          "text": "j.message modify @repetitions/filter 0 @description \"Remove an existing mapping.  the required argument is the mapping_name.\""
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1043",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            482.0,
            55.0,
            593.0,
            31.0
          ],
          "text": "j.message remove @repetitions/filter 0 @description \"Remove an existing mapping.  the required argument is the mapping_name.\""
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1045",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            482.0,
            6.0,
            595.0,
            31.0
          ],
          "text": "j.message create @repetitions/filter 0 @description \"Create a new mapping. Arguments are: [mapping_name] [mapping_source (OSC)] [optionalorithm to apply][ ->][mapping_destination (OSC)].\""
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "obj-15",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-1",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-15",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-35",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            608.5,
            458.0,
            28.0,
            458.0,
            28.0,
            40.0,
            68.5,
            40.0
          ],
          "source": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-6",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-10",
            1
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-11",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-12",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-12",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            205.5,
            375.0,
            68.5,
            375.0
          ],
          "source": [
            "obj-14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-14",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            419.5,
            172.0,
            168.5,
            172.0
          ],
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            410.5,
            381.0,
            68.5,
            381.0
          ],
          "source": [
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            410.5,
            175.0,
            168.5,
            175.0
          ],
          "source": [
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            226.5,
            412.0,
            212.0,
            412.0,
            212.0,
            389.0,
            68.5,
            389.0
          ],
          "source": [
            "obj-19",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-2",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            322.0,
            378.0,
            68.5,
            378.0
          ],
          "source": [
            "obj-20",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            263.0,
            253.0,
            342.0,
            253.0,
            342.0,
            178.0,
            168.5,
            178.0
          ],
          "source": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-21",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-17",
            1
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-22",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            344.5,
            169.0,
            168.5,
            169.0
          ],
          "source": [
            "obj-22",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            278.5,
            166.0,
            168.5,
            166.0
          ],
          "source": [
            "obj-23",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-24",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-26",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-26",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-26",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-26",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-27",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-10",
            3
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-3",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-31",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-1",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-32",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-2",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-32",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-21",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-32",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-17",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            476.0,
            132.0,
            419.5,
            132.0
          ],
          "source": [
            "obj-33",
            6
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-18",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-33",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-21",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            541.916687,
            208.0,
            263.5,
            208.0
          ],
          "source": [
            "obj-33",
            7
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-22",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-33",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-23",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-33",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            146.416672,
            118.0,
            68.5,
            118.0
          ],
          "source": [
            "obj-33",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-33",
            10
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-31",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-33",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-7",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-33",
            11
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-8",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-33",
            9
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-9",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-33",
            8
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-26",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-35",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-33",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-35",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-35",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-10",
            4
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-7",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-10",
            2
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-8",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-34",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-8",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-10",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-9",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-13",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-9",
            1
          ]
        }
      }
    ],
    "dependency_cache": [
      {
        "name": "j.mappings.js",
        "bootpath": "/Users/nilspeters/Documents/gits/Jamoma/Modules/Modular/Max/modules/control/mapper",
        "patcherrelativepath": "",
        "type": "TEXT",
        "implicit": 1
      },
      {
        "name": "j.filewatcher.maxpat",
        "bootpath": "/Users/nilspeters/Documents/gits/Jamoma/Modules/Modular/Max/library/components/filewatcher",
        "patcherrelativepath": "../../../library/components/filewatcher",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "j.filesaver.maxpat",
        "bootpath": "/Users/nilspeters/Documents/gits/Jamoma/Modules/Modular/Max/library/components/filesaver",
        "patcherrelativepath": "../../../library/components/filesaver",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "j.oscroute.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.pass.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.loader.mxo",
        "type": "iLaX"
      }
    ]
  }
}
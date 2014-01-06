{
  "patcher": {
    "fileversion": 1,
    "rect": [
      0.0,
      44.0,
      1"fontsize": 12.02.0,
      677.0
    ],
    "bglocked": 0,
    "defrect": [
      0.0,
      44.0,
      1"fontsize": 12.02.0,
      677.0
    ],
    "openrect": [
      0.0,
      0.0,
      0.0,
      0.0
    ],
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 0,
    "gridsize": [
      15.0,
      15.0
    ],
    "gridsnaponopen": 0,
    "toolbarvisible": 1,
    "boxanimatetime": 200,
    "imprint": 0,
    "enablehscroll": 1,
    "enablevscroll": 1,
    "devicewidth": 0.0,
    "boxes": [
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 11.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-40",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            33.0,
            164.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            53.0,
            33.0,
            136.0,
            20.0
          ],
          "text": "gain W-channel [dB] :"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": "fontsize": 12.0.0,
          "id": "obj-14",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            152.0,
            233.0,
            137.0,
            17.0
          ],
          "text": "/documentation/generate"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.8,
            0.54902,
            0.54902,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": "fontsize": 12.0.0,
          "id": "obj-38",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            117.0,
            208.0,
            199.0,
            17.0
          ],
          "text": "/preset/store 1 default, /preset/write"
        }
      },
      {
        "box": {
          "comment": "front left",
          "id": "obj-37",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            75.0,
            121.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-34",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "bang"
          ],
          "patching_rect": [
            382.0,
            27.0,
            52.0,
            21.0
          ],
          "presentation": 1,
          "presentation_rect": [
            190.0,
            33.0,
            52.0,
            21.0
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-24",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            75.0,
            288.0,
            336.0,
            34.0
          ],
          "text": "j.model @description \"Convert a Zoom-H2 four channel recording into a horizontal-only B-format 2nd order\""
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            140.0,
            451.0,
            49.0,
            20.0
          ],
          "text": "j.in"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-21",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            75.0,
            606.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            "audio.connect"
          ],
          "patcher": {
            "fileversion": 1,
            "rect": [
              25.0,
              69.0,
              640.0,
              480.0
            ],
            "bglocked": 0,
            "defrect": [
              25.0,
              69.0,
              640.0,
              480.0
            ],
            "openrect": [
              0.0,
              0.0,
              0.0,
              0.0
            ],
            "openinpresentation": 0,
            "default_fontsize": 12.0,
            "default_fontface": 0,
            "default_fontname": "Arial",
            "gridonopen": 0,
            "gridsize": [
              15.0,
              15.0
            ],
            "gridsnaponopen": 0,
            "toolbarvisible": 1,
            "boxanimatetime": 200,
            "imprint": 0,
            "enablehscroll": 1,
            "enablevscroll": 1,
            "devicewidth": 0.0,
            "boxes": [
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "id": "obj-12",
                  "linecount": 3,
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    "fontsize": 12.01.0,
                    162.0,
                    147.0,
                    48.0
                  ],
                  "text": "j.dataspace @dataspace gain @input dB @output linear"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "id": "obj-58",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "signal",
                    "signal",
                    "signal",
                    "signal"
                  ],
                  "patcher": {
                    "fileversion": 1,
                    "rect": [
                      25.0,
                      69.0,
                      640.0,
                      480.0
                    ],
                    "bglocked": 0,
                    "defrect": [
                      25.0,
                      69.0,
                      640.0,
                      480.0
                    ],
                    "openrect": [
                      0.0,
                      0.0,
                      0.0,
                      0.0
                    ],
                    "openinpresentation": 0,
                    "default_fontsize": "fontsize": 12.0.0,
                    "default_fontface": 0,
                    "default_fontname": "Arial",
                    "gridonopen": 0,
                    "gridsize": [
                      5.0,
                      5.0
                    ],
                    "gridsnaponopen": 0,
                    "toolbarvisible": 1,
                    "boxanimatetime": 200,
                    "imprint": 0,
                    "enablehscroll": 1,
                    "enablevscroll": 1,
                    "devicewidth": 0.0,
                    "boxes": [
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-52",
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            51.5,
                            32.0,
                            25.0,
                            25.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-53",
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            431.0,
                            22.0,
                            25.0,
                            25.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-54",
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            126.5,
                            374.0,
                            25.0,
                            25.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-55",
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            233.5,
                            375.0,
                            25.0,
                            25.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-56",
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            330.5,
                            373.0,
                            25.0,
                            25.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-57",
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            440.5,
                            378.0,
                            25.0,
                            25.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "fontname": "Arial",
                          "fontsize": "fontsize": 12.0.0,
                          "id": "obj-24",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            343.0,
                            "fontsize": 12.03.0,
                            81.0,
                            19.0
                          ],
                          "text": "*~ -0.866025"
                        }
                      },
                      {
                        "box": {
                          "fontname": "Arial",
                          "fontsize": "fontsize": 12.0.0,
                          "id": "obj-9",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            50.0,
                            "fontsize": 12.03.0,
                            77.0,
                            19.0
                          ],
                          "text": "*~ 0.866025"
                        }
                      },
                      {
                        "box": {
                          "fontname": "Arial",
                          "fontsize": "fontsize": 12.0.0,
                          "id": "obj-1",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            430.0,
                            "fontsize": 12.01.0,
                            77.0,
                            19.0
                          ],
                          "text": "*~ 0.866025"
                        }
                      },
                      {
                        "box": {
                          "fontname": "Arial",
                          "fontsize": "fontsize": 12.0.0,
                          "id": "obj-7",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            159.0,
                            "fontsize": 12.03.0,
                            49.0,
                            19.0
                          ],
                          "text": "*~ -0.5"
                        }
                      },
                      {
                        "box": {
                          "fontname": "Arial",
                          "fontsize": "fontsize": 12.0.0,
                          "id": "obj-3",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            252.0,
                            "fontsize": 12.04.0,
                            81.0,
                            19.0
                          ],
                          "text": "*~ -0.866025"
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "obj-57",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-1",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-57",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-24",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-55",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-3",
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
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-52",
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
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-52",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-9",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-52",
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
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-53",
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
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-53",
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
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-53",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-54",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-7",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-56",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-7",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-55",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-9",
                            0
                          ]
                        }
                      }
                    ]
                  },
                  "patching_rect": [
                    509.0,
                    262.0,
                    96.0,
                    19.0
                  ],
                  "saved_object_attributes": {
                    "default_fontface": 0,
                    "fontname": "Arial",
                    "default_fontname": "Arial",
                    "globalpatchername": "",
                    "default_fontsize": "fontsize": 12.0.0,
                    "fontface": 0,
                    "fontsize": "fontsize": 12.0.0
                  },
                  "text": "p back-Bformat"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "id": "obj-49",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "signal",
                    "signal",
                    "signal"
                  ],
                  "patcher": {
                    "fileversion": 1,
                    "rect": [
                      640.0,
                      133.0,
                      640.0,
                      480.0
                    ],
                    "bglocked": 0,
                    "defrect": [
                      640.0,
                      133.0,
                      640.0,
                      480.0
                    ],
                    "openrect": [
                      0.0,
                      0.0,
                      0.0,
                      0.0
                    ],
                    "openinpresentation": 0,
                    "default_fontsize": "fontsize": 12.0.0,
                    "default_fontface": 0,
                    "default_fontname": "Arial",
                    "gridonopen": 0,
                    "gridsize": [
                      5.0,
                      5.0
                    ],
                    "gridsnaponopen": 0,
                    "toolbarvisible": 1,
                    "boxanimatetime": 200,
                    "imprint": 0,
                    "enablehscroll": 1,
                    "enablevscroll": 1,
                    "devicewidth": 0.0,
                    "boxes": [
                      {
                        "box": {
                          "fontname": "Arial",
                          "fontsize": "fontsize": 12.0.0,
                          "id": "obj-39",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            213.0,
                            "fontsize": 12.01.0,
                            43.0,
                            19.0
                          ],
                          "text": "*~ -1."
                        }
                      },
                      {
                        "box": {
                          "fontname": "Arial",
                          "fontsize": "fontsize": 12.0.0,
                          "id": "obj-38",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            130.0,
                            "fontsize": 12.00.0,
                            81.0,
                            19.0
                          ],
                          "text": "*~ -0.707"fontsize": 12.07"
                        }
                      },
                      {
                        "box": {
                          "fontname": "Arial",
                          "fontsize": "fontsize": 12.0.0,
                          "id": "obj-37",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            50.0,
                            "fontsize": 12.00.0,
                            77.0,
                            19.0
                          ],
                          "text": "*~ 0.707"fontsize": 12.07"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-45",
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            126.0,
                            40.0,
                            25.0,
                            25.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-46",
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            50.0,
                            180.0,
                            25.0,
                            25.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-47",
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            130.0,
                            180.0,
                            25.0,
                            25.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-48",
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            213.0,
                            180.0,
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
                            "obj-46",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-37",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-47",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-38",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-48",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-39",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-45",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-38",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-45",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-39",
                            0
                          ],
                          "hidden": 0,
                          "midpoints": [

                          ],
                          "source": [
                            "obj-45",
                            0
                          ]
                        }
                      }
                    ]
                  },
                  "patching_rect": [
                    385.0,
                    262.0,
                    115.0,
                    19.0
                  ],
                  "saved_object_attributes": {
                    "default_fontface": 0,
                    "fontname": "Arial",
                    "default_fontname": "Arial",
                    "globalpatchername": "",
                    "default_fontsize": "fontsize": 12.0.0,
                    "fontface": 0,
                    "fontsize": "fontsize": 12.0.0
                  },
                  "text": "p rightFront-Bformat"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "frgb": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "id": "obj-43",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    437.0,
                    483.0,
                    19.0,
                    19.0
                  ],
                  "text": "V"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "frgb": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "id": "obj-42",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    417.0,
                    483.0,
                    19.0,
                    19.0
                  ],
                  "text": "U"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "frgb": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "id": "obj-40",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    313.0,
                    513.0,
                    237.0,
                    19.0
                  ],
                  "text": "multicabel with W-X-Y-Z-R-S-T-U-V"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "id": "obj-7",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    304.0,
                    262.0,
                    77.0,
                    19.0
                  ],
                  "text": "*~ 0.707"fontsize": 12.07"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    260.0,
                    262.0,
                    39.0,
                    19.0
                  ],
                  "text": "*~ 1."
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "id": "obj-15",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    "fontsize": 12.01.0,
                    133.0,
                    125.0,
                    19.0
                  ],
                  "text": "j.oscroute /gain/W"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "frgb": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "id": "obj-27",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.0,
                    255.0,
                    205.0,
                    31.0
                  ],
                  "text": "after Daniel Courville  http://www.radio.uqam.ca/ambisonic/"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "id": "obj-23",
                  "maxclass": "newobj",
                  "numinlets": 9,
                  "numoutlets": 2,
                  "outlettype": [
                    "audio.connect",
                    ""
                  ],
                  "patching_rect": [
                    269.0,
                    482.0,
                    191.0,
                    19.0
                  ],
                  "text": "j.pack≈ 9"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "id": "obj-"fontsize": 12.0",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    596.0,
                    "fontsize": 12.05.0,
                    59.0,
                    19.0
                  ],
                  "text": "j.thru"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    511.0,
                    "fontsize": 12.02.0,
                    59.0,
                    19.0
                  ],
                  "text": "j.thru"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "id": "obj-2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    399.0,
                    "fontsize": 12.00.0,
                    59.0,
                    19.0
                  ],
                  "text": "j.thru"
                }
              },
              {
                "box": {
                  "fontname": "Arial",
                  "fontsize": "fontsize": 12.0.0,
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    266.0,
                    "fontsize": 12.03.0,
                    59.0,
                    19.0
                  ],
                  "text": "j.thru"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-13",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    "fontsize": 12.01.0,
                    40.0,
                    25.0,
                    25.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-14",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    266.0,
                    40.0,
                    25.0,
                    25.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-16",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    399.0,
                    40.0,
                    25.0,
                    25.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-17",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    511.0,
                    40.0,
                    25.0,
                    25.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-18",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    596.0,
                    40.0,
                    25.0,
                    25.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-19",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    269.0,
                    592.0,
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
                    "obj-3",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-"fontsize": 12.0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-58",
                    1
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-"fontsize": 12.0",
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
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-58",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    1
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-15",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

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
                    "obj-12",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-15",
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
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-16",
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
                  "hidden": 0,
                  "midpoints": [

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
                    "obj-"fontsize": 12.0",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

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
                    "obj-3",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-49",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-19",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

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
                    "obj-23",
                    0
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-23",
                    8
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-49",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-23",
                    2
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-49",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-23",
                    1
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-49",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-23",
                    8
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-5",
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
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-5",
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
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-23",
                    8
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-58",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-23",
                    7
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-58",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-23",
                    2
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-58",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-23",
                    1
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-58",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-23",
                    2
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-23",
                    1
                  ],
                  "hidden": 0,
                  "midpoints": [

                  ],
                  "source": [
                    "obj-7",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            141.0,
            545.0,
            326.0,
            20.0
          ],
          "saved_object_attributes": {
            "default_fontface": 0,
            "fontname": "Arial",
            "default_fontname": "Arial",
            "globalpatchername": "",
            "default_fontsize": 12.0,
            "fontface": 0,
            "fontsize": 12.0
          },
          "text": "p jalg.sur.zoomH2ambi~"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-8",
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
            443.0,
            19.0,
            536.0,
            34.0
          ],
          "text": "j.remote gain/W"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": "fontsize": 12.0.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-36",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            533.0,
            353.0,
            66.0,
            31.0
          ],
          "text": "4 channel multicable"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": "fontsize": 12.0.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-35",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            444.0,
            379.0,
            66.0,
            19.0
          ],
          "text": "back right"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": "fontsize": 12.0.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-26",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            377.0,
            381.0,
            66.0,
            19.0
          ],
          "text": "back left"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": "fontsize": 12.0.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-25",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            308.0,
            382.0,
            66.0,
            19.0
          ],
          "text": "front right "
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": "fontsize": 12.0.0,
          "frgb": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "obj-6",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            236.0,
            382.0,
            61.0,
            19.0
          ],
          "text": "front left"
        }
      },
      {
        "box": {
          "comment": "back right",
          "id": "obj-30",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            433.0,
            353.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "comment": "back left",
          "id": "obj-31",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            366.0,
            357.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "comment": "front right",
          "id": "obj-32",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            294.0,
            357.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "comment": "front left",
          "id": "obj-33",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            227.0,
            359.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "comment": "4 channel multicable",
          "id": "obj-29",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            503.0,
            353.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-28",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            445.0,
            606.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": "fontsize": 12.0.0,
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal",
            ""
          ],
          "patching_rect": [
            503.0,
            394.0,
            93.0,
            19.0
          ],
          "text": "j.unpack≈ 4"
        }
      },
      {
        "box": {
          "background": 1,
          "id": "obj-1",
          "maxclass": "j.ui",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "prefix": "/audio",
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            300.0,
            70.0
          ],
          "text": "/editing_this_module"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "obj-24",
            0
          ],
          "hidden": 0,
          "midpoints": [

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
            "obj-28",
            0
          ],
          "hidden": 0,
          "midpoints": [
            150.5,
            580.0,
            454.5,
            580.0
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
            4
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-22",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            3
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-22",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            2
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-22",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            1
          ],
          "hidden": 0,
          "midpoints": [

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
            "obj-20",
            0
          ],
          "hidden": 0,
          "midpoints": [

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
            "obj-21",
            0
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-24",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-22",
            0
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-29",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            4
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-30",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            3
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-31",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            2
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-32",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            1
          ],
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-33",
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
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-34",
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
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-37",
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
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-38",
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
          "hidden": 0,
          "midpoints": [

          ],
          "source": [
            "obj-8",
            0
          ]
        }
      }
    ]
  }
}
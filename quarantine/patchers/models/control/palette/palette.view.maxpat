{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 6,
      "minor": 0,
      "revision": 7
    },
    "rect": [
      209.0,
      173.0,
      1062.0,
      553.0
    ],
    "bglocked": 0,
    "openinpresentation": 1,
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
          "border": 1,
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-3",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            405.0,
            145.0,
            60.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            251.0,
            2.0,
            39.287197,
            15.000001
          ],
          "prototypename": "jamoma settings",
          "rounded": 8.0,
          "text": "Clear",
          "texton": "recording",
          "varname": "camera_settings[1]"
        }
      },
      {
        "box": {
          "border": 1,
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-6",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            405.0,
            40.0,
            85.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            181.0,
            2.0,
            66.287193,
            15.000001
          ],
          "prototypename": "jamoma settings",
          "rounded": 8.0,
          "text": "New color",
          "texton": "recording",
          "varname": "camera_settings"
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
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-1",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            195.0,
            85.0,
            196.0,
            17.0
          ],
          "text": "/preset/store 1 default, /preset/write"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            195.0,
            245.0,
            46.0,
            19.0
          ],
          "text": "j.in"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 11.0,
          "frgb": 0.0,
          "id": "obj-11",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            145.0,
            42.0,
            70.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            185.0,
            45.0,
            61.0,
            20.0
          ],
          "text": "Step Size"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 11.0,
          "frgb": 0.0,
          "id": "obj-12",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            4.0,
            42.0,
            62.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            4.0,
            45.0,
            61.0,
            20.0
          ],
          "text": "Step Size"
        }
      },
      {
        "box": {
          "annotation": "Set how much next color can deviate from the current when random mode is walk.",
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-13",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            405.0,
            285.0,
            47.0,
            19.0
          ],
          "presentation": 1,
          "presentation_rect": [
            66.0,
            44.0,
            47.0,
            19.0
          ],
          "triangle": 0,
          "triscale": 0.9,
          "varname": "RandomStepSize"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-14",
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
            405.0,
            100.0,
            343.0,
            31.0
          ],
          "text": "j.remote colors",
          "varname": "j.parameter[7]"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-15",
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
            405.0,
            310.0,
            597.0,
            43.0
          ],
          "text": "j.remote random/stepSize",
          "varname": "random/step_size"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            405.0,
            175.0,
            350.0,
            19.0
          ],
          "text": "j.remote clear",
          "varname": "j.parameter[5]"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-17",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            405.0,
            65.0,
            571.0,
            19.0
          ],
          "text": "j.remote generateColor",
          "varname": "j.parameter[4]"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-18",
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
            405.0,
            475.0,
            584.0,
            31.0
          ],
          "text": "j.remote interpolate/stepSize",
          "varname": "interpolate/step_size"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-19",
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
            405.0,
            240.0,
            303.0,
            31.0
          ],
          "text": "j.remote random/mode",
          "varname": "random/mode"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-20",
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
            405.0,
            400.0,
            257.0,
            31.0
          ],
          "text": "j.remote interpolate",
          "varname": "interpolate"
        }
      },
      {
        "box": {
          "annotation": "Select distribution mode: random or walk.",
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-21",
          "items": [
            "random",
            ",",
            "walk"
          ],
          "labelclick": 1,
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            405.0,
            210.0,
            72.0,
            19.0
          ],
          "presentation": 1,
          "presentation_rect": [
            66.0,
            23.0,
            70.0,
            19.0
          ],
          "varname": "RandomMode"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 11.0,
          "frgb": 0.0,
          "id": "obj-22",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            160.0,
            22.0,
            70.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            205.0,
            22.0,
            71.0,
            20.0
          ],
          "text": "Interpolate"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-25",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            85.0,
            137.0,
            17.0
          ],
          "text": "/documentation/generate"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            195.0,
            290.0,
            82.0,
            19.0
          ],
          "text": "jalg.palette"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 11.0,
          "frgb": 0.0,
          "id": "obj-29",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            4.0,
            24.0,
            62.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            4.0,
            24.0,
            54.0,
            20.0
          ],
          "text": "Random"
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-30",
          "linecount": 3,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            15.0,
            140.0,
            220.0,
            43.0
          ],
          "text": "j.model @type control @description \"Create various blends of the RGB colors available.\"",
          "varname": "j.model"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-31",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            15.0,
            80.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-32",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            15.0,
            310.0,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-33",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            195.0,
            315.0,
            153.0,
            17.0
          ],
          "text": "/interpolate 0"
        }
      },
      {
        "box": {
          "annotation": "Step size when interpolating.",
          "fontname": "Verdana",
          "fontsize": 10.0,
          "id": "obj-35",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            405.0,
            450.0,
            47.0,
            19.0
          ],
          "presentation": 1,
          "presentation_rect": [
            244.0,
            45.0,
            47.0,
            19.0
          ],
          "triangle": 0,
          "triscale": 0.9,
          "varname": "InterpolateStepSize"
        }
      },
      {
        "box": {
          "annotation": "Perform cubic interpolation (flag).",
          "bgcolor": [
            1.0,
            1.0,
            1.0,
            0.0
          ],
          "disabled": [
            0
          ],
          "id": "obj-36",
          "itemtype": 1,
          "maxclass": "radiogroup",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            405.0,
            375.0,
            78.0,
            18.0
          ],
          "presentation": 1,
          "presentation_rect": [
            184.0,
            22.0,
            92.0,
            18.0
          ],
          "size": 1,
          "values": [
            0
          ],
          "varname": "Interpolate"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "j.ui",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
            "obj-30",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            204.5,
            118.0,
            24.5,
            118.0
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
            "obj-15",
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
            "obj-13",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            414.5,
            358.0,
            392.0,
            358.0,
            392.0,
            281.0,
            414.5,
            281.0
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
            "obj-35",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            414.5,
            514.0,
            392.0,
            514.0,
            392.0,
            446.0,
            414.5,
            446.0
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
            "obj-21",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            414.5,
            272.0,
            392.0,
            272.0,
            392.0,
            204.0,
            414.5,
            204.0
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
            "obj-28",
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
            "obj-33",
            1
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            204.5,
            284.0,
            338.5,
            284.0
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
            "obj-36",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            414.5,
            437.0,
            392.0,
            437.0,
            392.0,
            368.0,
            414.5,
            368.0
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
            "obj-19",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            441.0,
            236.0,
            414.5,
            236.0
          ],
          "source": [
            "obj-21",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-30",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "midpoints": [
            59.5,
            118.0,
            24.5,
            118.0
          ],
          "source": [
            "obj-25",
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
            "obj-3",
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
            "obj-30",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-30",
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
            "obj-18",
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
            "obj-20",
            0
          ],
          "disabled": 0,
          "hidden": 0,
          "source": [
            "obj-36",
            0
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
          "source": [
            "obj-6",
            0
          ]
        }
      }
    ],
    "dependency_cache": [
      {
        "name": "jalg.palette.maxpat",
        "bootpath": "/Users/nilspeters/Documents/gits/Jamoma/Modules/Modular/Max/modules/control/palette",
        "patcherrelativepath": "",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "j.ui.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.hub.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.oscroute.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.unit.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.init.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.return.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.parameter.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.message.mxo",
        "type": "iLaX"
      },
      {
        "name": "j.in.mxo",
        "type": "iLaX"
      }
    ]
  }
}
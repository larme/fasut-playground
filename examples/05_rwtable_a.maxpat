{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 396.0, 1077.0, 640.0, 480.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 365.0, 79.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 365.0, 136.0, 71.0, 22.0 ],
					"text" : "read_idx $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 259.0, 79.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 259.0, 136.0, 73.0, 22.0 ],
					"text" : "write_idx $1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 145.0, 276.0, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 145.0, 136.0, 86.0, 22.0 ],
					"text" : "write_value $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-3",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 145.0, 79.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"library_path0" : "/Users/larme/Documents/Max 8/Packages/faustgen/externals/msp/faustgen~.mxo/Contents/Resources/",
					"machinecode" : "z/rt/gcAAAEDAAAAAQAAAAQAAABgAQAAACAAAAAAAAAZAAAA6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAFAAAAAAAAgAEAAAAAAAAwBQAAAAAAAAcAAAAHAAAAAgAAAAAAAABfX3RleHQAAAAAAAAAAAAAX19URVhUAAAAAAAAAAAAAAAAAAAAAAAAxAEAAAAAAACAAQAABAAAALAGAAADAAAAAAQAgAAAAAAAAAAAAAAAAF9fY29uc3QAAAAAAAAAAABfX1RFWFQAAAAAAAAAAAAA0AEAAAAAAABgAwAAAAAAAFADAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJAAAABAAAAAADgoAAAAAAAIAAAAYAAAAyAYAAA0AAACYBwAAEAQAAAsAAABQAAAAAAAAAAEAAAABAAAACgAAAAsAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUEi4AAAAAAAAAAD/0FjDkMNmLg8fhAAAAAAADx9EAACF9n4aUIn2SMHmA0i4AAAAAAAAAABIidf/0EiDxAjDkMNmLg8fhAAAAAAADx9EAADDZi4PH4QAAAAAAA8fRAAAibfAAAAAxfhXwMX8EQfF/BFHIMX8EUdAxfwRR2DF/BGHgAAAAEjHh6AAAAAAAAAAxfh3w2YuDx+EAAAAAABmkMNmLg8fhAAAAAAADx9EAADDZi4PH4QAAAAAAA8fRAAASLgAAAAAAAAAAMMPH0QAAIX2D47rAAAAxfssh7gAAABIiwlImI1QAUhj0sX7EATXxftYBMdBifFJjXH/RYnIQYPgA0iD/gNzEDH2TYXAD4WFAAAA6aoAAABNKcEx9maQxfssh6gAAABImEiLl7AAAABIiRTHxfsRBPHF+yyHqAAAAEiYSIuXsAAAAEiJFMfF+xFE8QjF+yyHqAAAAEiYSIuXsAAAAEiJFMfF+xFE8RDF+yyHqAAAAEiYSIuXsAAAAEiJFMfF+xFE8RhIg8YESTnxdYxNhcB0KkiNDPEx0pDF+yy3qAAAAEhj9kiLh7AAAABIiQT3xfsRBNFI/8JJOdB13cMAAAAAAAAAAAAAAAB7Im5hbWUiOiAiZmF1c3RnZW4tMTgiLCJmaWxlbmFtZSI6ICJmYXVzdGdlbi0xOCIsInZlcnNpb24iOiAiMi4yMC4yIiwiY29tcGlsZV9vcHRpb25zIjogIi1kb3VibGUgLWZ0eiAwIiwiaW5jbHVkZV9wYXRobmFtZXMiOiBbIi9Vc2Vycy9sYXJtZS9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcyIsIi9zaGFyZS9mYXVzdCIsIi91c3IvbG9jYWwvc2hhcmUvZmF1c3QiLCIvdXNyL3NoYXJlL2ZhdXN0IiwiLiJdLCJzaXplIjogMTk2LCJpbnB1dHMiOiAwLCJvdXRwdXRzIjogMSwic3JfaW5kZXgiOiAxOTIsIm1ldGEiOiBbIHsgImZpbGVuYW1lIjogImZhdXN0Z2VuLTE4IiB9LHsgIm5hbWUiOiAiZmF1c3RnZW4tMTgiIH1dLCJ1aSI6IFsgeyJ0eXBlIjogInZncm91cCIsImxhYmVsIjogImZhdXN0Z2VuLTE4IiwiaXRlbXMiOiBbIHsidHlwZSI6ICJ2c2xpZGVyIiwibGFiZWwiOiAicmVhZF9pZHgiLCJhZGRyZXNzIjogIi9mYXVzdGdlbi0xOC9yZWFkX2lkeCIsImluZGV4IjogMTg0LCJpbml0IjogMCwibWluIjogMCwibWF4IjogMTksInN0ZXAiOiAxfSx7InR5cGUiOiAidnNsaWRlciIsImxhYmVsIjogIndyaXRlX2lkeCIsImFkZHJlc3MiOiAiL2ZhdXN0Z2VuLTE4L3dyaXRlX2lkeCIsImluZGV4IjogMTY4LCJpbml0IjogMCwibWluIjogMCwibWF4IjogMTksInN0ZXAiOiAxfSx7InR5cGUiOiAidnNsaWRlciIsImxhYmVsIjogIndyaXRlX3ZhbHVlIiwiYWRkcmVzcyI6ICIvZmF1c3RnZW4tMTgvd3JpdGVfdmFsdWUiLCJpbmRleCI6IDE3NiwiaW5pdCI6IDAsIm1pbiI6IDAsIm1heCI6IDAuNSwic3RlcCI6IDAuMDF9XX1dfQDCAAAAAAAADi0AAAALAAAOAwAAAAwAAA4BAAAADgIAANABAAAAAAAAugMAAA8BAACgAAAAAAAAAHADAAAPAQAAQAAAAAAAAACsAwAADwEAANAAAAAAAAAAYgMAAA8BAACwAAAAAAAAAAgEAAAPAQAAAAAAAAAAAAD3AwAADwEAACAAAAAAAAAAyQMAAA8BAADAAAAAAAAAAJgDAAAPAQAAUAAAAAAAAACAAwAADwEAAGAAAAAAAAAA4AMAAA8BAAAQAAAAAAAAANcDAAABAAAAAAAAAAAAAAAGBAAAAQAAAAAAAAAAAAAAAF97Im5hbWUiOiAiZmF1c3RnZW4tMTgiLCJmaWxlbmFtZSI6ICJmYXVzdGdlbi0xOCIsInZlcnNpb24iOiAiMi4yMC4yIiwiY29tcGlsZV9vcHRpb25zIjogIi1kb3VibGUgLWZ0eiAwIiwiaW5jbHVkZV9wYXRobmFtZXMiOiBbIi9Vc2Vycy9sYXJtZS9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcyIsIi9zaGFyZS9mYXVzdCIsIi91c3IvbG9jYWwvc2hhcmUvZmF1c3QiLCIvdXNyL3NoYXJlL2ZhdXN0IiwiLiJdLCJzaXplIjogMTk2LCJpbnB1dHMiOiAwLCJvdXRwdXRzIjogMSwic3JfaW5kZXgiOiAxOTIsIm1ldGEiOiBbIHsgImZpbGVuYW1lIjogImZhdXN0Z2VuLTE4IiB9LHsgIm5hbWUiOiAiZmF1c3RnZW4tMTgiIH1dLCJ1aSI6IFsgeyJ0eXBlIjogInZncm91cCIsImxhYmVsIjogImZhdXN0Z2VuLTE4IiwiaXRlbXMiOiBbIHsidHlwZSI6ICJ2c2xpZGVyIiwibGFiZWwiOiAicmVhZF9pZHgiLCJhZGRyZXNzIjogIi9mYXVzdGdlbi0xOC9yZWFkX2lkeCIsImluZGV4IjogMTg0LCJpbml0IjogMCwibWluIjogMCwibWF4IjogMTksInN0ZXAiOiAxfSx7InR5cGUiOiAidnNsaWRlciIsImxhYmVsIjogIndyaXRlX2lkeCIsImFkZHJlc3MiOiAiL2ZhdXN0Z2VuLTE4L3dyaXRlX2lkeCIsImluZGV4IjogMTY4LCJpbml0IjogMCwibWluIjogMCwibWF4IjogMTksInN0ZXAiOiAxfSx7InR5cGUiOiAidnNsaWRlciIsImxhYmVsIjogIndyaXRlX3ZhbHVlIiwiYWRkcmVzcyI6ICIvZmF1c3RnZW4tMTgvd3JpdGVfdmFsdWUiLCJpbmRleCI6IDE3NiwiaW5pdCI6IDAsIm1pbiI6IDAsIm1heCI6IDAuNSwic3RlcCI6IDAuMDF9XX1dfQBfZGVzdHJveW15ZHNwAF9jbGFzc0luaXRteWRzcABfaW5zdGFuY2VDb25zdGFudHNteWRzcABfaW5zdGFuY2VDbGVhcm15ZHNwAF9jb21wdXRlbXlkc3AAX2FsbG9jYXRlbXlkc3AAX2dldEpTT05teWRzcABfX19iemVybwBfaW5zdGFuY2VJbml0bXlkc3BTSUcwAF9maWxsbXlkc3BTSUcwAF9fX2V4cDEwAAA=",
					"machinecode_size" : 3980,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"patching_rect" : [ 145.0, 187.0, 62.0, 22.0 ],
					"serial_number" : "C07XQ5DKJYVX64 bits",
					"sourcecode" : "val = vslider(\"write_value\", 0.0, 0.0, 0.5, 0.01);\nwidx = vslider(\"write_idx\", 0, 0, 19, 1);\nridx = vslider(\"read_idx\", 0, 0, 19, 1);\n\ntbl = rwtable(21, 0.0, int(widx), float(val), _);\n\nprocess = int(ridx) <: tbl, tbl(_ + 1) : + ;\n",
					"sourcecode_size" : 231,
					"text" : "faustgen~",
					"varname" : "faustgen-973110",
					"version" : "1.41"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "faustgen~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}

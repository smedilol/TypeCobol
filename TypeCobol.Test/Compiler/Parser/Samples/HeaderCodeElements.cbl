000010 CONFIGURATION SECTION.
000020 DATA DIVISION.
000030 DECLARATIVES.
000040 END DECLARATIVES.
000050 ENVIRONMENT DIVISION.
000060 FILE-CONTROL.
000070 FILE SECTION.
000080 INPUT-OUTPUT SECTION.
000090 I-O-CONTROL.
000100 LINKAGE SECTION.
000110 LOCAL-STORAGE SECTION.
000120 MyParagraph.
000130 PROCEDURE DIVISION.
000140 PROCEDURE DIVISION USING InParam1 RETURNING OutParam1.
000150 PROCEDURE DIVISION USING InParam1 VALUE InParam2 InParam3 BY 
000155     REFERENCE InParam4 InParam5.
000160 MySection1 SECTION.
000170 MySection2 SECTION 10.
000180 .
000190 WORKING-STORAGE SECTION.


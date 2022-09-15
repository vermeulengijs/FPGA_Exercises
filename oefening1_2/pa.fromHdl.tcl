
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name oefening1_2 -dir "C:/STUDENTEN/Pieter en Gijs/oefening1_2/planAhead_run_2" -part xc3s100ecp132-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top oefening1_2 $srcset
set_param project.paUcfFile  "oefening1_2.ucf"
set hdlfile [add_files [list {oefening1_2.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
add_files "oefening1_2.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-4

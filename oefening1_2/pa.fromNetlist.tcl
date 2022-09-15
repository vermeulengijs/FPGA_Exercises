
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name oefening1_2 -dir "C:/STUDENTEN/Pieter en Gijs/oefening1_2/planAhead_run_3" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/STUDENTEN/Pieter en Gijs/oefening1_2/oefening1_2.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/STUDENTEN/Pieter en Gijs/oefening1_2} }
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "oefening1_2.ucf"
add_files "oefening1_2.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design

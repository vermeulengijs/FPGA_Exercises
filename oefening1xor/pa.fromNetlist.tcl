
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name oefening1xor -dir "C:/STUDENTEN/Pieter en Gijs/oefening1xor/planAhead_run_1" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/STUDENTEN/Pieter en Gijs/oefening1xor/oefeningxor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/STUDENTEN/Pieter en Gijs/oefening1xor} }
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "oefeningxor.ucf"
add_files "oefeningxor.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design

$(document).ready(function(){
    $("select#contaminationstatus_matrix_id").chainedTo("select#contaminationstatus_reference_id");
    $("select#contaminationstatus_agent_id").chainedTo("select#contaminationstatus_reference_id");
    $("select#contaminationstatus_spiking_id").chainedTo("select#contaminationstatus_reference_id");
    $("select#contaminationstatus_treatment_id").chainedTo("select#contaminationstatus_reference_id");
    $("select#contaminationstatus_samplepreparation_id").chainedTo("select#contaminationstatus_reference_id");
    $("select#contaminationstatus_detection_id").chainedTo("select#contaminationstatus_reference_id");
    $("select#contaminationstatus_tenacity_id").chainedTo("select#contaminationstatus_reference_id");    
}); 


# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140630002842) do

  create_table "admin_matrices", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agentparams", force: true do |t|
    t.float    "infectious_dose"
    t.float    "level_of_infectious_dose"
    t.string   "infected_species"
    t.integer  "agent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agents", force: true do |t|
    t.string   "a_common_name"
    t.string   "a_family"
    t.string   "a_genus"
    t.string   "a_species"
    t.string   "subspecies"
    t.string   "serovar"
    t.string   "other_agent_name"
    t.integer  "ref_number"
    t.float    "rate_of_illness"
    t.float    "morbidity"
    t.float    "mortality"
    t.string   "isolation_source"
    t.string   "natural_occurence"
    t.text     "a_comment"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agents_references", id: false, force: true do |t|
    t.integer  "agent_id"
    t.integer  "reference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contaminationstatuses", force: true do |t|
    t.float    "cfu_natural_contamination"
    t.string   "cfu_natural_contamination_unit"
    t.integer  "matrix_id"
    t.integer  "agent_id"
    t.integer  "tenacity_id"
    t.integer  "treatment_id"
    t.integer  "spiking_id"
    t.integer  "samplepreparation_id"
    t.integer  "detection_id"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.integer  "result_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "culdetecs", force: true do |t|
    t.string   "medium"
    t.string   "agar"
    t.float    "incubation_duration"
    t.string   "incubation_duration_unit"
    t.string   "incubation_temp"
    t.integer  "sample_volume_per_disc"
    t.string   "medium_volume_per_disc"
    t.integer  "detection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detections", force: true do |t|
    t.string   "d_short_name"
    t.text     "d_long_name"
    t.string   "d_method_validated_for_condiments"
    t.text     "d_process_description"
    t.float    "d_weight_of_sample"
    t.string   "d_weight_of_sample_unit"
    t.string   "detection_method_dilution"
    t.string   "detection_method_type"
    t.float    "duration_until_result"
    t.string   "duration_until_result_unit"
    t.string   "target_gen"
    t.string   "target_protein"
    t.text     "other_characteristic"
    t.string   "technique"
    t.text     "verification"
    t.text     "interpretation"
    t.string   "d_device_needed"
    t.text     "method_for_comparison"
    t.string   "lod"
    t.string   "sensitivity"
    t.string   "specifity"
    t.string   "reliability_score"
    t.text     "d_comment"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matrices", force: true do |t|
    t.string   "m_common_name"
    t.string   "m_genus"
    t.string   "m_species"
    t.string   "other_matrix_name"
    t.string   "plant_part"
    t.string   "storage_form"
    t.string   "product_form"
    t.string   "place_of_origin"
    t.date     "date_of_harvest"
    t.float    "relative_humidity_during_harvest"
    t.float    "temperature_during_harvest"
    t.string   "pre_treatment"
    t.date     "sampling_date"
    t.float    "m_ph"
    t.float    "m_aw"
    t.float    "humidity_of_matrix"
    t.float    "ash"
    t.float    "sand"
    t.float    "lipids"
    t.string   "further_ingredients"
    t.text     "m_comment"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "references", force: true do |t|
    t.string   "type_of_literatur"
    t.string   "first_author_name"
    t.integer  "year"
    t.string   "title"
    t.string   "journal"
    t.integer  "volume"
    t.string   "page_from"
    t.string   "page_to"
    t.string   "link"
    t.string   "matrix"
    t.string   "agent"
    t.string   "spiking"
    t.string   "treatment"
    t.string   "sample_prep"
    t.string   "detection"
    t.string   "tenacity"
    t.text     "r_comment"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.integer  "cfu_initial"
    t.string   "cfu_initial_unit"
    t.boolean  "detectability"
    t.integer  "cfu_detected"
    t.string   "cfu_detected_unit"
    t.text     "r_comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "samplepreparations", force: true do |t|
    t.string   "samprep_short_name"
    t.text     "samprep_long_name"
    t.string   "samprep_method_validated_for_condiments"
    t.text     "samprep_process_description"
    t.float    "spik_weight_of_sample"
    t.string   "spik_weight_of_sample_unit"
    t.string   "dilution_fuid"
    t.string   "first_dilution_ratio"
    t.string   "homogenize_with"
    t.string   "enrichment"
    t.string   "dna_extraction"
    t.string   "rna_extraction"
    t.string   "protein_extraction"
    t.string   "homogenizing_method"
    t.string   "cell_lysis"
    t.string   "applied_kit"
    t.string   "other_samprep_method_type"
    t.string   "samprep_method_type_details_text"
    t.float    "samprep_duration"
    t.string   "samprep_duration_unit"
    t.text     "samprep_comment"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spikingparams", force: true do |t|
    t.float    "spik_weight_of_sample"
    t.string   "spik_weight_of_sample_unit"
    t.float    "cfu_of_inoculum_per_ml"
    t.float    "cfu_per_gram_spice_spiked"
    t.string   "carrier_substance"
    t.string   "carrier_fluid"
    t.float    "spik_duration"
    t.string   "spik_duration_unit"
    t.text     "spik_comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spikings", force: true do |t|
    t.string   "spik_short_name"
    t.text     "spik_long_name"
    t.text     "spik_process_description"
    t.string   "spik_device_needed"
    t.text     "pros"
    t.text     "cons"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenacities", force: true do |t|
    t.integer  "total_sample_number"
    t.integer  "inoculum_concentration_initial"
    t.string   "i_concentration_unit"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenacityrerults", force: true do |t|
    t.float    "tena_duration"
    t.string   "tena_duration_unit"
    t.integer  "final_concentration"
    t.string   "f_concentration_unit"
    t.float    "decimal_reduction"
    t.text     "tena_comment"
    t.integer  "tenacity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treatments", force: true do |t|
    t.string   "temperature"
    t.float    "temperature_in_degree"
    t.string   "steam"
    t.float    "steam_in_percent"
    t.string   "fumigation_gas"
    t.float    "fumigation_gas_in_percent"
    t.string   "optical"
    t.string   "mechanical"
    t.string   "process_type"
    t.float    "t_ph"
    t.float    "pressure"
    t.float    "kgy_dose"
    t.float    "t_aw"
    t.float    "water_activity"
    t.string   "other_condition"
    t.float    "treat_duration"
    t.string   "treat_duration_unit"
    t.text     "t_comment"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.integer  "matrix_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

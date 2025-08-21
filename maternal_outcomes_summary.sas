/**********************************************************************/
/* Project: Maternal Outcomes Summary Report                          */
/* Author: Kameelah Robinson                                          */
/* Description: Analyzes weighted maternal and neonatal outcome data  */
/* across multiple years. Demonstrates use of PROC FREQ, CHISQ tests, */
/* and WEIGHTED cross-tabulation for reporting trends over time.      */
/* Data is anonymized for portfolio display.                          */
/**********************************************************************/

/* Step 1: Connect to data source (update path as needed) */
libname site "C:\path_to_data_folder";

/* Step 2: Preview or access dataset */
data maternal_summary;
    set site.maternal_outcomes_dataset; /* rename to generic */
run;

/* Step 3: Generate weighted frequency tables of key outcomes by year */
proc freq data=maternal_summary;
    tables (
        num_matdeath_HF_month_new 
        totdth_new 
        num_hem_new 
        num_prolab_new 
        num_pree_new 
        num_uterrupt_new 
        num_still_hf_new 
        num_still_hf_macer_new 
        num_still_hf_fresh_new 
        num_neodth_24_new 
        num_neodth_week_new 
        num_neodth_fosa_mnth_new 
        del_obcomp_new 
        num_puerinf_new 
        num_csect_new 
        num_tx_compmnth_new 
        num_abort_compmnth_new 
        num_matdth_abort_new 
        num_matdth_hemor_new 
        num_matdth_pree_new 
        num_matdth_uterrupt_new 
        num_matdth_puerinf_new 
        num_matdth_prolab_new 
        num_nb_asph_atbirth_new 
        num_nb_asp_resusc_new 
        num_pre_lv_mnth_new 
        num_lb_2500_new 
        neodth_asph_new 
        neodth_neoinf_new 
        neodth_premat_new 
        neodth_other_new 
        del_comm_mnth_new 
        compvar_new
    )*year / chisq norow nopercent;
    
    weight count; /* Apply sampling weight for valid estimates */
run;

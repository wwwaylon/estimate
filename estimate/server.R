library(shiny)
library(shinythemes)

shinyServer(function(input, output, session){
  
  vals <- reactiveValues()
  observe({
    #Example 1
    vals$protocol_LB <- input$num_1[1]
    vals$protocol_UB <- input$num_1[2]
    vals$p_protocol <-  input$per_1
    vals$data_LB <- input$num_2[1]
    vals$data_UB <- input$num_2[2]
    vals$p_data <-  input$per_2
    vals$random_LB <- input$num_3[1]  
    vals$random_UB <- input$num_3[2]
    vals$p_random <-  input$per_3
    vals$newReport <- input$num_4  
    vals$reports <- input$num_5
    vals$r_reports <- input$r_num_5
    vals$newDSMB <- input$num_6
    vals$DSMB <- input$num_7 
    vals$r_DSMB <- input$r_num_7
    vals$stand_LB <- input$num_8[1]    
    vals$stand_UB <- input$num_8[2]
    vals$p_stand <-  input$per_4
    vals$prep_LB <- input$num_9[1]
    vals$prep_UB <- input$num_9[2]
    vals$p_prep <-  input$per_5
    vals$table_LB <- input$num_10[1]
    vals$table_UB <- input$num_10[2]
    vals$p_table <-  input$per_6
    vals$paper_LB <- input$num_11[1]
    vals$paper_UB <- input$num_11[2]
    vals$p_paper <-  input$per_7
    vals$adv_LB <- input$num_12[1]  
    vals$adv_UB <- input$num_12[2] 
    vals$p_adv <-  input$per_8
    vals$misc <- input$num_13  
    
    #Example 2
    vals$M1_LB <- input$Mnum_1[1]
    vals$M1_UB <- input$Mnum_1[2]
    vals$p_M1 <-  input$Mper_1
    vals$M2_LB <- input$Mnum_2[1]
    vals$M2_UB <- input$Mnum_2[2]
    vals$p_M2 <-  input$Mper_2
    vals$M3_LB <- input$Mnum_3[1]  
    vals$M3_UB <- input$Mnum_3[2]
    vals$p_M3 <-  input$Mper_3
    vals$M4_LB <- input$Mnum_4[1]  
    vals$M4_UB <- input$Mnum_4[2]
    vals$p_M4 <-  input$Mper_4    
    vals$M5_LB <- input$Mnum_5[1]  
    vals$M5_UB <- input$Mnum_5[2]
    vals$p_M5 <-  input$Mper_5
    vals$M6_LB <- input$Mnum_6[1]  
    vals$M6_UB <- input$Mnum_6[2]
    vals$p_M6 <-  input$Mper_6
    vals$M7_LB <- input$Mnum_7[1]  
    vals$M7_UB <- input$Mnum_7[2]
    vals$p_M7 <-  input$Mper_7
    vals$M8_LB <- input$Mnum_8[1]  
    vals$M8_UB <- input$Mnum_8[2]
    vals$p_M8 <-  input$Mper_8
    vals$M9_LB <- input$Mnum_9[1]  
    vals$M9_UB <- input$Mnum_9[2]
    vals$p_M9 <-  input$Mper_9
    vals$M10_LB <- input$Mnum_10[1]  
    vals$M10_UB <- input$Mnum_10[2]
    vals$p_M10 <-  input$Mper_10
    vals$M11_LB <- input$Mnum_11[1]  
    vals$M11_UB <- input$Mnum_11[2]
    vals$p_M11 <-  input$Mper_11
    vals$M12_LB <- input$Mnum_12[1]  
    vals$M12_UB <- input$Mnum_12[2]
    vals$p_M12 <-  input$Mper_12
    vals$M13_LB <- input$Mnum_13[1]  
    vals$M13_UB <- input$Mnum_13[2]
    vals$p_M13 <-  input$Mper_13
    vals$M14_LB <- input$Mnum_14[1]  
    vals$M14_UB <- input$Mnum_14[2]
    vals$p_M14 <-  input$Mper_14
    vals$M15_LB <- input$Mnum_15[1]  
    vals$M15_UB <- input$Mnum_15[2]
    vals$p_M15 <-  input$Mper_15
    vals$M16_LB <- input$Mnum_16[1]  
    vals$M16_UB <- input$Mnum_16[2]
    vals$p_M16 <-  input$Mper_16
    vals$M17 <- input$Mnum_17  
    vals$M18 <- input$Mnum_18
    vals$r_M18 <- input$Mr_num_18
    vals$M19 <- input$Mnum_19 
    
  })
  
  #Example 1 
  
  output$text_calTotal <-  renderText({ 
    paste("Total Example 1 Estimate =", round(  (
    (1/(((vals$p_protocol/100)/vals$protocol_LB) + ((1-(vals$p_protocol/100))/vals$protocol_UB)))
   +(1/(((vals$p_data/100)/vals$data_LB) + ((1-(vals$p_data/100))/vals$data_UB)))
   +(1/(((vals$p_random/100)/vals$random_LB) + ((1-(vals$p_random/100))/vals$random_UB)))
   +vals$newReport
   +(vals$reports*vals$r_reports)
   +vals$newDSMB
   +(vals$DSMB*vals$r_DSMB)
   +(1/(((vals$p_stand/100)/vals$stand_LB) + ((1-(vals$p_stand/100))/vals$stand_UB)))
   +(1/(((vals$p_prep/100)/vals$prep_LB) + ((1-(vals$p_prep/100))/vals$prep_UB)))
   +(1/(((vals$p_table/100)/vals$table_LB) + ((1-(vals$p_table/100))/vals$table_UB)))
   +(1/(((vals$p_paper/100)/vals$paper_LB) + ((1-(vals$p_paper/100))/vals$paper_UB)))
   +(1/(((vals$p_adv/100)/vals$adv_LB) + ((1-(vals$p_adv/100))/vals$adv_UB)))
   +vals$misc), digits = 2), "hours" ) 
    
  })
  
  #Example 2
  output$MetaTotal <- renderText({
    paste("Total Example 2 estimate =", round(  (
        (1/(((vals$p_M1/100)/vals$M1_LB) + ((1-(vals$p_M1/100))/vals$M1_UB)))  
       +(1/(((vals$p_M2/100)/vals$M2_LB) + ((1-(vals$p_M2/100))/vals$M2_UB)))
       +(1/(((vals$p_M3/100)/vals$M3_LB) + ((1-(vals$p_M3/100))/vals$M3_UB)))
       +(1/(((vals$p_M4/100)/vals$M4_LB) + ((1-(vals$p_M4/100))/vals$M4_UB)))
       +(1/(((vals$p_M5/100)/vals$M5_LB) + ((1-(vals$p_M5/100))/vals$M5_UB)))
       +(1/(((vals$p_M6/100)/vals$M6_LB) + ((1-(vals$p_M6/100))/vals$M6_UB)))
       +(1/(((vals$p_M7/100)/vals$M7_LB) + ((1-(vals$p_M7/100))/vals$M7_UB)))
       +(1/(((vals$p_M8/100)/vals$M8_LB) + ((1-(vals$p_M8/100))/vals$M8_UB)))
       +(1/(((vals$p_M9/100)/vals$M9_LB) + ((1-(vals$p_M9/100))/vals$M9_UB)))
       +(1/(((vals$p_M10/100)/vals$M10_LB) + ((1-(vals$p_M10/100))/vals$M10_UB)))
       +(1/(((vals$p_M11/100)/vals$M11_LB) + ((1-(vals$p_M11/100))/vals$M11_UB)))
       +(1/(((vals$p_M12/100)/vals$M12_LB) + ((1-(vals$p_M12/100))/vals$M12_UB)))
       +(1/(((vals$p_M13/100)/vals$M13_LB) + ((1-(vals$p_M13/100))/vals$M13_UB)))
       +(1/(((vals$p_M14/100)/vals$M14_LB) + ((1-(vals$p_M14/100))/vals$M14_UB)))
       +(1/(((vals$p_M15/100)/vals$M15_LB) + ((1-(vals$p_M15/100))/vals$M15_UB)))
       +(1/(((vals$p_M16/100)/vals$M16_LB) + ((1-(vals$p_M16/100))/vals$M16_UB)))
       +vals$M17+(vals$M18*vals$r_M18)+vals$M19), digits = 2), "hours" )  
      
 
     })
  
  # calculate the estimated workload in hours per week
  output$estimatedworkload <- renderText({
    
    # set reading rate in pages per hour
    # if user has not opted to manually input a value...
    if(input$setreadingrate==F){
      # use the values in the queryrate array above to select a reading rate
      queryrate.sel <- queryrate[as.numeric(input$difficulty), as.numeric(input$readingpurpose), as.numeric(input$datasource)]
    }else{
      # if user selects manual override, use the manually input value
      queryrate.sel <- input$overridequeryrate
    }
    
    # set writing rate in hours per page
    # if user has not opted to manually input a value...
    if(input$setvalidationrate==F){
      # use the values in the validationrate array above to select a writing rate
      validationrate.sel <- validationrate[as.numeric(input$referentialintegrity), as.numeric(input$draftrevise), as.numeric(input$validationmethods)]
    }else{
      # if user selects manual override, use the manually input value
      validationrate.sel <- input$overridevalidationrate 
    }
    
    # calculate hours spent working out of class per week using inputted values from UI
    expr = paste(round(
      (as.numeric(input$numberofencounters)/as.numeric(queryrate.sel)) + 
        ( (as.numeric(validationrate.sel)*as.numeric(input$numberofvariables)) / as.numeric(input$classweeks) ) +
        ( (as.numeric(input$exams)*as.numeric(input$examhours)) / as.numeric(input$classweeks)) +
        ( (as.numeric(input$otherassign)*as.numeric(input$otherhours)) / as.numeric(input$classweeks) ), 
      digits=2),"hrs/staff")
    
  })
  
  # generate a displayable value for the reading rate used from the queryrate matrix
  output$queryrate.out <- renderText({
    
    expr = paste(queryrate[
      as.numeric(input$difficulty), as.numeric(input$readingpurpose), as.numeric(input$datasource)
    ], "variables per hour")
    
  })
  
  # generate a displayable value for the writing rate used from the validationrate matrix
  output$validationrate.out <- renderText({
    expr = paste(validationrate[
      as.numeric(input$referentialintegrity), as.numeric(input$draftrevise), as.numeric(input$validationmethods)
    ], "hours per variable")
  })
  
})


library(shiny)
library(shinythemes)

ui <- shinyUI( navbarPage("Project Estimates",
                          
                          tabPanel("Example 1",
                                   
                                   fluidPage( theme = shinytheme("cerulean"), 
                                              
                                              titlePanel("Research Project Statistical Effort Estimation"),
                                              
                                              fluidRow(
                                                column(12, align="center",
                                                       
                                                       wellPanel(
                                                       
                                                       span(textOutput("text_calTotal"), style="font-size:18px") )
                                                ) ),
                                              
                                              fluidRow(
                                                
                                                column(4,
                                                       h4("Protocol changes"),
                                                       wellPanel(
                                                       sliderInput("num_1", "Estimate range",
                                                                   min = 0, max = 60, value = c(20,40), step = 5, post = " hrs"),
                                                       sliderInput("per_1", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 80, step = 5,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       hr(),
                                                       h4("Data collection guidance"),
                                                       wellPanel(
                                                       sliderInput("num_2", "Estimate range",
                                                                   min = 0, max = 60, value = c(10,40), step = 5, post = " hrs"),
                                                       sliderInput("per_2", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 70, step = 5,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       hr(),
                                                       h4("Randomization"),
                                                       wellPanel(
                                                       sliderInput("num_3", "Estimate range",
                                                                   min = 0, max = 40, value = c(4,10), step = 2, post = " hrs"),
                                                       sliderInput("per_3", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 80, step = 5,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       hr(),
                                                       h4("Standard statistical analysis"),
                                                       wellPanel(
                                                       sliderInput("num_8", "Estimate range",
                                                                   min = 0, max = 200, value = c(60,120), step = 5, post = " hrs"),
                                                       sliderInput("per_4", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 70, step = 5,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) )
                                                  
                                                ), #column 1 end
                                              
                                                #column 2
                                                column(4,
                                                       h4("Prepare analytic dataset"),
                                                       wellPanel(
                                                       sliderInput("num_9", "Estimate range",
                                                                   min = 0, max = 60, value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("per_5", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 5,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       hr(),
                                                       h4("Tables, Listings, and Figures"),
                                                       wellPanel(
                                                       sliderInput("num_10", "Estimate range",
                                                                   min = 0, max = 60, value = c(15,25), step = 5, post = " hrs"),
                                                       sliderInput("per_6", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 40, step = 5,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       hr(),
                                                       h4("Abs/manuscript support"),
                                                       wellPanel(    
                                                       sliderInput("num_11", "Estimate range",
                                                                   min = 0, max = 200, value = c(40,100), step = 5, post = " hrs"),
                                                       sliderInput("per_7", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 40, step = 5,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       hr(),
                                                       h4("Advanced statistical analysis"),
                                                       wellPanel(
                                                       sliderInput("num_12", "Estimate range",
                                                                   min = 0, max = 500, value = c(100,300), step = 5, post = " hrs"),
                                                       sliderInput("per_8", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 5,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) )                                                       
                                                                                                              
                                                ), #column 2 end
        
                                                #column 3
                                                column(4,
                                                       h4("Progress reports"),
                                                       wellPanel(
                                                       sliderInput("num_4", "Creating initial progress report",
                                                                   min = 0, max = 100, value = 30, step = 5, post = " hrs"),
                                                       sliderInput("num_5", "Each additional progress report",
                                                                   min = 0, max = 100, value = 10, step = 5, post = " hrs"),
                                                       sliderInput("r_num_5", "Number of progress reports",
                                                                   min = 0, max = 10,
                                                                   value = 3, step = 1,
                                                                   post = " Reports", sep = ",",
                                                                   animate = FALSE) ),
                                                       hr(),
                                                       h4("DSMB reports"),
                                                       wellPanel(
                                                       sliderInput("num_6", "Creating, running DSMB report",
                                                                   min = 0, max = 100, value = 40, step = 5, post = " hrs"),
                                                       sliderInput("num_7", "Each additional DSMB report",
                                                                   min = 0, max = 100, value = 15, step = 5, post = " hrs"),
                                                       sliderInput("r_num_7", "Number of DSMB reports",
                                                                   min = 0, max = 5,
                                                                   value = 2, step = 1,
                                                                   post = " Reports", sep = ",",
                                                                   animate = FALSE) ),
                                                       hr(),
                                                       h4("Miscellaneous meetings"),
                                                       wellPanel(
                                                       sliderInput("num_13", "Miscellaneous meetings",
                                                                   min = 0, max = 100, value = 20, step = 5, post = " hrs") )
                                                       
                                          ) #column 3 end
                                                
                                              ),
                                      
                                          h4(strong("Suggested language for the estiamte."), "This is not a contract, but a good-faith estimate of the total amount of work required, based on the information that has been provided. This estimate may change if additional information is later provided, and/or if project specifications change. If that occurs, we can provide you with a new estimate. Only actual hours worked will be billed.")
                                          
                                   ) ),
                          
                          tabPanel("Example 2",
                                   
                                   fluidPage( theme = shinytheme("cerulean"), 
                                              
                                              titlePanel("Applied Meta-Analysis Project Estimation"),
                                              
                                              h4("A way of combining data from many different research studies. A Meta-Analysis is a statistical process that combines the findings from individual studies.", strong("Applied example:"), a(href = "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3151311/", "Anxiety Outcomes after Physical Activity Interventions: Meta-Analysis Findings."), "Conn V.  Nurs Res. 2010 May-Jun;59(3):224-31."),
                                              
                                              fluidRow(
                                                column(12,
                                                       span(textOutput("MetaTotal"), style="font-size:22px")
                                                ) ),
                           
                                              fluidRow(
                                                
                                                column(4,
                                                       h4("Introduction"),
                                                       
                                                       h5("A theoretical framework is provided that supports the investigaton of the effect size (ES) of interest and includes a narrative synthesis of previous findings."),
                                                       wellPanel(
                                                         sliderInput("Mnum_1", "Estimate range", min = 0, max = 40, 
                                                                     value = c(20,30), step = 5, post = " hrs"),
                                                         sliderInput("Mper_1", "P(LB) estimate 1.",
                                                                     min = 0, max = 100,
                                                                     value = 50, step = 10,
                                                                     post = " %", sep = ",",
                                                                     animate = FALSE) ),
                                                       
                                                       h5("Type of ES of interest in the study is specifically detailed (e.g., correlation, standardized mean difference"),
                                                       wellPanel(
                                                         sliderInput("Mnum_2", "Estimate range", min = 0, max = 40, 
                                                                     value = c(20,30), step = 5, post = " hrs"),
                                                         sliderInput("Mper_2", "P(LB) estimate 2.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       hr(), 
                                                       h4("Method"),
                                                       h5("Data bases searched and keywords used to find relevant studies are listed, as well as criteria for deciding whether to include a study in the Example 2."),
                                                       wellPanel( 
                                                         sliderInput("Mnum_3", "Estimate range", min = 0, max = 40, 
                                                                     value = c(20,30), step = 2, post = " hrs"),
                                                       sliderInput("Mper_3", "P(LB) estimate 3.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ), 
                                                       h5("Formula used to calculate ESs are provided or referenced, and any transformations used (e.g., to normalize or stabilize ES sampling distributions) are made explicit."),
                                                       wellPanel( 
                                                          sliderInput("Mnum_4", "Estimate range", min = 0, max = 40, 
                                                                      value = c(20,30), step = 5, post = " hrs"),
                                                          sliderInput("Mper_4", "P(LB) estimate 4.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5("The coding that is used to categorize study or sample descriptors is provided."),
                                                       wellPanel( 
                                                       sliderInput("Mnum_5", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_5", "P(LB) estimate 5.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5(" Estimates are provided that describe the inter-rater reliability of the information coded in each study"),
                                                       wellPanel( 
                                                       sliderInput("Mnum_6", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_6", "P(LB) estimate 6.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) )                                          
                                                       
                                                ), #column 1 end
                                                
                                                #column 2
                                                
                                                column(4,
                                                       h4("Method (cont.)"),
                                                       
                                                       h5("If study quality is assessed, a description is provided detailing how it is assessed and how study quality is incorporated into the Example 2."),
                                                       wellPanel(
                                                         sliderInput("Mnum_7", "Estiamte range", min = 0, max = 40, 
                                                                     value = c(20,30), step = 5, post = " hrs"),
                                                         sliderInput("Mper_7", "P(LB) estimate 7.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5("For weighted analysis, the type of weights used is provided."),
                                                       wellPanel(
                                                       sliderInput("Mnum_8", "Estiamte range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_8", "P(LB) estimate 8.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),  
                                                       h5("Methods used to handle within-study ES dependence (e.g., multiple ESs per study) are described."),
                                                       wellPanel(
                                                         sliderInput("Mnum_9", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                         sliderInput("Mper_9", "P(LB) estimate 9.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),  
                                                       h5("Methods used to access, assess, and handle missing data are detailed."),
                                                       wellPanel(
                                                       sliderInput("Mnum_10", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_10", "P(LB) estimate 10.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5("If relevant, the method used to correct for artifacts is described."),
                                                       wellPanel(
                                                         sliderInput("Mnum_11", "Estiamte range", min = 0, max = 40, 
                                                                     value = c(20,30), step = 5, post = " hrs"),
                                                         sliderInput("Mper_11", "P(LB) estimate 11.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ), 
                                                       h5("Homogeniety of ESs is assessed."),
                                                       wellPanel(
                                                          sliderInput("Mnum_12", "Estiamte range", min = 0, max = 40, 
                                                                      value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_12", "P(LB) estimate 12.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) )
                                                                    
                                                ), #column 2 end
                                                
                                                #column 3
                                                column(4,
                                                       h4("Results"),
                                                       
                                                       h5("Statistics describing the resulting meta-analytic dataset that was gathered and including pooled estimates of the effect size of interest are provided along with the associated standard errors (and/or confidence intervals)."),
                                                       wellPanel(
                                                          sliderInput("Mnum_13", "Estiamte range", min = 0, max = 40, 
                                                                      value = c(20,30), step = 5, post = " hrs"),
                                                          sliderInput("Mper_13", "P(LB) estimate 13.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5("Inferential statistics describing the relation between the study and sample descriptors and the effect size are presented."),
                                                       wellPanel(
                                                       sliderInput("Mnum_14", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_14", "P(LB) estimate 14.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5("Interpretation is offered describing the practical significance of the ES magnitude and direction and relation between moderators and the ES."),
                                                       wellPanel(
                                                       sliderInput("Mnum_15", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_15", "P(LB) estimate 15.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       hr(), 
                                                       h4("Manuscript support"),
                                                       h5("Assistance with publication-quality tables and figures."),
                                                       wellPanel(
                                                          sliderInput("Mnum_16", "Estimate range", min = 0, max = 40, 
                                                                      value = c(20,30), step = 5, post = " hrs"),
                                                          sliderInput("Mper_16", "P(LB) estimate 16.",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),                 
                                                       hr(), 
                                                       h4("Added tasks"),
                                                       h5("Initial meeting and prep work"),
                                                       wellPanel(
                                                         sliderInput("Mnum_17", "Estimate",
                                                                   min = 0, max = 100, value = 30, step = 10, post = " hrs"),
                                                         sliderInput("Mnum_18", "Each additional meeting",
                                                                   min = 0, max = 100, value = 20, step = 10, post = " hrs"),
                                                         sliderInput("Mr_num_18", "Number of meetings",
                                                                   min = 0, max = 10,
                                                                   value = 3, step = 1,
                                                                   post = " Reports", sep = ",",
                                                                   animate = FALSE) ),
                                                       hr(), 
                                                       h5("Code annotation and summary"),
                                                       wellPanel(
                                                       sliderInput("Mnum_19", "Estimate",
                                                                   min = 0, max = 100, value = 20, step = 10, post = " hrs"))
                                                       
                                                ) #column 3 end
                                                
                                              ), #fluidrow  
                                              
                                              h5(strong("Notes."), "A meta analysis is a substantial undertaking. While the statistical analyses for a basic meta analysis are failrly straightforward, the process of exhasutively searching the literature, reading and coding studies, and analyzing and reporting results requires a substantial amount of time and effort. This estimate outlines a sample plan and does not include time to actually gather and organize data from articles which would substantially increase the time needed for this study.")              
                                              
                                   ) ),
                         
                          
                          tabPanel("Example 3", 
                                   fluidPage( theme = shinytheme("cerulean"), 
                                              
                                              h3("Data management Project Estimation Tool", align="center"),
                                              hr(),
                                              fluidRow(
                                                column(3,
                                                       h4("Identifying Encounters"),
                                                       wellPanel(
                                                         numericInput(
                                                           inputId = "numberofencounters",
                                                           label = "Number of variables:",
                                                           value=0,
                                                           width='100%'
                                                         ),
                                                         hr(),
                                                         selectInput(inputId="datasource", label="Data source:",c("EDW"=1, "Cerner"=2,"Other (e.g., Billing, Registry)"=3), selected=1),
                                                         selectInput(inputId="difficulty", label="Difficulty:",c("No New Variables"=1,"Some New Variables"=2,"Many New Variables"=3), selected=1),
                                                         selectInput(inputId="readingpurpose", label="Purpose:",c("Quick summary"=1,"Pilot data"=2,"Manuscript"=3), selected=1),
                                                         p(strong("Estimated Query Rate:"),br(),textOutput("queryrate.out", inline=T),br(),br(),checkboxInput("setreadingrate", "manually adjust", value=F, width='100%'), align="center"),
                                                         conditionalPanel("input.setreadingrate == true",
                                                                          numericInput(inputId="overridequeryrate", label="Variables Per Hour:", value=10, min=0, max=NA)
                                                         )
                                                       )
                                                ),  
                                                column(3,
                                                       h4("Data validation"),
                                                       wellPanel(
                                                         numericInput(
                                                           inputId = "numberofvariables",
                                                           label = "Number of variables:",
                                                           value=0,
                                                           width='100%'
                                                         ),
                                                         hr(),
                                                         selectInput(inputId="referentialintegrity", label="Referential Integrity:",c("No other tables"=1, "Validate inputs"=2), selected=1),
                                                         selectInput(inputId="validationmethods", label="Methods:",c("Variable type"=1, "Unique identifier"=2, "Range check"=3), selected=1),
                                                         selectInput(inputId="draftrevise", label="Iteration:",c("Not iterative"=1, "Minimal iteration"=2, "Extensive iteration"=3), selected=1),
                                                         p(strong("Estimated Data Validation Rate:"),br(),textOutput("validationrate.out", inline=T), br(),br(),checkboxInput("setvalidationrate", "manually adjust", value=F, width='100%'), align="center"),
                                                         conditionalPanel("input.setvalidationrate == true",
                                                                          numericInput(inputId="overridevalidationrate", label="Hours Per Variable:", value=.5, min=0.1, max=NA)
                                                         )
                                                       )
                                                ),  
                                                column(3,
                                                       h4("Data pulls"),
                                                       wellPanel(  
                                                         numericInput(
                                                           inputId = "exams",
                                                           label = "Number of data pulls:",
                                                           value=0,
                                                           width='100%'
                                                         ),
                                                         sliderInput(
                                                           inputId = "examhours",
                                                           label = "Number of quiries:",
                                                           min=0,
                                                           max=50,
                                                           step=1,
                                                           value=0,
                                                           width='100%'
                                                         )
                                                       ),
                                                       h4("Formatting for export"),
                                                       wellPanel(  
                                                         numericInput(
                                                           inputId = "otherassign",
                                                           label = "Exports Per Project:",
                                                           value=0,
                                                           width='100%'
                                                         ),
                                                         sliderInput(
                                                           inputId = "otherhours",
                                                           label = "Hours Per Export:",
                                                           min=0,
                                                           max=50,
                                                           step=1,
                                                           value=0,
                                                           width='100%'
                                                         )
                                                       )
                                                ),
                                                column(3,
                                                       h4("Data management staff"),
                                                       wellPanel(
                                                         numericInput(
                                                           inputId = "classweeks",
                                                           label = "Number of staff:",
                                                           value=1,
                                                           width='100%'
                                                         )
                                                       ),
                                                       hr(),
                                                       h4("Project estimate", align="center"),
                                                       wellPanel(
                                                         strong(textOutput("estimatedworkload"), align="center")
                                                       ),
                                                       #p(a("Estimation Details", href="http://www.google.com", target="blank"), align="center"), 
                                                       hr(),
                                                       p(strong("Research Estimates"), br(), p("This is not a contract, but a good-faith estimate of the total amount of work required, based on the information that has been provided. This estimate may change if additional information is later provided, and/or if project specifications change. If that occurs, we can provide you with a new estimate. Only actual hours worked will be billed.", align="left") )
                                                )
                                              )
                                   )  )
                          
) )

# an array giving data to use on pages per hour according to difficulty, reading purpose, and reading density
queryrate <- array(
  data<-c(67,47, 33, 33, 24, 17, 17, 12, 9, 50, 35, 25, 25, 18, 13, 13, 9, 7, 40, 28, 20, 20, 14, 10, 10, 7, 5), 
  dim=c(3,3,3),
  dimnames = list(c("No New Concepts","Some New Concepts","Many New Concepts"), 
                  c("Survey","Learn","Engage"),
                  c("450 Words (Paperback)","600 Words (Monograph)","750 Words (Textbook)")
  )
)

# an array giving data to use on hours per page according to difficulty, reading purpose, and reading density
validationrate <- array(
  data<-c(0.75, 1.5, 1, 2, 1.25, 2.5, 1.5, 3, 2, 4, 2.5, 5, 3, 6, 4, 8, 5, 10),
  dim=c(2,3,3),
  dimnames = list(c("250 Words (D-Spaced)", "500 Words (S-Spaced)"),
                  c("No Drafting", "Minimal Drafting", "Extensive Drafting"),
                  c("Reflection; Narrative", "Argument", "Research")
  )
)


server <- shinyServer(function(input, output, session){
  
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

shinyApp(ui = ui, server = server)
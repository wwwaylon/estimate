library(shiny)
library(shinythemes)

shinyUI( navbarPage("Project Estimates",
                          
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
                                                         sliderInput("Mper_1", "P (complete | LB)",
                                                                     min = 0, max = 100,
                                                                     value = 50, step = 10,
                                                                     post = " %", sep = ",",
                                                                     animate = FALSE) ),
                                                       
                                                       h5("Type of ES of interest in the study is specifically detailed (e.g., correlation, standardized mean difference"),
                                                       wellPanel(
                                                         sliderInput("Mnum_2", "Estimate range", min = 0, max = 40, 
                                                                     value = c(20,30), step = 5, post = " hrs"),
                                                         sliderInput("Mper_2", "P (complete | LB)",
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
                                                       sliderInput("Mper_3", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ), 
                                                       h5("Formula used to calculate ESs are provided or referenced, and any transformations used (e.g., to normalize or stabilize ES sampling distributions) are made explicit."),
                                                       wellPanel( 
                                                          sliderInput("Mnum_4", "Estimate range", min = 0, max = 40, 
                                                                      value = c(20,30), step = 5, post = " hrs"),
                                                          sliderInput("Mper_4", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5("The coding that is used to categorize study or sample descriptors is provided."),
                                                       wellPanel( 
                                                       sliderInput("Mnum_5", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_5", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5(" Estimates are provided that describe the inter-rater reliability of the information coded in each study"),
                                                       wellPanel( 
                                                       sliderInput("Mnum_6", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_6", "P (complete | LB)",
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
                                                         sliderInput("Mper_7", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5("For weighted analysis, the type of weights used is provided."),
                                                       wellPanel(
                                                       sliderInput("Mnum_8", "Estiamte range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_8", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),  
                                                       h5("Methods used to handle within-study ES dependence (e.g., multiple ESs per study) are described."),
                                                       wellPanel(
                                                         sliderInput("Mnum_9", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                         sliderInput("Mper_9", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),  
                                                       h5("Methods used to access, assess, and handle missing data are detailed."),
                                                       wellPanel(
                                                       sliderInput("Mnum_10", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_10", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5("If relevant, the method used to correct for artifacts is described."),
                                                       wellPanel(
                                                         sliderInput("Mnum_11", "Estiamte range", min = 0, max = 40, 
                                                                     value = c(20,30), step = 5, post = " hrs"),
                                                         sliderInput("Mper_11", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ), 
                                                       h5("Homogeniety of ESs is assessed."),
                                                       wellPanel(
                                                          sliderInput("Mnum_12", "Estiamte range", min = 0, max = 40, 
                                                                      value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_12", "P (complete | LB)",
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
                                                          sliderInput("Mper_13", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5("Inferential statistics describing the relation between the study and sample descriptors and the effect size are presented."),
                                                       wellPanel(
                                                       sliderInput("Mnum_14", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_14", "P (complete | LB)",
                                                                   min = 0, max = 100,
                                                                   value = 50, step = 10,
                                                                   post = " %", sep = ",",
                                                                   animate = FALSE) ),
                                                       h5("Interpretation is offered describing the practical significance of the ES magnitude and direction and relation between moderators and the ES."),
                                                       wellPanel(
                                                       sliderInput("Mnum_15", "Estimate range", min = 0, max = 40, 
                                                                   value = c(20,30), step = 5, post = " hrs"),
                                                       sliderInput("Mper_15", "P (complete | LB)",
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
                                                          sliderInput("Mper_16", "P (complete | LB)",
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
                          
) 

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


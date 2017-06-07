library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Starbucks"),skin = "green",
  dashboardSidebar(
    sidebarMenu(
      menuItem("首頁", tabName = "home", icon = icon("home")),
      menuItem("商品專區", tabName = "home", icon = icon("shopping-cart"),
               menuSubItem("飲料專區", icon = icon("coffee"),tabName = "coffee"),
               menuSubItem("糕點專區", icon = icon("cutlery"), tabName = "cake")),
      menuItem("全台門市活動", tabName = "ACT", icon = icon("star"),
               badgeLabel = "new", badgeColor = "yellow"),
      menuItem("關於我們", tabName = "AB", icon = icon("th")),
      menuItemOutput('menu'),
      sliderInput('rendermenu', '心情指數', min = 1, max = 20, value = 10),
      br(),br(),br(),
      column(
        width = 12,align="center",
        img(src="0022.png", height = "80%", width = "80%")
      )
      
    )
  ),
  dashboardBody(
    tabItems(
      #### 首頁 ####
      tabItem(tabName = "home",
              fluidRow(
                img(src="0002.JPG",width = "100%"),
                img(src="0003.JPG",width = "100%")
              )
      ),
      #### 飲料專區 ####
      tabItem(tabName = "coffee",
              tabsetPanel(
                #title = "First tabBox",
                # The id lets us use input$tabset1 on the server to find the current tab
                
                #### 飲料咖啡系列 ####
                tabPanel("飲料咖啡系列", 
                         fluidRow(
                           column(width = 3,
                                  a(img(src="0004.JPG", width = "100%"), 
                                    href = "http://www.starbucks.com.tw/products/beverages/drinks_products_page.jspx?id=8&cat=beverages&catId=2"),
                                  br(),br(),
                                  valueBox(155, "元", icon = icon("usd"),width=12,color="olive")
                           ),
                           column(width = 3,
                                  a(img(src="0005.JPG", width = "100%"), 
                                    href = "http://www.starbucks.com.tw/products/beverages/drinks_products_page.jspx?id=13&cat=beverages&catId=2"),
                                  br(),br(),
                                  valueBox(110, "元", icon = icon("usd"),width=12,color="olive")
                           ),
                           column(width = 3,
                                  a(img(src="0006.JPG", width = "100%"), 
                                    href = "http://www.starbucks.com.tw/products/beverages/drinks_products_page.jspx?id=11&cat=beverages&catId=2"),
                                  br(),br(),
                                  valueBox(135, "元", icon = icon("usd"),width=12,color="olive")
                           ),
                           column(width = 3,
                                  a(img(src="0007.JPG", width = "100%"), 
                                    href = "http://www.starbucks.com.tw/products/beverages/drinks_products_page.jspx?id=142&cat=beverages&catId=2"),
                                  br(),br(),
                                  valueBox(120, "元", icon = icon("usd"),width=12,color="olive")
                           )
                           
                         )
                         
                ),
                #### 星冰樂系列 ####
                tabPanel("星冰樂系列", 
                         fluidRow(
                           column(width = 3,
                                  a(img(src="0008.JPG", width = "100%"), 
                                    href = "http://www.starbucks.com.tw/products/beverages/drinks_products_page.jspx?id=144&cat=frappuccino&catId=6"),
                                  br(),br(),
                                  valueBox(150, "元", icon = icon("usd"),width=12,color="olive")
                           ),
                           column(width = 3,
                                  a(img(src="0009.JPG", width = "100%"), 
                                    href = "http://www.starbucks.com.tw/products/beverages/drinks_products_page.jspx?id=147&cat=frappuccino&catId=5"),
                                  br(),br(),
                                  valueBox(145, "元", icon = icon("usd"),width=12,color="olive")
                           ),
                           column(width = 3,
                                  a(img(src="0010.JPG", width = "100%"), 
                                    href = "http://www.starbucks.com.tw/products/beverages/drinks_products_page.jspx?id=23&cat=frappuccino&catId=5"),
                                  br(),br(),
                                  valueBox(165, "元", icon = icon("usd"),width=12,color="olive")
                           ),
                           column(width = 3,
                                  a(img(src="0011.JPG", width = "100%"), 
                                    href = "http://www.starbucks.com.tw/products/beverages/drinks_products_page.jspx?id=143&cat=frappuccino&catId=5"),
                                  br(),br(),
                                  valueBox(150, "元", icon = icon("usd"),width=12,color="olive")
                           )
                         )
                )
              )
              
      ),
      #### 糕點專區 ####
      tabItem(tabName = "cake",
              fluidRow(
                column(width = 3,
                       box(title = "蘋果派", status = "warning", width = NULL
                           ,
                           collapsible = TRUE
                           ,img(src="0013.JPG", width = "100%"),
                           "120元")
                ),
                column(width = 3,
                       box(
                         title = "可可輕乳蛋糕", width = NULL, solidHeader = TRUE, status = "primary",
                         img(src="0012.JPG", width = "100%"),
                         "80元"
                       )
                ),
                column(width = 3,
                       box(
                         title = "芋泥布丁薄餅", width = NULL, background = "purple",
                         img(src="0014.JPG", width = "100%"),
                         "125元"
                       )
                ),
                column(width = 3,
                       box(
                         title = "蘋果白桃慕斯", width = NULL, background = "maroon",
                         img(src="0015.JPG", width = "100%"),
                         "125元"
                       )
                )
              ),
              fluidRow(
                column(width = 6,
                       box(
                         title = "咖啡阿法奇朵", width = NULL, background = "navy",
                         img(src="0017.JPG",width = "100%"),
                         "135元"
                       )
                ),
                column(width = 6,
                       box(
                         title = "抹茶阿法奇朵", width = NULL, background = "olive",
                         img(src="0016.JPG", width = "100%"),
                         "135元"
                       )
                )
              )
      ),
      #### 全台門市活動  ####
      tabItem(tabName = "ACT",
              fluidRow(
                column(width = 1,""),
                column(width = 11,
                       img(src="0018.JPG", width = "100%")
                )
              )
      ),
      #### 全台門市活動  ####
      tabItem(tabName = "AB",
              h2(strong("關於統一星巴克")),
              h4("　　統一星巴克股份有限公司於1998年1月1日正式成立，是由美國 Starbucks Coffee International 公司與台灣統一集團旗下統一企業、統一超商三家公司合資成立，共同在台灣開設經營 Starbucks Coffee 門市。"),
              h4("　　從原產地的一株咖啡樹，最終成為送到手中的一杯咖啡，這段旅程，為咖啡的故事做了最佳的註解。它同時也塑造出咖啡家族的獨特風味及口感特性。閱讀咖啡的故事，可以讓讓您更瞭解咖啡，豐富您的咖啡體驗。"),
              h4("　　美國 Starbucks Coffee International 公司為全球第一大的咖啡零售業者 Starbucks Coffee Company 之經營授權公司；Starbucks Coffee Company 總裁霍華‧蕭茲先生經營咖啡事業著重在人文特質與品質堅持，強調尊重顧客與員工，並堅持採購全球最好的咖啡豆烘焙製作，提供消費者最佳的咖啡產品與最舒適的消費場所，經營 Starbucks Coffee 成為當今全球精品咖啡領導品牌，備受國際學者專家推崇，譽為「咖啡王國傳奇」。"),
              h4("　　台灣的統一企業則是 1967 年創立於台南永康，三十多年來，在高清愿先生的帶領下，從傳統食品出發，走向全方位產銷，滿足消費者的所有需求。它的產品系列，在台灣、海峽兩岸、亞洲、以致於全世界的食品業，都擔任領導者的角色。統一企業同時也是台灣最大的企業集團之一，旗下擁有的企業包括飼料、油脂、食品、飲料、物流、通路、金融、保險乃至於休閒產業。"),
              h4("　　統一星巴克股份有限公司以 Starbucks Coffee Company 在全球各地選購、烘焙的優質高原咖啡豆為根本，並甄選本地優秀人才培育訓練，提供台灣消費者高品質的咖啡與服務，搭配 Starbucks 獨特的空間設計理念，提供消費者在居家與辦公室之外，一個品嚐咖啡的第三個好去處。2002 年統一星巴克公司已經在台灣地區達成了百店的里程碑，目前門市已經散佈到台北縣市、基隆、桃園 、新竹、台中、台南、高雄、屏東、南投等台灣各地區。"),
              br(),br(),
              fluidRow(
                column(width = 1,
                       a(img(src="0019.png", width = "60%"), 
                         href = "https://www.facebook.com/starbuckstaiwan?ref=nf")
                       ),
                column(width = 1,
                       a(img(src="0020.JPG", width = "60%"), 
                         href = "https://www.youtube.com/user/STARBUCKSTW?feature=mhum")
                ),
                column(width = 8,""),
                column(width = 2,
                       br(),
                       a(actionButton("run", "　訂閱電子報", icon("envelope")), 
                         href = "https://www.starbucks.com.tw/member/epaper/member_epaper_admin.jspx")
                )
              )
      )
      
      
      
      
      
      
      
    )
  ))











server <- function(input, output) {
  set.seed(122)
  histdata <- rnorm(500)
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
  
  output$menu <- renderMenu({
    menuItem(input$rendermenu)
  })
}

shinyApp(ui, server)

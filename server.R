shinyServer(function(input, output) {
  c6<-1
  output$plot1 <- renderPlot({ 
   control<-input$A6-input$B6
   c1<-2^(control-input$A1+input$B1)
   c2<-2^(control-input$A2+input$B2)
   c3<-2^(control-input$A3+input$B3)
   c4<-2^(control-input$A4+input$B4)
   c5<-2^(control-input$A5+input$B5)
   t<-c(c1,c2,c3,c4,c5,c6)
   k<-vector(mode="numeric",length=6)
   for(i in 1:5){k[i]<-round((input$Con)/((input$dilute)^(i-1)),digits=2)}
   k[6]<-0
   names(t)<-k
   barplot(t,ylab = "Target Gene/Internal Control Gene",xlab = "Compound Concentration")
  })
  
}
)
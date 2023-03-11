library(forecast)
UPI.ts=ts(DATASET$`UPI PAYMENTS`,start = c(2022,1) ,
          frequency=365)
          
plot(UPI.ts)
acf(UPI.ts)

avg_model= Arima(UPI.ts,c(0,0,0))
str(avg_model)

avg_forecast=forecast(avg_model,1,level = c(50,95))
avg_forecast$mean

avg_forecast=forecast(avg_model)
str(avg_forecast)
avg_forecast$mean

plot(UPI.ts)
lines(avg_forecast$mean,col = "pink")
plot(avg_forecast)
autoplot(avg_forecast)


arima_model=auto.arima(UPI.ts,seasonal = FALSE)
arima_forecast= forecast(arima_model)
plot(arima_forecast)




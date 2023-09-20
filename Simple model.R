####Simple model#####
setwd("C:/Users/jzk0179/OneDrive - Auburn University/Desktop/Classes/WILD7400")
directory = getwd()
outdir    = paste(directory,"/output/",sep="")                    #directory to save model output  
source(paste(directory, "/source/FunctionSourcer.R", sep = ''))   #source functions and set source directory

#Shark age vs time searching
#age range from 1 to 20
iage= rnorm(100, mean=10, sd=2)
hist(iage)

#time searching relates to age
time= iage + rnorm(100,0,1)
hist(iage)

plot(x=iage, y=time, pch=19, col="SeaGreen2", xlim=c(1,20), ylim=c(1,20), cex=.5)
abline(a=0,b=1)

#older shark means more time searching and more food found.
quant = NULL
for(i in 1:length(time)){
  quant = c(quant, rnorm(1, mean(time[i]/20), sd=1/20))
}

plot(x=time, y=quant, pch=19, col="Sienna3", xlim=c(1,20), ylim=c(0,1), cex=.5)
abline(a=0,b=(.1/2))


K = 400 #carrying capacity
maxage = 20 #max age
maxsearch = 1440 #longest search time in minutes
searchnum = 1 #Amount of searches in a day

#output
nreps = 100
#towrite = c(r,reps,K,maxage,maxsearch,meanweight,meansearch,meanfood)


#create data frame
shark = data.frame(id = seq(1,K,1), age = rep(seq(1,maxage,1),(K/maxage)))
shark$weight = shark$age*rnorm(K,3,1)

#older age spends more time searching
for(i in 1:nrow(shark)){
  #function of age to time searching
  searchtime = shark$age * (shark$weight)
  
  shark$search = searchtime
  
  shark$search[shark$search < 0]  = 1
  shark$search[shark$search > 1440]  = 1440
  
  shark$food = rep(NA, nrow(shark))
  shark$food = shark$search/rnorm(K,10,1)
}

#output
meanweight <- shark %>% group_by(age) %>% 
  summarise(mean_weight=mean(weight),
            .groups = 'drop')
meansearch <- shark %>% group_by(age) %>% 
  summarise(mean_search=mean(search),
            .groups = 'drop')
meanfood <- shark %>% group_by(age) %>%
  summarise(mean_fod=mean(food),
            .groups = 'drop')

towrite = c(r,reps,K,maxage,maxsearch,meanweight,meansearch,meanfood)

#create a folder with date and time so it is unique to new folder names
folder = gsub(" ", "", paste("../Output/output_", Sys.time(), ""), fixed = TRUE)
dir.create(folder)

#copy output into folder to use later
data = read.table("../Output/outputsummary.csv", header=T, sep=",")
write.table(data, paste("../Output/", folder, "/outputsummary.csv", sep=""), row.names=F, col.names=T, sep=",")  


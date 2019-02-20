# Critical Thinking figure production
# Name omitted for university anonymity purposes 
# 20/02/19
# Aim: visualise how common selective reporting, p-hacking and HARKing are 
# at the Unviersity of Edinburgh on an undergraduate level 
# -------------------------------------------------------------------------

# set up -----
# load packages 
library(tidyverse)
library(readxl)

# set working directory
setwd("~/Documents/Edinburgh Year 4/Critical Thinking/My tutorial")

# load data
data <- read_excel("~/Documents/Edinburgh Year 4/Critical Thinking/My tutorial/data.xlsx")

# order factors 
data$yes_no <- factor(data$yes_no, levels = c("Yes", "No"))

# data visualisation ----
(figure <- ggplot(data, aes(x = type, y = number, fill = yes_no)) +
    geom_bar(position = position_dodge(), stat = "identity", colour = "black") +
   geom_text(aes(label = number), vjust = -0.3, position = position_dodge(0.9), size = 3.5) +
    scale_fill_manual(values = c("#1f78b4", "#a6cee3")) +
    scale_colour_manual(values = c("#1f78b4", "#a6cee3")) +
    scale_y_continuous(limits = c(0, 20)) +
    theme_bw() +
    ylab("Number of respondents\n") +                             
    xlab("\nType of questionable practice")  +
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_text(size = 12, colour = "black"),
          axis.text.y = element_text(size = 12, colour = "black"),
          axis.title = element_text(size = 14, face = "plain"),
          panel.grid = element_blank(),   
          axis.line.y.left = element_line(colour = "black"),
          legend.title = element_blank(),
          panel.border = element_blank(),
          plot.margin = unit(c(1,1,1,1), units = , "cm")))


import matplotlib.pyplot as plt
plt.rcParams.update({'font.size': 14}) #set font size
import numpy as np

y = np.array([35, 35, 15, 10, 5])
x = ["Python", "R", "MATLAB", "C++", "SQL"]

#plot pie chart with percentage
_, _, autotexts = plt.pie(y, labels = x, autopct='%1.0f%%') 
for autotext in autotexts:
    autotext.set_color('white') #set percentage color to white
    
caption = "Created using Python and matplotlib.\nCode can be found in my repo."
#place caption at the bottom right of the chart
plt.figtext(0.5, 0.01, caption, wrap="TRUE", horizontalalignment='left', fontsize=8)

plt.show() 
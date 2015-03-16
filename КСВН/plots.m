#!/usr/bin/WolframScript -script

empty = Import["empty.csv", HeaderLines->1];
barley = Import["barley.csv", HeaderLines->1];
wheat = Import["wheat.csv", HeaderLines->1];
Export["plot1.pdf", ListLinePlot[{empty, barley, wheat},
PlotLegends->{"пустой", "ячмень", "пшеница"}, InterpolationOrder->2,
PlotRange->All]]

Export["plot2.pdf", ListPlot[{empty, barley, wheat},
PlotLegends->{"пустой", "ячмень", "пшеница"}, Filling->Axis,
FillingStyle->Thickness[0.005], PlotRange->All]]

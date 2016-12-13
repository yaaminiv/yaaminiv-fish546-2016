

# A plotting R script produced by the REVIGO server at http://revigo.irb.hr/
# If you found REVIGO useful in your work, please cite the following reference:
# Supek F et al. "REVIGO summarizes and visualizes long lists of Gene Ontology
# terms" PLoS ONE 2011. doi:10.1371/journal.pone.0021800


# --------------------------------------------------------------------------
# If you don't have the ggplot2 package installed, uncomment the following line:
# install.packages( "ggplot2" );
library( ggplot2 );
# --------------------------------------------------------------------------
# If you don't have the scales package installed, uncomment the following line:
# install.packages( "scales" );
library( scales );


# --------------------------------------------------------------------------
# Here is your data from REVIGO. Scroll down for plot configuration options.

revigo.names <- c("term_ID","description","frequency_%","plot_X","plot_Y","plot_size","log10_p_value","uniqueness","dispensability");
revigo.data <- rbind(c("GO:0005576","extracellular region", 4.572, 3.059, 6.571, 6.031,-2.1587,0.859,0.000),
c("GO:0005578","proteinaceous extracellular matrix", 0.109,-5.363,-3.758, 4.410,-1.9494,0.776,0.000),
c("GO:0005581","collagen trimer", 0.057, 5.786, 1.729, 4.126,-1.8994,0.776,0.000),
c("GO:0005925","focal adhesion", 0.016,-0.907,-6.933, 3.588,-1.5132,0.852,0.000),
c("GO:0030054","cell junction", 0.154, 4.130,-5.495, 4.559,-1.4840,0.852,0.000),
c("GO:0030424","axon", 0.032,-0.597, 7.457, 3.872,-1.8372,0.837,0.000),
c("GO:0045179","apical cortex", 0.001,-3.837, 4.486, 2.391,-1.7062,0.776,0.016),
c("GO:0005622","intracellular",46.136, 0.554,-3.215, 7.035,-1.3062,0.895,0.036),
c("GO:0048471","perinuclear region of cytoplasm", 0.050,-5.761, 3.834, 4.067,-1.4886,0.763,0.181),
c("GO:0030017","sarcomere", 0.025,-5.510, 1.494, 3.765,-1.4715,0.651,0.217),
c("GO:0036398","TCR signalosome", 0.000, 5.811,-0.295, 1.519,-1.3901,0.793,0.218),
c("GO:0043234","protein complex", 8.273, 4.707, 1.686, 6.288,-2.3248,0.789,0.332),
c("GO:0070062","extracellular exosome", 0.300,-5.603,-2.398, 4.848,-1.3231,0.725,0.546));

one.data <- data.frame(revigo.data);
names(one.data) <- revigo.names;
one.data <- one.data [(one.data$plot_X != "null" & one.data$plot_Y != "null"), ];
one.data$plot_X <- as.numeric( as.character(one.data$plot_X) );
one.data$plot_Y <- as.numeric( as.character(one.data$plot_Y) );
one.data$plot_size <- as.numeric( as.character(one.data$plot_size) );
one.data$log10_p_value <- as.numeric( as.character(one.data$log10_p_value) );
one.data$frequency <- as.numeric( as.character(one.data$frequency) );
one.data$uniqueness <- as.numeric( as.character(one.data$uniqueness) );
one.data$dispensability <- as.numeric( as.character(one.data$dispensability) );
#head(one.data);


# --------------------------------------------------------------------------
# Names of the axes, sizes of the numbers and letters, names of the columns,
# etc. can be changed below

p1 <- ggplot( data = one.data );
p1 <- p1 + geom_point( aes( plot_X, plot_Y, colour = log10_p_value, size = plot_size), alpha = I(0.6) ) + scale_size_area();
p1 <- p1 + scale_colour_gradientn( colours = c("blue", "green", "yellow", "red"), limits = c( min(one.data$log10_p_value), 0) );
p1 <- p1 + geom_point( aes(plot_X, plot_Y, size = plot_size), shape = 21, fill = "transparent", colour = I (alpha ("black", 0.6) )) + scale_size_area();
p1 <- p1 + scale_size( range=c(5, 30)) + theme_bw(); # + scale_fill_gradientn(colours = heat_hcl(7), limits = c(-300, 0) );
ex <- one.data [ one.data$dispensability < 0.15, ]; 
p1 <- p1 + geom_text( data = ex, aes(plot_X, plot_Y, label = description), colour = I(alpha("black", 0.85)), size = 3 );
p1 <- p1 + labs (y = "semantic space x", x = "semantic space y");
p1 <- p1 + theme(legend.key = element_blank()) ;
one.x_range = max(one.data$plot_X) - min(one.data$plot_X);
one.y_range = max(one.data$plot_Y) - min(one.data$plot_Y);
p1 <- p1 + xlim(min(one.data$plot_X)-one.x_range/10,max(one.data$plot_X)+one.x_range/10);
p1 <- p1 + ylim(min(one.data$plot_Y)-one.y_range/10,max(one.data$plot_Y)+one.y_range/10);



# --------------------------------------------------------------------------
# Output the plot to screen

p1;

# Uncomment the line below to also save the plot to a file.
# The file type depends on the extension (default=pdf).

# ggsave("C:/Users/path_to_your_file/revigo-plot.pdf");

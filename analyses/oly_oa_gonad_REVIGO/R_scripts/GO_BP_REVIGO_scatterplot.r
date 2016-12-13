

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
revigo.data <- rbind(c("GO:0007155","cell adhesion", 0.564, 3.756,-4.569, 5.448,-2.9444,0.922,0.000),
c("GO:0007275","multicellular organismal development", 0.460, 3.508, 3.812, 5.360,-2.5363,0.647,0.000),
c("GO:0034394","protein localization to cell surface", 0.002,-0.007,-6.537, 3.080,-1.3970,0.860,0.000),
c("GO:0043547","positive regulation of GTPase activity", 0.130,-5.591,-1.585, 4.811,-2.4735,0.604,0.000),
c("GO:0042851","L-alanine metabolic process", 0.027, 4.853,-1.981, 4.132,-1.5437,0.852,0.042),
c("GO:0045786","negative regulation of cell cycle", 0.022,-7.176,-2.947, 4.037,-1.3970,0.677,0.219),
c("GO:0007166","cell surface receptor signaling pathway", 0.621,-5.935, 1.680, 5.490,-2.0751,0.573,0.282),
c("GO:0044861","protein transport into plasma membrane raft", 0.000,-0.741,-6.805, 1.362,-1.3260,0.796,0.394),
c("GO:0051607","defense response to virus", 0.321,-5.112, 5.160, 5.203,-1.7943,0.705,0.409),
c("GO:0009409","response to cold", 0.024,-4.478, 5.567, 4.074,-1.3884,0.752,0.434),
c("GO:0007218","neuropeptide signaling pathway", 0.022,-6.092, 2.507, 4.035,-1.5147,0.600,0.465),
c("GO:1904263","positive regulation of TORC1 signaling", 0.000,-4.418, 0.812, 1.519,-1.3260,0.606,0.474),
c("GO:0050873","brown fat cell differentiation", 0.002, 2.425, 5.554, 3.033,-1.4215,0.787,0.526),
c("GO:0061400","positive regulation of transcription from RNA polymerase II promoter in response to calcium ion", 0.000,-4.654,-0.021, 1.204,-1.3260,0.645,0.527),
c("GO:1990001","inhibition of cysteine-type endopeptidase activity involved in apoptotic process", 0.000,-7.484,-2.701, 1.792,-1.8055,0.658,0.572),
c("GO:0007169","transmembrane receptor protein tyrosine kinase signaling pathway", 0.040,-5.564, 2.474, 4.300,-1.4141,0.576,0.621),
c("GO:0030855","epithelial cell differentiation", 0.036, 2.734, 5.179, 4.258,-1.5211,0.771,0.638),
c("GO:0006941","striated muscle contraction", 0.007, 4.576, 1.599, 3.554,-1.8940,0.679,0.649),
c("GO:0031398","positive regulation of protein ubiquitination", 0.005,-5.107,-2.008, 3.351,-1.3482,0.636,0.686),
c("GO:1903078","positive regulation of protein localization to plasma membrane", 0.000,-3.086,-3.494, 2.225,-1.3260,0.603,0.692));

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

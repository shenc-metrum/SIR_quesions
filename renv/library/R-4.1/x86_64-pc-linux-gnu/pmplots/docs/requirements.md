
Introduction
============

`pmplots` is an `R` package to generate exploratory and diagnostic plots commonly of interest in pharamcometrics. Each function in `pmplots` is named according to the specific plot it generates via calls to functions in the `ggplot2` `R` package.

This document lists the functional requirements for the `pmplots` package.

Requirements for pharamcometric plotting package `pmplots`
==========================================================

<table style="width:97%;">
<colgroup>
<col width="30%" />
<col width="8%" />
<col width="58%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Section</th>
<th align="right">RID</th>
<th align="left">Requirement</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><strong>Default column names</strong></td>
<td align="right">1</td>
<td align="left">Column <code>RES</code> refers to residual; rendered <code>res</code> in function names</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">2</td>
<td align="left">Column <code>WRES</code> weighted residual; rendered <code>wres</code> in function names</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">3</td>
<td align="left">Column <code>CWRES</code> refers to conditional weighted residual; rendered <code>cwres</code> in function names</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">4</td>
<td align="left">Column <code>TIME</code> refers to model time; rendered <code>time</code> in function names</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">5</td>
<td align="left">Column <code>TAFD</code> refers to time after first dose; rendered <code>tafd</code> in function names</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">6</td>
<td align="left">Column <code>TAD</code> refers to time after dose; rendered <code>tad</code> in function names</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">7</td>
<td align="left">Column <code>DV</code> refers to observed data; rendered <code>dv</code> in function names</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">8</td>
<td align="left">Column <code>PRED</code> refers to population level predictions; rendered <code>pred</code> in function names</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">9</td>
<td align="left">Column <code>IPRED</code> refers to individual level predictions; rendered <code>ipred</code> in function names</td>
</tr>
<tr class="even">
<td align="left"><strong>Plots generated</strong></td>
<td align="right">10</td>
<td align="left">Functions <code>dv_time</code>, <code>dv_tafd</code>, and <code>dv_tad</code> plot <code>DV</code> versus the appropriate time measure; both lines and points are plotted</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">11</td>
<td align="left">Functions <code>dv_pred</code> and <code>dv_ipred</code> plot <code>DV</code> versus the appropriate predicted value; a line of identity is added as well as a loess smothing line; both the x- and y-axis maybe be transformed to log scale with the <code>loglog</code> argument; if <code>loglog</code> is used, only positive values are retained for the plot</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">12</td>
<td align="left">Functions <code>res_time</code>, <code>res_tafd</code>, and <code>res_tad</code> plots residual versus the appropriate time measure; a reference line is added at <code>res=0</code> as well as a loess smoothing line</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">13</td>
<td align="left">Functions <code>wres_time</code>, <code>wres_tafd</code>, and <code>wres_tad</code> plots weighted residual versus the appropriate time measure; a reference line is added at <code>wres=0</code> as well as a loess smoothing line</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">14</td>
<td align="left">Functions <code>cwres_time</code>, <code>cwres_tafd</code>, and <code>cwres_tad</code> plots conditional weighted residual versus the appropriate time measure; a reference line is added at <code>cwres=0</code> as well as a loess smoothing line</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">15</td>
<td align="left">Functions <code>res_pred</code>, <code>wres_pred</code> and <code>cwres_pred</code> plot the appropriate residual versus population model predictions (<code>PRED</code>); a horizontal reference line is added at <code>c/w/res=0</code> as well as a loess smoothing line</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">16</td>
<td align="left">Functions <code>res_cont</code>, <code>wres_cont</code>, and <code>cwres_cont</code> plot the appropriate residual versus a continuous covariate in the data set; a horizontal reference line is added at <code>c/w/res=0</code> as well as a loess smoothing line</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">17</td>
<td align="left">Functions <code>res_cat</code>, <code>wres_cat</code>, and <code>cwres_cat</code> makes a boxplot of the appropriate residual versus a categorical data set column</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">18</td>
<td align="left">Function <code>wres_q</code> and <code>cwres_q</code> generates quantile-quantile plots of the appropriate residual value; a refereince identity line is added</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">19</td>
<td align="left">Function <code>eta_hist</code> generates histograms of model ETAs and returns a list <code>gg/ggplot</code> objects</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">20</td>
<td align="left">Function <code>eta_cont</code> generates a scatterplot of model ETAs versus a continuous variable in the data set; a horizontal reference line at <code>ETAn=0</code> and loess smoothing line are also added to the plot</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">21</td>
<td align="left">Function <code>eta_cat</code> generates boxplot summaries of model ETAs by a categorical variable in the data set</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">22</td>
<td align="left">Function <code>eta_pairs</code> generates pairs plots using the <code>ggpairs</code> function from the <code>GGally</code> package</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">23</td>
<td align="left">Function <code>splitplot</code> splits the input data set according to a discrete data item and generates a plot according to a user-named function, returning a list of <code>gg/ggplot</code> objects</td>
</tr>
<tr class="even">
<td align="left"><strong>Continuous scatter</strong></td>
<td align="right">24</td>
<td align="left">x-axis options availabe in <code>x_scale_continuous</code> can be modified by the xs argument</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">25</td>
<td align="left">y-axis options available in <code>y_scale_continuous</code> can be modified by the ys argument</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">26</td>
<td align="left">When loess smoothing lines are generated, <code>geom_smooth</code> with <code>ggplot2</code> default behavior is used; the smooth may be modified through the <code>smooth</code> argument</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">27</td>
<td align="left">A title may be added through the <code>title</code> argument</td>
</tr>
<tr class="even">
<td align="left"><strong>Boxplot summaries</strong></td>
<td align="right">28</td>
<td align="left">x-axis options availabe in <code>x_scale_discrete</code> can be modified by the xs argument</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">29</td>
<td align="left">y-axis options available in <code>y_scale_continuous</code> can be modified by the ys argument</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">30</td>
<td align="left">Boxplot summaries are generated using <code>geom_boxplot</code> with <code>ggplot2</code> default configuration</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">31</td>
<td align="left">If <code>shown</code> is <code>TRUE</code>, a numeric summary of each box is included below each box. In the summary, <code>n</code> is the number of non-<code>NA</code> observations in the <code>y</code> column for that box and <code>N</code> is the number of unique <code>ID</code> values for that box. An error will be generated if <code>ID</code> does not exist in the plotting data frame when <code>shown</code> is <code>TRUE</code>. When <code>N</code> is equal to <code>n</code> in the summary, only <code>n</code> is shown.</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">32</td>
<td align="left">A title may be added thought the <code>title</code> argument</td>
</tr>
<tr class="odd">
<td align="left"><strong>Input data</strong></td>
<td align="right">33</td>
<td align="left">Data are input as data.frame or tibble</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">34</td>
<td align="left">Data sets are expected to be filter prior to plotting, so that the input data frame only contains rows that are appropriate for the current plotting function</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">35</td>
<td align="left">For continuous scatter plots, numeric data are required or an error is generated; data are considered discrete if they are <code>numeric</code> or <code>integer</code></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">36</td>
<td align="left">For boxplot summaries, discrete data are required for x-axis for boxplot summaries; data are considered discrete of they are <code>character</code>, <code>factor</code>, or <code>logical</code></td>
</tr>
<tr class="odd">
<td align="left"><strong>Look and feel</strong></td>
<td align="right">37</td>
<td align="left">Scatter plots are made with black points via <code>geom_point</code></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">38</td>
<td align="left">Box plots are made with white fill via <code>geom_boxplot</code></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">39</td>
<td align="left">The <code>ggplot2</code> default grid lines are retained on the plot</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">40</td>
<td align="left">Plots are made with white background</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">41</td>
<td align="left">Loess lines are blue and dashed</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">42</td>
<td align="left">Lines of identity and horizontal reference lines for scatter plots are solid grey</td>
</tr>
<tr class="odd">
<td align="left"><strong>R packages</strong></td>
<td align="right">43</td>
<td align="left">Imports: <code>dplyr</code> <code>(&gt;= 0.7.2)</code>, <code>rlang</code> <code>(&gt;= 0.1.2)</code></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="right">44</td>
<td align="left">Depends: <code>ggplot2</code> <code>(&gt;= 2.2.1)</code></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="right">45</td>
<td align="left">Suggests: <code>testthat</code></td>
</tr>
</tbody>
</table>

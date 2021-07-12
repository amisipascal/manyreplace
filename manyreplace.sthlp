{smcl}
{* *! version 1.0.0  15sep2020}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "manyreplacehelpfile##syntax"}{...}
{viewerjumpto "Description" "manyreplacehelpfile##description"}{...}
{viewerjumpto "Options" "manyreplacehelpfile##options"}{...}
{viewerjumpto "Remarks" "manyreplacehelpfile##remarks"}{...}
{viewerjumpto "Examples" "manyreplacehelpfile##examples"}{...}
{title:Title}

{phang}
{bf:manyreplace} {hline 2} Replace more  than two variables within a single line


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:manyre:place}
{varlist},
varlist({varlist})

{marker description}{...}
{title:Description}

{pstd}
{cmd:manyreplace} Replaces more  than two variables at once in the given {varlist} before the comma and varlist({varlist}). 
The first variable in the specified {varlist} before the comma becomes the content in the first variable of the varlist({varlist}) additional variables should follow this pattern.

{marker remarks}{...}
{title:Remarks} 
{pstd}
The variables replacing each other should be of the same variable type

{marker examples}{...}
{title:Examples}

{phang}{cmd:. manyreplace {varlist}, varlist({varlist})}{p_end}

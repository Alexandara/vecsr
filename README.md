# Virtually Embodied Common Sense Reasoning (VECSR)
VECSR is a system which translates a VirtualHome simulation 
environment into s(CASP) facts which can then be reasoned over to produce 
actions. These actions are fulfilled in the simulation environment to complete
high-level tasks. 

## Technology Used
[s(CASP)](https://gitlab.software.imdea.org/ciao-lang/sCASP)

[VirtualHome](http://virtual-home.org/)

## How To Run
In addition to the code in this repository, anyone looking to run the real 
VirtualHome simulator will need to clone the 
[VirtualHome repository](https://github.com/xavierpuigf/virtualhome) in the top 
level directory for this repo. You will also need to download the [VirtualHome
executable](http://virtual-home.org/documentation/master/get_started/get_started.html#installation).
This program is designed for MacOS, and it is not platform-agnostic. 

Additionally, s(CASP) will need to be installed on the machine. Instructions on
how to do so can be found in the 
[s(CASP) README](https://gitlab.software.imdea.org/ciao-lang/sCASP). 

To run the program, the VirtualHome executable will have to be on and allowed
to access network traffic. After turning it on, the main.py file can be run. The 
first thirty lines of the main method are various parameters concerning levels
of static analysis, which task to perform, and some quality of life features.

## Examples
The examples referenced in the ICLP 2025 conference paper (citation incoming)
are included under Examples.

### Programs for Each Task
In Table 2 the run times are compared between programs with different levels of 
static analysis for different tasks. The programs executed for these times are 
included in this folder. The levels are as follows and match the table in the 
paper:
- Standard: Unoptimized code that includes the full VirtualHome state as is and
the full ruleset.
- Modular: Uses only the modularization optimization wherein only the facts from
the relevant rooms in the simulated apartment are used.
- Dep. Graph: Uses only the dependency graph optimization which only includes 
predicates that will be touched by the query based on a predicate dependency graph.
- Part. Ground: Uses only the partial grounding optimization where only facts 
involving objects that are of notable interest to the query after preliminary
grounding is done.
- Fully Opt.: Uses all three of the above optimizations.

### Simulation Videos
The videos are not tracked by Git, however there are several example videos 
available and linked below. We have videos for the following tasks:
- brush_teeth: [walk(bathroom11), walk(faucet51), switchon(faucet51), 
walk(toothbrush66), grab(toothbrush66), walk(toothpaste63), grab(toothpaste63),
walk(faucet51), use(toothpaste63), use(toothbrush66)]
  - [Video](https://drive.google.com/file/d/1I0WAXI--dmApuG0Pvdvrf1ZBijFoXR64/view?usp=sharing)
- wash_dirty_dishes: [walk(faucet249), switchon(faucet249), walk(bedroom74), 
walk(wineglass199), grab(wineglass199), walk(plate195), grab(plate195), 
walk(kitchen207), walk(sink247), put(wineglass199,sink247), put(plate195,sink247),
use(sink247)]
  - [Video](https://drive.google.com/file/d/1BlYrmz4TP1cCeAKj9yQj59jKXwuxceF2/view?usp=sharing)
- feed_me: [grab(salmon328), grab(bellpepper321), walk(stove312), 
switchon(stove312), walk(fryingpan270), put(salmon328,fryingpan270), 
put(bellpepper321,fryingpan270), eat(salmon328)]
  - [Video](https://drive.google.com/file/d/1Ul9oX231ZD1hCvM8g27AOqS9hmmTEVg1/view?usp=sharing)
  - Note: a bell pepper exists in the environment but does not get rendered 
  in the simulation, so it is not visibly grabbed.
- read: [walk(bedroom74), walk(book192), grab(book192), walk(chair109), 
sit(chair109), use(book192)]
  - [Video](https://drive.google.com/file/d/1tmflai1FwtvWqSF0YCAjrCKOvV1DKd_d/view?usp=sharing)

Note that not all actions in the 
[VirtualHome documentation](http://virtual-home.org/documentation/master/kb/actions.html)
are fully embodied in the simulation environment, so there are some inconsistencies
between the actions being performed and what is seen in the videos. Nonetheless
these are excellent examples of s(CASP) being used to control an embodied agent
in a simulated environment.

### iclp_mini_example.pl
This file contains the code in Section 3.3 of the ICLP 2025 paper used to get 
the first suggested action.

# How to Cite VECSR
**In Publications:**

If you use VECSR for work/research presented in a publication 
(whether directly, or as a dependency to another package), we ask that you please 
use the following citation:
     
     [Citation Coming Soon!]
     
**In Projects:**

If you are using VECSR as part of a code project (e.g., affiliated packages), 
a useful way to acknowledge your use is in your README.

# License 
GNU @ Alexis R. Tudor
[![Open Source Love svg2](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)




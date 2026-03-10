# Virtually Embodied Common Sense Reasoning (VECSR)
VECSR is a system which translates a VirtualHome simulation 
environment into s(CASP) facts which can then be reasoned over to produce 
actions. These actions are fulfilled in the simulation environment to complete
high-level tasks.

## Technology Used
[s(CASP)](https://gitlab.software.imdea.org/ciao-lang/sCASP)

[VirtualHome](http://virtual-home.org/)

[AirSim](https://microsoft.github.io/AirSim/)

## How To Run with VirtualHome
In addition to the code in this repository, anyone looking to run the real 
VirtualHome simulator will need to clone the 
[VirtualHome repository](https://github.com/xavierpuigf/virtualhome) in the src directory for this repo. You will also need to download the [VirtualHome
executable](http://virtual-home.org/documentation/master/get_started/get_started.html#installation).

Additionally, s(CASP) will need to be installed on the machine. Instructions on
how to do so can be found in the 
[s(CASP) README](https://gitlab.software.imdea.org/ciao-lang/sCASP). 

To run the program, the VirtualHome executable will have to be on and allowed
to access network traffic. Alternatively, if using Mac the executable will be started
and stopped automatically.
For all other OSes, after turning it on, the main_virtualhome.py file can be run.

### Installation for Windows (WSL)
VECSR in VirtualHome was originally designed for MacOS, so you need to go through some extra setup on WSL to get it working.
Though VirtualHome can run Python 3.10+, We recommend using Python 3.9 for compatibility with both Airsim and VirtualHome.

1. Install WSL
    - `wsl --install` `wsl --update`
    - `sudo apt update` `sudo apt install build-essential`
    - `sudo apt install python3 python3-venv python3-full`
3. In "Turn Windows Features On or Off" > Enable Virtual Machine Platform and Windows Subsystem for Linux, Restart if needed.
4. In "WSL Settings" > Networking > Networking Mode > Mirrored
5. Using WSL, Install s(CASP):
    - `curl https://ciao-lang.org/boot -sSfL | sh`
    - `ciao get gitlab.software.imdea.org/ciao-lang/sCASP`
    - `scasp --update`
6. Clone the VECSR
    - Do `git add --chmod=+x scasp_knowledge_base` before cloning or the scripts might not work.
7. In VECSR the folder > Clone the Virtualhome Repository /  Project AirSim Repository
8. Make a Python VENV and install all pip / libs
    - Airsim `uv venv --seed --python 3.9 -c` -> `uv pip install -r requirements.txt` -> cd ProjectAirSim -> `python -m pip install -e client/python/projectairsim`
	- With ProjectAirSim you may need to `pip uninstall virtualhome` and `pip install "setuptools<70.0.0"`
    - VirtualHome, `uv venv --seed --python 3.9 -c` -> cd vecsr\virtualhome\ -> `pip install -e .` -> install rest manually.
9. On the Windows side, download VirtualHome's Windows Exe to somewhere like Program Files, and run it.
    - You can verify if it's open on localhost in WSL w/ `ip route | grep default` for `8080`
    - Do similarly with Airsim, if the sCASP server keeps failing to reconnect try to restart WSL `wsl --shutdown`
10. After staring the simulator on the windows side, run `main_virtualhome.py` or `main_airsim.py` in WSL.

## Examples
The examples referenced in ICLP 2025 are included under Examples.

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

## How to Run with AirSim
AirSim will need to be run as instructed in the [AirSim documentation](https://microsoft.github.io/AirSim/build_windows/). 

Because AirSim is no longer being supported, it is difficult to run on anything other than Windows. As s(CASP) can
only be run easily on Unix-based machines, we provide an option to run VECSR in a server-client connection, where 
VECSR can function as a s(CASP) server on a s(CASP)-enabled machine and an AirSim-connected client on a Windows machine
using a simple TCP socket. 

To run VECSR as a s(CASP) server, use `scasp_server.py` on the Unix side, then with AirSim on Windows run `main_airsim.py`.
    - If on windows, open another WSL terminal to do it.
    - Setup config.yml `ip_address` to `127.0.0.1` or run w/ `0.0.0.0`.
    - The ProjectAirSim drone spawn config is in the `sim_config` folder.

If you try building AirSim yourself, ensure your Visual Studio 2022 has .net, Windows build tools, C++ frameworks, Game Development bundles, and try adding these lines to `C:\Program Files\Epic Games\UE_4.27\Engine\Config\BaseEngine.ini` (or 5.2 / 5.7 for Project Airsim), else we recommend using the prebuilt binaries given by either Microsoft Airsim or IAMAI Project AirSim.
```
[PlatformPaths]
UnrealBuildTool=Engine/Binaries/DotNET/UnrealBuildTool.exe
```

### Simulation Video
A demonstration video is available and linked here: [Video](https://drive.google.com/file/d/1dLcAfDx14L6Kk7PUr7tecDVNdlx4ec46/view?usp=sharing)

## Configuring VECSR
In config/config.yml there are settings for various configurations of VECSR 
(main_virtualhome.py) and VECSR-A (main_airsim.py). These settings have comments
describing their use.

# How to Cite VECSR
**In Publications:**

If you use VECSR for work/research presented in a publication 
(whether directly, or as a dependency to another package), we ask that you please 
use one of the following citations:

VECSR:

    Tudor, A.R., Arias, J., Gupta, G.: VECSR: Virtually Embodied Common Sense Reasoning System. In: Proceedings 41st International Conference on Logic Programming, The University of Calabria, Arcavacata CS, Italy, September 12-19-2025. Electronic Proceedings in Theoretical Computer Science, Open Publishing Association (2025)
     
VECSR-A:

    Tudor, Alexis R., Keegan Kimbrell, and Gopal Gupta. "Initial Review of Goal-Directed Answer Set Programming for Orchestration of Neuro-Symbolic UAV Autonomy." (2026).

**In Projects:**

If you are using VECSR as part of a code project (e.g., affiliated packages), 
a useful way to acknowledge your use is in your README.

# License 
GNU @ Alexis R. Tudor
[![Open Source Love svg2](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)

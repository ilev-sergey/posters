#import "@preview/peace-of-posters:0.5.6" as pop

#set page("a1", margin: 0.7cm)
#pop.set-poster-layout(pop.layout-a1)
#pop.set-theme(pop.uni-fr)
#set text(size: pop.layout-a1.at("body-size"))
#let box-spacing = 0.8em
#set columns(gutter: box-spacing)
#set block(spacing: box-spacing)
#pop.update-poster-layout(spacing: box-spacing)
#set text(lang: "en")
  #import "@preview/whalogen:0.3.0"
  #import "@preview/whalogen:0.2.0": ce

#pop.title-box(
  "Effect of top electrode grain size on the remanent polarization of ferroelectric capacitors",
  authors: "Sergey Ilyev, I.A. Mutaev, M.V. Spiridonov, A.A. Chouprik",
  institutes: "Moscow Institute of Physics and Technology\nilev.sv@phystech.edu",
  logo: rect(image("images/msn_2025/qr.png", height: 8%),
  fill: white, inset: 10pt, radius: 10pt),
)

#columns(2,[
  #pop.column-box(heading: "Introduction")[
    Thin ferroelectric films of doped #ce("HfO2") are considered as a promising material for the development of next-generation non-volatile memory #cite(<bosckeFerroelectricityHafniumOxide2011>). The advantages of this material include perfect compatibility with silicon technology and a scaling potential down to nanometer thickness. Polar orthorhombic phase in this material is metastable, and its stabilization depends on several factors: film thickness, electrode materials, annealing temperature and duration, as well as the type and concentration of dopants. To date, there is no comprehensive understanding of the roles all structural and technological parameters play in determining the ferroelectric properties of this material. This study demonstrates that the macro- and microscopic properties of 10 nm-thick #ce("Hf0.5Zr0.5O2") films strongly depend on the grain size of the memory cell electrodes.
  ]


  #pop.column-box(heading: "Fabrication")[
    4 types of structures $#ce("Si/W/Hf0.5Zr0.5O2")"/"#ce("Pt")$ were fabricated, differing in energy of pulses used during top electrode (Pt) deposition.
  

    === Methods

    - Magnetron sputtering -- bottom electrode W (40 nm)
    - Atomic layer deposition -- functional layer $#ce("Hf0.5Zr0.5O2")$ (10 nm)
    - Pulsed laser deposition -- top electrode (Pt)
    - Electron beam deposition -- contacts (Al)
  ]

  #pop.column-box(heading: "Electrical characterization", stretch-to-next: false)[
    
    #figure(caption: [
      P-V and I-V curves of memory cells with different energy of pulses used during top electrode deposition.
    ])[
        #image("images/msn_2025/pv_hysteresis.png", width: 100%)
    ]
  ]  #pop.common-box(
    body: bibliography("bibliography.bib", style: "nature")
  )#pop.common-box(body: "This work was supported by the Russian Science Foundation (Project No. 25-19-00493).")

    #pop.column-box(heading: "Electrode grain analysis")[
    Larger Pt grains are formed if higher energy pulses are used.

    #figure(caption: [
      SEM images of top electrode (Pt) surface
    ])[
        #image("images/msn_2025/grains.png", width: 100%)
    ]
  ]
   #pop.column-box(heading: "Domain structure ")[
    Increase in pulse energy during Pt deposition leads to increase of domain size (A). Domain pinning is found in sample with low-size grains. (B)

    #figure(caption: [
      PFM phase (A) in polydomain state (B) after cycling. \
      (C) PFM setup
    ])[
        #image("images/msn_2025/pfm.png", width: 100%)
    ]
  ]
     
   #pop.column-box(heading: "Underlying mechanism")[Effect of grain size consist in mechanism of oxygen migration through electrode film. Higher migration rate in samples with smaller grains leads to domain pinning and smaller polarization values in the memory cells.

        #figure(caption: [
      (A) Relationship between grain size and boundary length\
 (B) Oxygen migration at grain boundaries of Pt electrode
    ])[
        #image("images/msn_2025/mechanism.png", width: 100%)
    ]
    ]
   
  #pop.column-box(heading: "Conclusions")[
    - It is shown that macro- and microscopic properties of 10 nm-thick #ce("Hf0.5Zr0.5O2") films strongly depend on the grain size of the memory cell electrodes. 
- The impact of the grain size is explained through the migration of oxygen atoms resulting in different oxygen vacancy densities at #ce("Hf0.5Zr0.5O2").
- The results indicate that the ferroelectric properties of #ce("Hf0.5Zr0.5O2") memory cells can be tuned by optimizing electrode deposition.
  ]

])

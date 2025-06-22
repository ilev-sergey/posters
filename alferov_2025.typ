#import "@preview/peace-of-posters:0.5.6" as pop

#set page("a1", margin: 0.7cm)
#pop.set-poster-layout(pop.layout-a1)
#pop.set-theme(pop.uni-fr)
#set text(size: pop.layout-a1.at("body-size"))
#let box-spacing = 0.8em
#set columns(gutter: box-spacing)
#set block(spacing: box-spacing)
#pop.update-poster-layout(spacing: box-spacing)
#set text(lang: "ru")


#pop.title-box(
  "Влияние параметров электрода на сегнетоэлектрические свойства ячеек памяти \nна основе Hf₀ִ‎ִ‎ ₅Zr₀ִ‎ִ‎ ₅O₂",
  authors: "Сергей Ильев, И.А. Мутаев, М.В. Спиридонов, А.А. Чуприк",
  institutes: "Московский физико-технический институт\nilev.sv@phystech.edu",
  // keywords: "ferroelectric memory, ferroelectric hafnium oxide, FeRAM, PFM,",
  // logo: circle(image("hv_s_no_bg.png"),
  logo: rect(image("images/qr.png"),
  fill: white, inset: 10pt, radius: 10pt,),
)

#columns(2,[
  #pop.column-box(heading: "Аннотация")[
    Тонкие сегнетоэлектрические (СЭ) пленки легированного оксида гафния являются перспективным материалом для разработки энергонезависимой памяти нового поколения. #cite(<bosckeFerroelectricityHafniumOxide2011>)
    
    Стабилизация СЭ свойств, а значит и эффективность устройств памяти определяется различными факторами: толщиной плёнки, материалами электродов, концентрацией легирующей примеси, концентрацией дефектов, длительностью и температурой отжига, используемого для кристаллизации плёнки. 

    
  ]
  #import "@preview/whalogen:0.3.0"
  #import "@preview/whalogen:0.2.0": ce

  #pop.column-box(heading: "Экспериментальная часть")[
    Было изготовлено четыре типа структур $#ce("Si/W/Hf0.5Zr0.5O2")"/"#ce("Pt")$, отличающихся энергией импульса, использованного при напылении верхнего электрода Pt.

  

    === Методы

    - Магнетронное напыление -- нижний электрод W (40 нм)
    - Атомно-слоевое осаждение -- функциональный слой $#ce("Hf0.5Zr0.5O2")$ (10 нм)
    - Импульсное лазерное осаждение -- верхний электрод Pt
    - Электронно-лучевое напыление -- контакты Al
   // - картинку со структурой (в идеале SOLIDWORKS, как в статьях) - попроси у Анастасии ещё раз
   // - и ещё 3 картинки - АСМ/СЭМ - смотри сам чё нагляднее/смотрибельнее
   // - - гистерезис
   // - - pfm
   // - - на постер Ромы Киртаева опирайся по структуре + преза Ильи можно посмотреть
  ]

  // These properties will be given to the function which is responsible for creating the heading
  // #let hba = pop.uni-fr.heading-box-args
  // #hba.insert("stroke", (paint: gradient.linear(green, red, blue), thickness: 10pt))

  // // and these are for the body.
  // #let bba = pop.uni-fr.body-box-args
  // #bba.insert("inset", 30pt)
  // #bba.insert("stroke", (paint: gradient.linear(green, red, blue), thickness: 10pt))

  // #pop.column-box(
  //   heading: "Biological Information",
  //   heading-box-args: hba,
  //   body-box-args: bba,
  // )[
  //   #table(
  //     columns: (auto, 1fr),
  //     inset: 0.5cm,
  //     stroke: (x, y) => if y >= 0 {(bottom: 0.2pt + black)},
  //     [Domain],[Eukaryota],
  //     [Kingdom],[Animalia],
  //     [Phylum],[Chordata],
  //     [Class],[Aves],
  //     [Clade],[Columbimorphae],
  //     [Order],[Columbiformes],
  //     [Family],[Columbidae],
  //     [Type genus],[Columba],
  //   )

  //   This box is styled differently compared to the others.
  //   To make such changes persistent across the whole poster, we can use these functions:
  //   ```typst
  //   #pop.update-poster-layout(...)
  //   #pop.update-theme()
  //   ```
  // ]

  #pop.column-box(heading: "Электрофизическая характеризация", stretch-to-next: true)[
    При увеличении энергии импульсов
    - увеличивается величина остаточной поляризации
    - уменьшается коэрцитивное напряжение
    - увеличивается ток утечки
    
    #figure(caption: [
      P-V кривые ячеек памяти при различной энергии импульсов, используемых при напылении верхнего электрода
    ])[
      // #link("https://jonaspleyer.github.io/peace-of-posters/")[
      //   #image("images/afm/morphology/145 mJ.png", width: 50%)
      // ]
      #link("https://jonaspleyer.github.io/peace-of-posters/")[
        #image("images/pv_hysteresis.png", width: 100%)
      ]
    ]
  ]

    #pop.column-box(heading: "Анализ зёрен Pt электрода")[
    Образуются более крупные зёрна Pt при использовании  импульсов с большей энергией при напылении.

    #figure(caption: [
      РЭМ изображения поверхности Pt электродов
    ])[
      // #link("https://jonaspleyer.github.io/peace-of-posters/")[
      //   #image("images/afm/morphology/145 mJ.png", width: 50%)
      // ]
      #link("https://jonaspleyer.github.io/peace-of-posters/")[
        #image("images/grains.png", width: 80%)
      ]
    ]
  ]
      #pop.column-box(heading: "Микроскопия пьезоотклика")[
    Увеличивается  характерный размер доменов при увеличении энергии импульса.

      // #link("https://jonaspleyer.github.io/peace-of-posters/")[
      //   #image("images/afm/morphology/145 mJ.png", width: 50%)
      // ]
    //   #link("https://jonaspleyer.github.io/peace-of-posters/")[
    //     #image("pfm.png", width: 90%)
    //   ]
    // ]
    #figure(stack(dir: ltr, 
				box([
      #image("images/pfm_setup.png", width: 107%)
				#place(top+left, rect(text("A", fill: black), inset: 10pt))], width: 49.5%),
				box(width: 1%),
				box([#image("images/pfm_phase.png")
				#place(top+left,dx:1%, dy:1.5%, rect(text("B", fill: white), inset: 10pt, ))], width: 49.5%)
			),
			caption: [
				(A) Схема эксперимента по исследованию доменной структуры.
				(B) Карты фазы пьезоотклика в полидоменном состоянии.
			])

  //   #figure(stack(dir: ltr, 
		// 		box([#image("pfm.png")
		// 		#place(top+left, rect(text("A", fill: white), inset: 10pt))], width: 49.5%),
		// 		box(width: 1%),
		// 		box([#image("pfm.png")
		// 		#place(top+left, rect(text("B", fill: white), inset: 10pt))], width: 49.5%)
		// 	),
		// 	caption: [
		// 		(A) Linear fit $f(x)=a x$ of scaling with increasing amounts of agents.
		// 		(B) Amdahl's Law with up to $p=98.6%$ parallelized parts of the executed code resulting in a $21.5$ times speedup.
		// 	])
		// #align(right, text(size: 20pt)[
		// 	#super("1")Workstation, AMD 3960X (24C/48T) \@3.8GHz-4.5GHz, 64Gb DDR4 3200MT/s\
		// 	#super("2")Desktop, AMD 3700x (8C/16T) \@3.6GHz-4.4GHz, 32Gb DDR4 3200MT/s\
		// 	#super("3")Laptop, Intel 12700H (6+8C/12+8T) 45W \@3.5GHz-4.7GHz 32Gb DDR5 4800MT/s
		// ])
  ]

  // #colbreak()


  #pop.column-box(heading: "Заключение")[
    - Размер зёрен $#ce("Pt")$ определяет степень диффузии атомов $#ce("O2")$, и, как следствие, различную плотность вакансий кислорода в $#ce("Hf0.5Zr0.5O2")$ стабилизируя СЭ фазу в оксиде гафния. 
- Результаты указывают на возможность инжиниринга функциональных свойств ячеек сегнетоэлектрической памяти $#ce("Hf0.5Zr0.5O2")$  путем оптимизации технологического процесса.
// Предполагаемым механизмом влияния размера Pt зёрен является различная длина границ зёрен, прозрачных для атомов кислорода, и, как следствие, различная плотность вакансий кислорода в Hf0.5Zr0.5O2. Как известно, высокая плотность вакансий кислорода стимулирует стабилизацию орторомбической фазы в оксиде гафния. 
// Результаты указывают на возможность инжиниринга функциональных свойств ячеек сегнетоэлектрической памяти Hf0.5Zr0.5O2 путем оптимизации технологического процесса изготовления верхнего электрода.
  ]

  // #pop.column-box()[
  //   #bibliography("My_Library.bib")
  // ]

  // #pop.common-box(body:"asasdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd")
  #pop.common-box(
    body: bibliography("bibliography.bib", style: "nature")
  )
  
  

//   #pop.bibliography-box(
//     "My_Library.bib",
// )

])

// #pop.bottom-box()[
//   Bottom Boxes are displayed at the bottom of a page.
//   #linebreak()
// ]


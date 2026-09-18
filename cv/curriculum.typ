// --- CONFIGURAZIONE ---

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("Libertinus Serif", "Times New Roman"), size: 12pt, lang: "en")
#set par(leading: 0.55em, justify: true)
#set list(indent: 0.5em, spacing: 0.8em)

#let link-color = rgb("0563C1")
#let muted = rgb("555555")

#let styled-link(target, body) = link(target)[#underline[#text(fill: link-color)[#body]]]

// --- FUNZIONI DI LAYOUT ---

#let contact(label, value, target) = [
  #text(weight: "bold", size: 9.5pt)[#label] #linebreak()
  #text(size: 9.5pt)[#styled-link(target, value)]
]

#let section(title) = [
  #v(1.2em)
  #text(weight: "bold", size: 14pt, tracking: 0.5pt)[#upper(title)]
  #line(length: 100%, stroke: 0.5pt + rgb("888888"))
  #v(0.3em)
]

#let entry(title, subtitle, date, url: none) = [
  #block(width: 100%, breakable: false)[
    #grid(
      columns: (1fr, auto),
      column-gutter: 1em,
      align(left)[#text(weight: "bold", size: 13pt)[#title]],
      align(right)[#text(style: "italic", size: 12pt, fill: muted)[#date]]
    )
    #v(0.1em)
    #text(size: 12pt)[#subtitle]
    #if url != none [
      #v(0.2em)
      #text(size: 10pt)[→ #styled-link(url, url)]
    ]
    #v(0.7em)
  ]
]


// --- CONTENUTO DEL CV ---

// Header
#place(top + right)[
  #block(width: 2.4cm)[
    #align(center)[
      #stack(dir: ttb, spacing: 3pt,
        image("qrcode.svg", width: 1.8cm),
        text(size: 6.5pt, fill: muted)[Scan for portfolio]
      )
    ]
  ]
]
#align(center)[
  #stack(dir: ttb, spacing: 14pt,
    text(size: 24pt, weight: "bold", tracking: 1pt)[Damiano Moscardini],
    text(size: 13pt, weight: "medium", fill: muted)[M.Sc. Physics Student at University of Pisa]
  )
  #v(0.7em)
  #block(width: 90%)[
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 2.5em,
      row-gutter: 0.9em,
      align: center + horizon,
      contact("Website", "https://damianomoscardini.page", "https://damianomoscardini.page"),
      contact("Email", "ciao@damianomoscardini.page", "mailto:ciao@damianomoscardini.page"),
      contact("GitHub", "https://github.com/damianomoscardini", "https://github.com/damianomoscardini"),
      contact("LinkedIn", "https://linkedin.com/in/damianomoscardini", "https://linkedin.com/in/damianomoscardini"),
    )
  ]
]

// Education

#section("Education")

#entry(
  "M.Sc. Physics (Quantum Computing and Technologies)",
  "University of Pisa", "2025 - 2028 (Expected)")

#entry(
  "B.Sc. Physics",
  "University of Pisa", "2021 - 2025")

#entry(
  "High School Diploma (Scientific)",
  "Liceo Scientifico Antonio Vallisneri, Lucca", "2015 - 2020")

// Selected Projects

#section("Selected Projects")

#entry(
  "3D-Printed Mach-Zehnder Interferometer",
  "A desktop-sized, 3D-printed Mach-Zehnder interferometer demonstrating wave interference. Fringe intensity is acquired via OPT101 photodiodes and a Siglent SDS824XHD oscilloscope, with the phase shift induced thermally via a Kapton heater.",
  "2026",
  url: "https://github.com/damianomoscardini/3d-printed-mzi"
)

#entry(
  "QSVM Encoding Benchmark",
  "A benchmarking framework designed to compare quantum data-encoding strategies for QSVM kernels against a classical RBF-kernel SVM baseline, across datasets of varying geometry, using several dedicated metrics alongside standard accuracy.",
  "2026",
  url: "https://github.com/damianomoscardini/qsvm-encoding-benchmark"
)

#entry(
  "3D-Printed \"Single-Photon\" Diffraction Experiment (B.Sc. thesis)",
  "A low-cost, 3D-printed experimental setup demonstrating diffraction in the \"single-photon\" regime, using an attenuated laser and photographic film as a low-cost \"single-photon\" detector to record the pattern.",
  "2025",
  url: "https://github.com/damianomoscardini/3d-printed-single-photon-diffraction"
)

#pagebreak(weak: true)

// Skills

#section("Skills")

#block(width: 100%)[
  #grid(
    columns: (150pt, 1fr),
    gutter: 12pt,
    text(weight: "bold")[Programming & Software:], [Python (PennyLane, PyVisa) • MATLAB • LabVIEW • LaTeX • Typst • AutoCAD],
    text(weight: "bold")[Hardware & Tools:], [3D Printing • Arduino • Raspberry Pi],
    text(weight: "bold")[Languages:], [Italian (native) • English (C1 - First Certificate)]
  )
]

// Experience

#section("Experience")

#entry(
  "Mathematics and Physics Tutor",
  "Provide continuous academic support for high school and university students. Develop personalized teaching methodologies and preparation strategies for national exams and university-level courses. Collaborated with Centro Yep! (Lucca, 2020 - 2023) and continued with private tutoring.",
  "2020 - Present"
)

// Conferences
#section("Conferences")

#entry(
  "IEEE QCE26",
  "International Conference on Quantum Computing & Engineering | Attendee and Student Volunteer",
  "Toronto, 2026"
)

#entry(
  "CISF26",
  "Italian Conference of Physics Students | Attendee and Oral Presenter",
  "Rome, 2026"
)

#entry(
  "SIPE25",
  "Spanish Italian Physics Exchange | Attendee and Oral Presenter",
  "Bari, 2025"
)

#entry(
  "LoT25",
  "Lights of Tuscany | Attendee and Poster Presenter",
  "Pisa and Florence, 2025"
)


// Interests
#section("Interests")
- *3D Printing:* Custom DIY projects, prototyping, lab equipment design and everyday functional prints.
- *Piano:* 11 years of practice.
#v(0.7em)

#v(2.5em)
#align(right)[
  #text(size: 10pt, style: "italic", fill: muted)[
    Last updated: #datetime.today().display("[month repr:long] [day], [year]")
  ]
]
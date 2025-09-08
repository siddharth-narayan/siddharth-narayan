#import "@preview/basic-resume:0.2.8": *
#import "lib.typ": *

// Put your personal information here, replacing mine
#let name = "Siddharth Narayan"
#let location = "San Diego, CA"
#let email = "siddharth.060605@gmail.com"
#let github = "github.com/siddharth-narayan"
#let linkedin = "linkedin.com/in/stuxf"
#let phone = "+1 (508) 948-7917"
#let personal-site = "novaphaze.com"

#let languages = (
  (name: "C/C++", images: ("assets/icons/c/c-diamond.svg", "assets/icons/cplusplus/cplusplus-original.svg")),
  (name: "Rust", images: ("assets/icons/rust/rust-original.svg",)),
  (name: "Java", images: ("assets/icons/java/java-original.svg",)),
  (name: "Python", images: ("assets/icons/python/python-original.svg",)),
  (name: "JavaScript", images: ("assets/icons/javascript/javascript-original.svg",)),
  (
    name: "HTML CSS",
    images: (
      "assets/icons/html5/html5-original.svg",
      "assets/icons/css3/css3-original.svg",
    ),
  ),
  (name: "Svelte", images: ("assets/icons/svelte/svelte-original.svg",)),
  (name: "React", images: ("assets/icons/react/react-original.svg",)),
  (name: "Nix", images: ("assets/icons/nixos/nixos-original.svg",)),
)

#let technologies = (
  (name: "Git", images: ("assets/icons/git/git-original.svg",)),
  (name: "Linux", images: ("assets/icons/linux/linux-original.svg",)),
  (name: "Docker", images: ("assets/icons/docker/docker-plain.svg",)),
  (name: "NginX", images: ("assets/icons/nginx/nginx-original.svg",)),
  (name: "Ghidra", images: ("assets/icons/ghidra-logo.png",)),
)

#show: resume.with(
  author: name,
  email: email,
  github: github,
  phone: phone,
  personal-site: personal-site,
  accent-color: color.rgb(255, 90, 0),
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

== Education

#edu(
  institution: "University of Texas at Dallas",
  location: "Richardson, TX",
  dates: dates-helper(start-date: "Aug 2023", end-date: "May 2027"),
  degree: "Bachelor's in Computer Science",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true,
)
- Relevant Coursework: Compiler Design, Operating Systems Concepts, Software Engineering, Advanced Algorithm Design, Computer Architecture, Data Structures, Linear Algebra

== Projects
*Post Quantum Cryptography* -- Enabled Post Quantum Functionality on a VPN (#link("https://github.com/SoftEtherVPN/SoftEtherVPN/pull/2022", [SoftEtherVPN\#2022]))
- Researched and integrated oqs-provider into the build process of SoftEtherVPN, integrating it with CMake automatically to include post quantum functionality by default on any platform

*AI-Flow* -- A UI for HuggingFace ML Models (#link("https://github.com/siddharth-narayan/aiflow", [github.com/siddharth-narayan/aiflow]))
- Leveraged Nvidia's Triton Inference Server to make many AI-centric workflows and tasks as simple as selecting inputs and outputs, and a model
- Built a frontend node-based editor to allow for the flow of data across any HuggingFace models.

*ZxForms* -- Simple Zod-based Form Builder
(#link("https://github.com/siddharth-narayan/zxforms", [github.com/siddharth-narayan/zxforms]))

- Built an intuitive, simple form builder that generates a fully featured, automatically validated form from a single Zod schema
- Built in both React and Svelte, and made incredibly customizable and reactive

*ML Market Predictor*
(#link("https://github.com/siddharth-narayan/quant", [github.com/siddharth-narayan/quant]))
- A project purely for learning about ML approaches
- Neural Net approach, trained on many companies
- Predict if the stock price of a company will go up or down using data from yahoo finance

== Skills
*Programming Languages*
#set par(justify: false)
#for language in languages [
  #tech(language)
]

*Technologies*

#for technology in technologies [
  #tech(technology)
]

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
  (name:"C/C++", images:("assets/icons/cplusplus/cplusplus-original.svg","assets/icons/c/c-diamond.svg",)),
  (name:"Rust", images:("assets/icons/rust/rust-original.svg",)),
  (name:"Java", images:("assets/icons/java/java-original.svg",)),
  (name:"Python",images:("assets/icons/python/python-original.svg",)),
  (name: "JavaScript", images: ("assets/icons/javascript/javascript-original.svg",)),
  (name: "HTML CSS", images: (
    "assets/icons/html5/html5-original.svg",
    "assets/icons/css3/css3-original.svg",
  )),
  (name:"Svelte", images:("assets/icons/svelte/svelte-original.svg",)),
  (name:"React", images:("assets/icons/react/react-original.svg",)),
  (name: "Nix", images: ("assets/icons/nixos/nixos-original.svg",))
)

#let technologies = (
  (name:"Git", images:("assets/icons/git/git-original.svg",)),
  (name: "Docker", images: ("assets/icons/docker/docker-plain.svg",)),
  (name:"NginX",images:("assets/icons/nginx/nginx-original.svg",)),
)

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  // location: location,
  email: email,
  github: github,
  // linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#ff7b79",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "University of Texas at Dallas",
  location: "Richardson, TX",
  dates: dates-helper(start-date: "Aug 2023", end-date: "May 2027"),
  degree: "Bachelor's in Computer Science",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  consistent: true
)
- Relevant Coursework: Compiler Design, Operating Systems Concepts, Software Engineering, Advanced Algorithm Design, Computer Architecture, Data Structures, Linear Algebra

== Projects
*ZxForms* -- Simple Zod-based Form Builder 
#link("https://github.com/siddharth-narayan/zxforms", [github.com/siddharth-narayan/zxforms])

- Built an intuitive, simple form builder that generates a fully featured form from a single Zod schema



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
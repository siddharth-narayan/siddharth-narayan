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
  (name: "JavaScript", images: ("assets/icons/javascript/javascript-original.svg",)),
  (name:"Python",images:("assets/icons/python/python-original.svg",)),
  (name:"C/C++", images:("assets/icons/cplusplus/cplusplus-original.svg","assets/icons/c/c-diamond.svg",)),
  (name:"Rust", images:("assets/icons/rust/rust-original.svg",)),
  (name: "HTML CSS", images: (
    "assets/icons/html5/html5-original.svg",
    "assets/icons/css3/css3-original.svg",
  )),
  (name: "Nix", images: ())
)

#let technologies = (
  (name: "Docker", images: ("assets/icons/docker/docker-plain.svg",)),
  (name:"Python",images:("assets/icons/nginx/nginx-original.svg",)),
  (name:"C/C++", images:("assets/icons/cplusplus/cplusplus-original.svg","assets/icons/c/c-diamond.svg",)),
  (name:"Rust", images:("assets/icons/rust/rust-original.svg",)),
  (name: "HTML CSS", images: (
    "assets/icons/html5/html5-original.svg",
    "assets/icons/css3/css3-original.svg",
  )),
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
- Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci

== Projects

#project(
  name: "Hyperschedule",
  // Role is optional
  role: "Maintainer",
  // Dates is optional
  dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
  // URL is also optional
  url: "hyperschedule.io",
)
- Maintain open-source scheduler used by 7000+ users at the Claremont Consortium with TypeScript, React and MongoDB
  - Manage PR reviews, bug fixes, and coordinate with college for releasing scheduling data and over \$1500 of yearly funding
- Ensure 99.99% uptime during peak loads of 1M daily requests during course registration through redundant servers



== Skills
*Programming Languages*

#for language in languages [
  #tech(language)
]

*Technologies*

#for technology in technologies [
  #tech(technology)
]
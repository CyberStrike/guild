# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@job = Job.create(
  { id: 1337,
    archived: true,
    title: 'Front-End Developer',
    company_name: 'SurveyMonkey',
    location: 'Wynwood, FL',
    remote: true,
    created_at: 2.days.ago,
    terms: 'full-time',
    link: nil,
    description: "## About SurveyMonkey
    SurveyMonkey is the world's leading provider of web-based survey solutions, but there's really much more to us than that. We're a smart, passionate group of people who work hard to deliver the best survey experience on the planet, period. We do this because we believe everyone deserves easy access to the insights and information they need to make better, more informed decisions.

    We're also proud to admit that despite our incredible growth over the past 10 years, we refuse to grow up. We are still small and nimble; everyone plays an impactful role; and when we say good ideas can come from anyone, we mean it.

    SurveyMonkey is trusted by millions of customers, including 99% of the Fortune 500, as well as other businesses, academic institutions and organizations of all shapes and sizes. In any given month, we collect more than 40 million survey responses from people in all countries around the world.

    If this sounds like home to you, and you're ready to make your work matter to millions, we'd love to meet you.

    ## Responsibilities
    - Turn mock-ups and designs into full pages complete with CSS, HTML, and JavaScript
    - Develop functional prototypes from wireframes and mockups, and create proper documentation
    - Work with stakeholders to understand and document software requirements, and ensure application UI meets functional requirements
    - Develop and optimize front-end UI functionality to ensure web applications are rendered consistently in cross-browser environment
    - Collaborate with stakeholders and software engineers to refine and improve the user experience
    - Work closely with a team of engineers in an agile development environment to create full, working, enterprise-scale web service applications
    - Partner with peers in software engineering to ensure that interactive techniques and technologies translate through to world class products and services
    - Follow industry trends with regard to front-end technologies and techniques

    ## Qualifications
    - Demonstrable experience building world-class, consumer web application interfaces
    - Expert JavaScript/HTML/CSS/Ajax coding skills
    -Strong command of web standards, CSS-based design, cross-browser compatibility
    - Strong ability to take mockups and create high-performance web pages that meet design and technical specifications
    - In-depth understanding of common web application UI issues and challenges, web UI best practices and emerging trends and technologies
    - A passion for debugging and code optimization
    - Good understanding of web technologies (HTTP, Apache) and familiarity with Windows/Unix/Linux
    - Strong knowledge and experience with custom application development and agile SDLC
    - Great organizational skills, and an attention to detail, consistency, and simplicity
    - Logical team-player, with excellent communication skills and ability to work effectively on multiple projects under a tight schedule

    At SurveyMonkey, we offer competitive salaries, medical/dental benefits, PTO, 401k, paid holidays, and equity compensation.

    SurveyMonkey is an equal opportunity employer.

    ## How To Apply

    Go to our website and fill out the form. Or, email susan@ourwebsite.com with your resume"
  }
)

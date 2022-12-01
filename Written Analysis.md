# Pewlett-Hackard-Analysis

## Overview of the analysis:  
### Explain the purpose of this analysis.

The purpose of this analysis was to take a look at which positions will need to be filled in the near future from upcoming retirements or "silver tsunami".

## Results: 
### Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

- The retirement_titles table holds all employee titles who were born between January 1, 1952 and December 31, 1955 but there are duplicate entries for some employees because some have switched titles over the years. 
- In unique_titles, looking only at employees with their most recent title, more than 72,000 roles will need to be filled.
- Two-thirds of retiring_titles that need to be filled are equally the senior staff and senior engineers.
- mentorship_eligibilty shows that, of these impending openings, only ~1,500 employees are eligible for mentorship with ~700 of them being senior staff and senior engineers.![image](https://user-images.githubusercontent.com/111719953/205154825-c94586e6-3f35-4f74-9dc1-99e5e94fcb5f.png)

## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- The query "SELECT COUNT (title) FROM unique_titles;" shows that 72,458 roles are to be filled.

![image](https://user-images.githubusercontent.com/111719953/205159867-6e21f843-9ac3-462d-a7b0-68a5e1182ce3.png)

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
- The query below shows how many eligible mentors there are by title. Most mentors will need to handle up to 50 employees. This does not include Senior Engineers as they would need to handle about 150 employees. Based on these findings, I believe that there are not enough retirement-ready employees in the departments to mentor the next generation.
-"SELECT COUNT (title), title FROM mentorship_eligibility GROUP BY title ORDER BY count DESC;"

![image](https://user-images.githubusercontent.com/111719953/205159608-3a13f885-8c7d-41d6-a5e4-8a8ce8699b0b.png)

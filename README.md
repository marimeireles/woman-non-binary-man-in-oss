# Women, non-binary and men in OSS communities

The analysis was conducted by examining the data collected from the GitHub Open Source survey, which included responses from contributors to various OSS communities. The survey captured information on demographics, engagement levels, and experiences of individuals involved in OSS projects. In particular, I analyzed the data pertaining to gender dynamics among contributors, including women, non-binary, and men.

**Participation by gender**
![Paticipation by gender](/graphs/participation_by_gender.png)

The data obtained from the analysis revealed a significant gender disparity in OSS communities. Out of the 3,551 respondents who declared their gender identity in the questionnaire, a vast majority, 3,387 (95.4%), identified as men, while only 125 (3.52%) identified as women, and 39 (1.08%) identified as non-binary.

To gain a deeper understanding of the engagement levels of women in OSS communities, I first examined the various types of participation reported in the survey data.

## Participation Type

* Follow updates and discussions of open source projects;
* Use open source applications; 
* Use open source software as dependencies in other projects; 
* Participate in open source software development (including making feature requests, filing bugs, contribution of documentation or code, project maintenance, etc.). The participants could make multiple selections. This is what I found:

![Participation type by gender](graphs/participation_type_per_gender.png)

The data showed that a higher percentage of men (74.3%) and non-binary individuals (76%) identified as developers and reported contributing to OSS projects, compared to women (59.2%). This suggests a significant disparity in terms of active participation in OSS development, with men and non-binary individuals being more engaged in this aspect of the community. Additionally, the data showed that women tended to follow updates from the OSS community to a lesser extent, with only 64% of women reporting that they do so, compared to 94.4% of men. This indicates a lower level of direct engagement and interaction with the OSS community among women, which may contribute to the observed differences in contributions.

The findings highlight a disparity in the level of direct engagement with OSS communities based on gender identity. While women, men, and non-binary individuals may make use of OSS applications, there appears to be a lower level of participation among women in terms of contributing as developers and following community updates. This may be influenced by various factors, including societal norms, cultural expectations, and gender biases that may limit women's opportunities and involvement in OSS communities.

## Future Contribution Interest

* Very interested; 
* Somewhat interested; 
* Not too interested; 
* Not at all interested. 

![Future contribution interest](graphs/future_contribution_interest.png)

Approximately 70% of women reported an intention to contribute, which was similar to the level of interest expressed by non-binary individuals. However, this percentage was still lower than that of men, with 87% expressing an interest in contributing to OSS.

## Formal Education

* Less than secondary (high) school; 
* Secondary (high) school graduate or equivalent; 
* Some college and no degree
* Vocational/trade program or apprenticeship 
* Bachelor's degree, master's degree or doctorate (Ph.D.) other advanced degree (e.g. M.D., J.D.).

![Formal education per gender](graphs/formal_education_gender.png)

I pondered whether formal education could potentially hinder the participation and presence of women in open source software (OSS) communities. Analysis of the data revealed that while women tend to possess lower levels of formal education compared to men and that might be a relevant factor for it. Due to the persistent need for women to [frequently prove themselves](http://www.pewsocialtrends.org/2018/01/09/women-and-men-in-stem-often-at-odds-over-workplace-equity) and the prevalence of impostor syndrome, these factors may be influential in explaining why women engage less in OSS communities relative to men. Interestingly, individuals who identify as non-binary exhibited the lowest level of formal education, yet this does not appear to impede their level of participation in OSS communities, as their engagement rates are comparable to those of men.

## Employment Status

* Employed full time; 
* Employed part time; 
* Full time student; 
* Temporarily not working or retired/permanently not working (e.g. due to disability);
* Not working at the moment.

![Employment status by gender](graphs/employment_status.png)

Upon analyzing the data, it was observed that the engagement levels of women and men in OSS communities were quite similar, despite any potential differences in their work or study commitments, indicating that time constraints may not be the primary factor influencing women's engagement in OSS communities. However, this research doesn't capture informal work time required by informal work, they might be caught up by [double burdens](https://en.wikipedia.org/wiki/Double_burden)[1](http://conconi.ulb.be/db.pdf), for example. But it's not possible to know.

## Age at First Computer with Internet Access

* Younger than 13 years old;
* 13 - 17 years old; 
* 18 - 24 years old; 
* 25 - 45 years old;
* Older than 45 years old.

![Age at first computer with internet access](graphs/age_at_first_computer_with_internet_access.png)

There was no significant correlation between the time participants had access to computers with internet access and their gender identity. The graphs for both women and men showed similar patterns of computer usage.

## Age by gender


* 17 or younger; 
* 18 to 24 years; 
* 25 to 34 years; 
* 35 to 44 years; 
* 45 to 54 years; 
* 55 to 64 years; 
* 65 to 74 years; 
* 75 years or older.

![Age per gender](graphs/age_gender.png)

The data suggests that age may not be a significant factor in explaining the lower engagement of women in OSS communities.

## Conclusion

Efforts to promote diversity, inclusivity, and equal opportunities for women in computing and OSS communities are crucial. Creating a welcoming and inclusive environment, implementing codes of conduct that ensure safety and respect, and providing supportive measures such as mentorship programs and community events can help address barriers and promote greater engagement of women in OSS communities.

It is important to recognize that women, non-binary individuals, and men have similar levels of interest in contributing to OSS, and that women's lower participation may be due to systemic factors rather than lack of interest. Fostering a culture of inclusivity, empathy, and respect, and actively promoting and supporting women's participation in OSS communities through various initiatives, can help increase their representation and contribute to building a more equitable and diverse OSS ecosystem.

Continued research, advocacy, and collective efforts from the OSS community, organizations, and individuals are needed to dismantle historical disincentives, overcome barriers, and create a more inclusive and welcoming environment for all individuals, regardless of gender identity, to actively participate, contribute, and thrive in OSS communities. By promoting diversity and inclusivity in OSS, we can harness the full potential of a diverse talent pool and foster innovation and success in open-source projects.

## Development

RStudio was used to visualize the data.

For graph visualization [plotyly](https://plot.ly/) was used.

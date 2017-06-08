# Inquiry
  A data collection platform for the common good


## Goals
  - Open source
  - Provide a API for creating questions and gathering responses
  - Provide a common dataset
  - Provide open datasets
  - Provide a easy to use API
  - Provide users complete control over what they choose to share


## Stories
  - STORY: Users should be able to ask Questions

  - STORY: Questions should be clear
    ie:
      * what color is the sky
      * what do you like better, crunchy peanut butter or smooth peanut butter

  - STORY: Questions should have instructions on how to answer the question
  - STORY: Questions should have a validate-able response format.

  - STORY: Users should be able to respond to a question
  - STORY: Responses should answer the question

  - STORY: Users should have tags
  - STORY: Questions should have tags
  - STORY: Responses should have tags
  - STORY: Tags will provide context
  - STORY: All User.tags will be pushed into Response.tags at time of Response


# Relationships
    Question
      :has_many Responses
      :has_many Tags

    Response
      :belongs_to question
      :belongs_to user
      :has_many Tags

    User
      :has_many Questions
      :has_many Responses
      :has_many Tags



# Data collection for research
  - Data researchers should provide data collection Goals
    Who they want to respond
    What they want responses on or about
    Where the data will be stored
    When they need the data by
    How this data will be used

# load packages –---------------------------------------------------------------

library(ghclass)
library(tidyverse)

# load data –-------------------------------------------------------------------

roster <- read_csv("___.csv")

# create hw-1 ------------------------------------------------------------------

assignment <- "hw-1"

org_create_assignment(
  org = org,
  repo = paste0(assignment, "-", roster$github_name),
  user = roster$github_name,
  source_repo = paste0(org, "/", assignment)
)

# create lab-1 -----------------------------------------------------------------

assignment <- "lab-1"

org_create_assignment(
  org = org,
  repo = paste0("lab-1", "-", roster$team_name),
  user = roster$github_name,
  team = roster$team_name,
  source_repo = paste0(org, "/", assignment)
)

# clone hw-1 repos -------------------------------------------------------------

hw1_repos <- org_repos(org, "hw-1")
local_repo_clone(
  hw01_repos, 
  local_path = "hw1-submissions"
)

# get hw-1 stats ---------------------------------------------------------------

org_repo_stats(org, filter = "hw-1")

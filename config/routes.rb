Rails.application.routes.draw do

  root 'admins#index'
  resources:admins
  resources:instructors
  resources:students
  resources:courses
  resources:cohorts
end

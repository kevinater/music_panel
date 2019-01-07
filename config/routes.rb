Rails.application.routes.draw do
  # get 'cohorts/index'
  # get 'cohorts/show'
  # get 'cohorts/new'
  # get 'cohorts/create'
  # get 'cohorts/update'
  # get 'cohorts/edit'
  # get 'cohorts/destroy'
  # get 'courses/index'
  # get 'courses/show'
  # get 'courses/new'
  # get 'courses/create'
  # get 'courses/update'
  # get 'courses/edit'
  # get 'courses/destroy'
  # get 'instructors/index'
  # get 'instructors/show'
  # get 'instructors/new'
  # get 'instructors/create'
  # get 'instructors/update'
  # get 'instructors/edit'
  # get 'instructors/destroy'
  # get 'students/index'
  # get 'students/show'
  # get 'students/new'
  # get 'students/create'
  # get 'students/update'
  # get 'students/edit'
  # get 'students/destroy'
  # get 'admins/index'
  # get 'admins/edit'
  # get 'admins/update'
  # get 'admins/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources:admins
  resources:instructors
  resources:students
  resources:courses
  resources:cohorts
end

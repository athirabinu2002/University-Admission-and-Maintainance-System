"""echarger_locator URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from university_app import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('',views.index),
    path('index/',views.index),
    path('login_action/', views.sign_in_process),
    path('student_action/', views.student_action),
    path('User_registration/', views.User_registration),
    path('admin_home/', views.admin_home),
    path('college_home/', views.college_home),
    path('student_home/', views.student_home),
    path('university_home/', views.university_home),
    path('admin_logout/', views.admin_logout),
    path('user_logout/',views.user_logout),
    path('sign_in/',views.sign_in),
    path('add_university/',views.add_university),
    path('display_district/', views.display_district, name='display_district'),

    path('save_university/', views.save_university),
    path('university_list/', views.university_list),
    path('edit_university/<int:id>', views.edit_university),
    path('update_university/<int:id>', views.update_university),
    path('delete_university/<int:id>', views.delete_university),

    #Complaints
    path('view_complaints/', views.view_complaints),
    path('replied_list/', views.replied_list),
    path('adm_reply_complaint/<int:id>', views.adm_reply_complaint),
    path('add_reply/<int:id>', views.add_reply),


   #feedback
    path('view_feedback/', views.view_feedback),
    path('feedback_replied_list/', views.feedback_replied_list),
    path('adm_reply_feedback/<int:id>', views.adm_reply_feedback),

    #  Customer
    path('complaint/', views.Complaint_frm),
    path('save_complaint/', views.save_complaint),
    path('delete_complaint/<int:id>', views.delete_complaint),

    path('feedback/', views.feedback_frm),
    path('save_feedback/', views.save_feedback),
    path('delete_feedback/<int:id>', views.delete_feedback),

    path('add_college/', views.add_college),
    path('save_college/', views.save_college),
    path('college_list/', views.college_list),
    path('edit_college/<int:id>', views.edit_college),
    path('update_college/<int:id>', views.update_college),
    path('delete_college/<int:id>', views.delete_college),

    path('add_course/', views.add_course),
    path('save_course/', views.save_course),
    path('edit_course/<int:id>', views.edit_course),
    path('update_course/<int:id>', views.update_course),
    path('delete_course/<int:id>', views.delete_course),
    

    path('add_batch/', views.add_batch),
    path('save_batch/', views.save_batch),
    path('delete_batch/<int:id>', views.delete_batch),
  
    path('offer_courses/', views.offer_courses),
    path('save_offer_course/', views.save_offer_course),
    path('view_offered_courses/', views.view_offered_courses),
    path('edit_course_offer/<int:id>', views.edit_course_offer),
    path('update_course_offer/<int:id>', views.update_course_offer),
    path('delete_course_offer/<int:id>', views.delete_course_offer),
    path('display_offered_courses/', views.display_offered_courses),

    path('add_notification/', views.add_notification),
    path('display_batch/', views.display_batch, name='display_batch'),
    path('save_notification/', views.save_notification),
    path('view_notification/', views.view_notification),
    path('edit_notification/<int:id>', views.edit_notification),
    path('update_notification/<int:id>', views.update_notification),
    path('delete_notification/<int:id>', views.delete_notification),

    path('candidate_details/', views.candidate_details),
    path('save_candidate/', views.save_candidate),
    path('serach_notification/', views.serach_notification),
    path('search_notification_result/', views.search_notification_result),
    path('view_notification', views.view_notification),

    path('display_college/', views.display_college, name='display_college'),
    path('display_offered_course_list/', views.display_offered_course, name='display_offered_course_list'),
    
    path('view_colleges/<int:id>', views.view_colleges),
    path('view_course_offered/<int:id>', views.view_course_offered),
    path('view_notifications/<int:id>/<int:college_id>', views.view_notifications),

    path('apply_notification/<int:id>/<int:college_id>', views.apply_notification),

    path('save_application/<int:id>/<int:college_id>', views.save_application),
    path('application_payment/<int:id>', views.application_payment),
    path('save_application_payment/<int:id>', views.save_application_payment),
    path('candidate_applications/', views.candidate_applications),
    path('change_password/', views.change_password),
    path('update_password/', views.update_password),

   path('check_username/', views.check_username, name='check_username'),
# College
     path('applications/', views.applications),
     path('view_candidate/<int:id>', views.view_candidate),
     path('approve_application/<int:id>', views.approve_application),
     path('reject_application/<int:id>', views.reject_application),
     path('approved_student_list/', views.approved_student_list),
     path('offered_course_list/', views.offered_course_list),
     path('admission_notifications/', views.admission_notifications),
     path('admin_college_List/', views.admin_college_List),
     path('admin_view_course_offered/<int:id>', views.admin_view_course_offered),
     path('admin_college_list_by_university/', views.admin_college_list_by_university),
     path('admin_college_list_by_university/', views.admin_college_list_by_university),
     path('student_List/', views.student_List),
     path('display_batch_list/', views.display_batch_list, name='display_batch_list'),
    path('student_list_filter/', views.student_list_filter),
    path('adm_view_candidate/<int:id>', views.adm_view_candidate),

    path('add_hostel_details/', views.add_hostel_details),
    path('hostel_list/', views.hostel_list),
    path('save_hostel/', views.save_hostel),
    path('edit_hostel/<int:id>', views.edit_hostel),
    path('update_hostel/<int:id>', views.update_hostel),
    path('delete_hostel/<int:id>', views.delete_hostel),

    path('add_bus_details/', views.add_bus_details),
    path('bus_list/', views.bus_list),
    path('save_bus/', views.save_bus),
    path('edit_bus/<int:id>', views.edit_bus),
    path('update_bus/<int:id>', views.update_bus),
    path('delete_bus/<int:id>', views.delete_bus),

    path('view_hostel/<int:id>', views.view_hostel),
    path('view_bus/<int:id>', views.view_bus),
    path('university_student_List/', views.university_student_List), 
    path('university_student_list_filter/', views.university_student_list_filter), 
    path('uni_view_candidate/<int:id>', views.uni_view_candidate),


    path('college_student_List/', views.college_student_List), 
    path('college_student_list_filter/', views.college_student_list_filter), 
    path('col_view_candidate/<int:id>', views.col_view_candidate),

]
if settings.DEBUG:
    urlpatterns+=static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
    urlpatterns+=static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)

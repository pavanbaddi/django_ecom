from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login, logout
from django.contrib import messages
from django.urls import reverse
# Create your views here.
def login_form(request):
    info = {}
    return render(request, 'login/form.html', info)

def login_user(request):

    user = authenticate(request, username=request.POST["username"], password=request.POST["password"])

    if user is not None:
        login(request, user=user)
        messages.add_message(request,messages.SUCCESS, f"Welcome {user.first_name} {user.last_name} ")
        return redirect(reverse('shop:shop'))
    else:
        messages.add_message(request,messages.ERROR, f"Invalid username or password ")
        return redirect(reverse('login:form'))

def logout_user(request):
    logout(request)
    messages.add_message(request,messages.SUCCESS, f"Logout successfull ")
    return redirect(reverse('login:form'))
    

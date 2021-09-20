from django.shortcuts import redirect, render
from register.forms import RegisterForm
from django.contrib.auth.models import User
from django.contrib import messages
from django.urls import reverse

# Create your views here.
def register_form(request):
    info = {
        "form" : RegisterForm()
    }

    return render(request, 'register/form.html', info)

def register_user(request):

    info = {
        'form' : None
    }

    form = RegisterForm(request.POST)

    print(form.errors.as_data())
    # breakpoint()
    # for i in form.errors:
    #     print("i", i)
    #     breakpoint()
    #     for j in form.i.errors:
    #         print("j", j)


    if form.is_valid():
        query = {
            "username" : form.cleaned_data["username"],
            "email" : form.cleaned_data["email"],
            "password" : form.cleaned_data["password"],
            "first_name" : form.cleaned_data["first_name"],
            "last_name" : form.cleaned_data["last_name"],
        }
        User.objects.create_user(**query)
        messages.add_message(request, messages.SUCCESS, "User registered successfully")

        return redirect(reverse('register:form'))
    else:
        messages.add_message(request, messages.ERROR, "Please fill all the fields.")
        info['form'] = form
        return render(request, 'register/form.html', info)
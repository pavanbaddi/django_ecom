from django import forms
from django.contrib.auth.models import User

class RegisterForm(forms.Form):
    username = forms.CharField(max_length=255, initial="")
    first_name = forms.CharField(max_length=255 , initial="" )
    last_name = forms.CharField(max_length=255, initial="")
    email = forms.CharField(max_length=255, initial="")
    password = forms.CharField(max_length=255, initial="")
    confirm_password = forms.CharField(max_length=255, initial="")

    def clean_username( self ):
        username = self.cleaned_data["username"]

        count = User.objects.filter(username=username).count()

        if count > 0:
            raise forms.ValidationError(f" The username {username} is already taken. Please choose something else. ")

        return username

    def clean_email( self ):
        email = self.cleaned_data["email"]

        count = User.objects.filter(email=email).count()
        if count > 0:
            raise forms.ValidationError(f" The email {email} is already taken. Please choose something else. ")

        return email

    def clean_confirm_password( self ):
        password = self.cleaned_data["password"]
        confirm_password = self.cleaned_data["confirm_password"]


        if password != confirm_password:
            raise forms.ValidationError(f" The confirm password did not match. ")

        return confirm_password


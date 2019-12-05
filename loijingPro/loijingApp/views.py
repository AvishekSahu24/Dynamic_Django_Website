from django.shortcuts import render, redirect, render_to_response
from django.contrib import messages
from django.http import HttpResponseRedirect
from .models import *

# Create your views here.
# {{ interest.interest }}
def home(request):
    EntrepreneurshipLoaninterest = EntrepreneurshipLoan.objects.all()[0]
    BusinessExpansionLoaninterest = BusinessExpansionLoan.objects.all()[0]
    PersonalCommercialVehicleLoaninterest = PersonalCommercialVehicleLoan.objects.all()[0]
    ServicePensionloaninterest = ServicePensionloan.objects.all()[0]
    GoldLoaninterest = GoldLoan.objects.all()[0]
    MachineryLoaninterest = MachineryLoan.objects.all()[0]
    LoanAgainstPropertyinterest = LoanAgainstProperty.objects.all()[0]
    Agriculturalloaninterest = Agriculturalloan.objects.all()[0]
    FisheryPiggeryPoultryLoaninterest = FisheryPiggeryPoultryLoan.objects.all()[0]
    LoanReferencetoNationalizedBanksinterest = LoanReferencetoNationalizedBanks.objects.all()[0]
    EasyMonthlyInstallmentEMIinterest = EasyMonthlyInstallmentEMI.objects.all()[0]
    welcome = WELCOMETOLOIJINGFINANCE.objects.all()[0]
    # vision = vision.objects.all()[0]
    Companyvision = companyAim.objects.all()[0]
    work = Ourwork.objects.all()[0]
    why = whyChooseUs.objects.all()[0]
    mission = companyMis.objects.all()[0]
    memberone= memberOne.objects.all()
    membertwo= memberTwo.objects.all()
    memberthree= memberThree.objects.all()
    directorMessage = directorDesk.objects.all()[0]
    directorMessageTwo =directorDeskTwo.objects.all()[0]
    firstPhoto = carausalPhotoOne.objects.all()[0]
    secondPhoto = carausalPhotoTwo.objects.all()[0]
    thirdPhoto = carausalPhotoThree.objects.all()[0]

    context = {'EntrepreneurshipLoaninterest':EntrepreneurshipLoaninterest,
               'BusinessExpansionLoaninterest':BusinessExpansionLoaninterest,
               'PersonalCommercialVehicleLoaninterest':PersonalCommercialVehicleLoaninterest,
               'ServicePensionloaninterest':ServicePensionloaninterest,
               'GoldLoaninterest':GoldLoaninterest,
               'MachineryLoaninterest':MachineryLoaninterest,
               'LoanAgainstPropertyinterest':LoanAgainstPropertyinterest,
               'Agriculturalloaninterest':Agriculturalloaninterest,
               'FisheryPiggeryPoultryLoaninterest':FisheryPiggeryPoultryLoaninterest,
               'LoanReferencetoNationalizedBanksinterest':LoanReferencetoNationalizedBanksinterest,
               'EasyMonthlyInstallmentEMIinterest':EasyMonthlyInstallmentEMIinterest,
               'welcome':welcome,
               'Companyvision':Companyvision,
               'work':work,
               'why':why,
               'mission': mission,
               'memberone': memberone,
               'membertwo':membertwo,
               'memberthree':memberthree,
               'directorMessage':directorMessage,
               'directorMessageTwo':directorMessageTwo,
               'firstPhoto': firstPhoto,
               'secondPhoto': secondPhoto,
               'thirdPhoto': thirdPhoto,


               }


    return render(request, 'index.html', context)





def Apply(request):
    ChargesApplicable = Applicable.objects.all()

    context= {
        'ChargesApplicable': ChargesApplicable,

    }
    return render(request, 'applyLoan.html', context)


def error(request):


    return render(request, '404.html')


def contactUs(request):
    if request.method == 'POST':
      try:
          name = request.POST.get('name')
          phone = request.POST.get('phone')
          email =request.POST.get('email')
          subject = request.POST.get('subject')
          message =request.POST.get('message')

          contact =ContactUs()
          contact.name = name
          contact.phone = phone
          contact.email = email
          contact.subject =subject
          contact.message = message
          contact.save()



          messages.success(request, "Message successfully sent. Will contact you soon.")
          return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

      except:
          message.success(request, "Error. Please try again.")
          return  HttpResponseRedirect(request.META.get('HTTP_REFERER'))



def ApplyForLoan(request):
    if request.method == 'POST':
        try:
            name = request.POST.get('name')
            phone = request.POST.get('phone')
            altphone = request.POST.get('altphone')
            preaddress = request.POST.get('preaddress')
            peraddress = request.POST.get('peraddress')
            landmark = request.POST.get('landmark')
            occupation = request.POST.get('occupation')
            income = request.POST.get('income')
            product = request.POST.get('product')
            message = request.POST.get('message')

            apply = ApplyLoan()
            apply.name = name
            apply.phone = phone
            apply.altphone =altphone
            apply.preaddress = preaddress
            apply.peraddress = peraddress
            apply.landmark = landmark
            apply.occupation =occupation
            apply.income = income
            apply.product = product
            apply.message = message
            apply.save()




            messages.success(request ,"Message successfully sent. Will contact you soon.")
            return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

        except:
            messages.success(request, "Error. Please try again.")
            return  HttpResponseRedirect(request.META.get('HTTP_REFERER'))



def gallery(request):
    images = galleryImage.objects.all()

    context = {
        'images': images,

    }

    return render(request, 'gallery2.html', context)




def bad_request(request):
    response = render_to_response('404.html')
    response.status_code = 404
    return response


def bad_server(request):
    response = render_to_response('404.html')
    response.status_code = 500
    return response


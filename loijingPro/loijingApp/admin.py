from django.contrib import admin

# Register your models here.
from django.contrib.auth.models import Group, User

# Register your models here.
admin.site.unregister(Group)
admin.site.unregister(User)

from .models import *
admin.site.site_header= "Loijing Finance Administrator"

class ContactAdmin(admin.ModelAdmin):
    list_display = ["name", "phone","email","subject", "message","datetime"]
    search_fields = ['name','email', 'message', 'phone']
    class Meta:
        model = ContactUs

admin.site.register(ContactUs,ContactAdmin)


class ApplyLoanAdmin(admin.ModelAdmin):
    list_display = ["name","phone","altphone","preaddress", "peraddress", "landmark", "occupation", "income","product", "message"]
    search_fields = ["name","phone", "income","product"]
    class Meta:
        model =ApplyLoan

admin.site.register(ApplyLoan, ApplyLoanAdmin)


class EntrepreneurshipLoanAdmin(admin.ModelAdmin):
    list_display = ['interest']
    class Meta:
        model = EntrepreneurshipLoan
admin.site.register(EntrepreneurshipLoan, EntrepreneurshipLoanAdmin)


class BusinessExpansionLoanAdmin(admin.ModelAdmin):
    list_display = ['interest']
    class Meta:
        model = BusinessExpansionLoan
admin.site.register(BusinessExpansionLoan, BusinessExpansionLoanAdmin)


class PersonalCommercialVehicleLoanAdmin(admin.ModelAdmin):
    list_display = ['interest']
    class Meta:
        model = PersonalCommercialVehicleLoan
admin.site.register(PersonalCommercialVehicleLoan, PersonalCommercialVehicleLoanAdmin)


class ServicePensionloanAdmin(admin.ModelAdmin):
    list_display = ['interest']
    class Meta:
        model = ServicePensionloan
admin.site.register(ServicePensionloan, ServicePensionloanAdmin)


class GoldLoanAdmin(admin.ModelAdmin):
    list_display = ['interest']
    class Meta:
        model = GoldLoan
admin.site.register(GoldLoan, GoldLoanAdmin)


class MachineryLoanAdmin(admin.ModelAdmin):
    list_display = ['interest']
    class Meta:
        model = MachineryLoan
admin.site.register(MachineryLoan, MachineryLoanAdmin)


class LoanAgainstPropertyAdmin(admin.ModelAdmin):
    list_display = ['interest']
    class Meta:
        model = LoanAgainstProperty
admin.site.register(LoanAgainstProperty, LoanAgainstPropertyAdmin)


class AgriculturalloanAdmin(admin.ModelAdmin):
    list_display = ['interest']
    class Meta:
        model = Agriculturalloan
admin.site.register(Agriculturalloan, AgriculturalloanAdmin)


class FisheryPiggeryPoultryLoanAdmin(admin.ModelAdmin):
    list_display = ['interest']
    class Meta:
        model = FisheryPiggeryPoultryLoan
admin.site.register(FisheryPiggeryPoultryLoan, FisheryPiggeryPoultryLoanAdmin)


class LoanReferencetoNationalizedBanksAdmin(admin.ModelAdmin):
    list_display = ['interest']
    class Meta:
        model = LoanReferencetoNationalizedBanks
admin.site.register(LoanReferencetoNationalizedBanks, LoanReferencetoNationalizedBanksAdmin)


class EasyMonthlyInstallmentEMIAdmin(admin.ModelAdmin):
    list_display = ['interest']
    class Meta:
        model = EasyMonthlyInstallmentEMI
admin.site.register(EasyMonthlyInstallmentEMI, EasyMonthlyInstallmentEMIAdmin)



class WELCOMETOLOIJINGFINANCEAdmin(admin.ModelAdmin):
    list_display = ['welcome']
    class Meta:
        model = WELCOMETOLOIJINGFINANCE
admin.site.register(WELCOMETOLOIJINGFINANCE, WELCOMETOLOIJINGFINANCEAdmin)


class companyAimAdmin(admin.ModelAdmin):
    list_display = ['Companyvisioncontent']
    class Meta:
        model = companyAim
admin.site.register(companyAim, companyAimAdmin)



class workAdmin(admin.ModelAdmin):
    list_display = ['work']
    class Meta:
        model = Ourwork
admin.site.register(Ourwork, workAdmin)




class ApplicableAdmin(admin.ModelAdmin):
    list_display = ['ApplicableFor']
    class Meta:
        model = Applicable
admin.site.register(Applicable, ApplicableAdmin)

class whyChooseUsAdmin(admin.ModelAdmin):
    list_display = ['why']
    class  Meta:
        model = whyChooseUs
admin.site.register(whyChooseUs, whyChooseUsAdmin)

class companyMisAdmin(admin.ModelAdmin):
    list_display = ['mission']
    class Meta:
        model = companyMis
admin.site.register(companyMis, companyMisAdmin)

class galleryFilesAdmin(admin.ModelAdmin):
    list_display = ['galleryImage']
    class Meta:
        model = galleryImage
admin.site.register(galleryImage, galleryFilesAdmin)

class memberOneAdmin(admin.ModelAdmin):
    list_display = ['memberName','memberPosition','memberDescription']
    class Meta:
        model = memberOne
admin.site.register(memberOne,memberOneAdmin)

class memberTwoAdmin(admin.ModelAdmin):
    list_display = ['memberName','memberPosition','memberDescription']
    class Meta:
        model = memberTwo
admin.site.register(memberTwo,memberTwoAdmin)

class memberThreeAdmin(admin.ModelAdmin):
    list_display = ['memberName','memberPosition','memberDescription']
    class Meta:
        model = memberThree
admin.site.register(memberThree,memberThreeAdmin)

class directorMessageAdmin(admin.ModelAdmin):
    list_display = ['message']
    class Meta:
        model = directorDesk
admin.site.register(directorDesk,directorMessageAdmin)

class directorMessageTwoAdmin(admin.ModelAdmin):
    list_display = ['message']
    class Meta:
        model = directorDeskTwo
admin.site.register(directorDeskTwo,directorMessageTwoAdmin)


class frontPhotoOneAdmin(admin.ModelAdmin):
    list_display = ['title','imageCarausal']

    class Meta:
        model = carausalPhotoOne
admin.site.register(carausalPhotoOne,frontPhotoOneAdmin)

class frontPhotoTwoAdmin(admin.ModelAdmin):
    list_display = ['title','imageCarausal']

    class Meta:
        model = carausalPhotoTwo
admin.site.register(carausalPhotoTwo,frontPhotoTwoAdmin)

class frontPhotoThreeAdmin(admin.ModelAdmin):
    list_display = ['title','imageCarausal']

    class Meta:
        model = carausalPhotoThree
admin.site.register(carausalPhotoThree,frontPhotoThreeAdmin)

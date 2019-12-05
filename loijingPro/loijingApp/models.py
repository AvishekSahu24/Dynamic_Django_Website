from django.db import models
from ckeditor.fields import RichTextField

# Create your models here.

class ContactUs(models.Model):
    name = models.CharField(max_length=200, blank=True, null=True)
    phone = models.CharField(max_length=200, blank=True, null=True)
    email = models.CharField(max_length=200, blank=True, null=True)
    subject = models.CharField(max_length=200, blank=True, null=True)
    message = models.TextField(blank=True, null=True)
    datetime = models.DateTimeField(auto_now_add=True, auto_now=False)

    class Meta:
        verbose_name_plural = 'Contacts Us.'


class ApplyLoan(models.Model):
    name = models.CharField(max_length=200, blank=True, null=True)
    phone = models.CharField(max_length=200, blank=True,null=True)
    altphone =models.CharField(max_length=200, blank=True,null=True)
    preaddress = models.TextField(blank=True,null=True)
    peraddress = models.TextField(blank=True,null=True)
    landmark =models.TextField(blank=True,null=True)
    occupation =models.CharField(max_length=200, blank=True,null=True)
    income = models.CharField(max_length=200, blank=True,null=True)
    product = models.CharField(max_length=300,blank=True,null=True)
    message =models.TextField(blank=True,null=True)


    class Meta:
        verbose_name_plural = 'Apply Loan Request'


class EntrepreneurshipLoan(models.Model):
    interest = models.CharField(max_length=200,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Entrepreneurship Loan'


class BusinessExpansionLoan(models.Model):
    interest = models.CharField(max_length=200,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Business Expansion Loan'


class PersonalCommercialVehicleLoan(models.Model):
    interest = models.CharField(max_length=200,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage (Personal/Commercial) Vehicle Loan'

class ServicePensionloan(models.Model):
    interest = models.CharField(max_length=200,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Service/Pension loan'


class GoldLoan(models.Model):
    interest = models.CharField(max_length=200,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Gold Loan'

class MachineryLoan(models.Model):
    interest = models.CharField(max_length=200,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Machinery Loan'


class LoanAgainstProperty(models.Model):
    interest = models.CharField(max_length=200,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Loan Against Property'

class Agriculturalloan(models.Model):
    interest = models.CharField(max_length=200,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Agricultural loan'


class FisheryPiggeryPoultryLoan(models.Model):
    interest = models.CharField(max_length=200,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Fishery/Piggery/Poultry Loan'

class LoanReferencetoNationalizedBanks(models.Model):
    interest = models.CharField(max_length=200,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Loan Reference to Nationalized Banks'

class EasyMonthlyInstallmentEMI(models.Model):
    interest = models.CharField(max_length=200,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Easy Monthly Installment(EMI)'



class WELCOMETOLOIJINGFINANCE(models.Model):
    welcome = models.TextField(blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage WELCOME TO LOIJING FINANCE'


class vision(models.Model):
    vision = models.TextField(blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Vision'


class Companyvision(models.Model):
    Companyvisioncontent = models.TextField(blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Company vision'

class companyAim(models.Model):
    Companyvisioncontent = models.TextField(blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Company Aim'


class Ourwork(models.Model):
    work = models.TextField(blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Our work'


class Applicable(models.Model):
    ApplicableFor = models.CharField(max_length=600,blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Manage Form Charges Applicable'

class  whyChooseUs(models.Model):
    why =models.TextField(blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Why Choose Us'

class companyMis(models.Model):
    mission = models.TextField(blank=True,null=True)

    class Meta:
        verbose_name_plural= 'Mission'

class galleryImage(models.Model):
    galleryImage = models.ImageField(upload_to='galleryFiles')
    class Meta:
        verbose_name_plural = 'Gallery'

class memberOne(models.Model):
    memberImage = models.ImageField(upload_to='MemberOne')
    memberName = models.CharField(max_length=200, blank=True, null=True)
    memberPosition = models.CharField(max_length=200, blank=True,null=True)
    memberDescription = models.CharField(max_length=400,blank=True,null=True)
    class Meta:
        verbose_name_plural = 'Member One'


class memberTwo(models.Model):
    memberImage = models.ImageField(upload_to='MemberOne')
    memberName = models.CharField(max_length=200, blank=True, null=True)
    memberPosition = models.CharField(max_length=200, blank=True, null=True)
    memberDescription = models.CharField(max_length=400, blank=True, null=True)

    class Meta:
        verbose_name_plural = 'Member Two'

class memberThree(models.Model):
    memberImage = models.ImageField(upload_to='MemberOne')
    memberName = models.CharField(max_length=200, blank=True, null=True)
    memberPosition = models.CharField(max_length=200, blank=True, null=True)
    memberDescription = models.CharField(max_length=400, blank=True, null=True)

    class Meta:
        verbose_name_plural = 'Member Three'

class directorDesk(models.Model):
    message = RichTextField(blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Director Message One'

class directorDeskTwo(models.Model):
    message = RichTextField(blank=True,null=True)

    class Meta:
        verbose_name_plural = 'Director Message Two'

class carausalPhotoOne(models.Model):
    imageCarausal = models.ImageField(upload_to='carausal')
    title = models.CharField(max_length=500, null=True, blank=True)


    class Meta:
        verbose_name_plural = 'Carausal Photos One'

class carausalPhotoTwo(models.Model):
    imageCarausal = models.ImageField(upload_to='carausal')
    title = models.CharField(max_length=500, null=True, blank=True)


    class Meta:
        verbose_name_plural = 'Carausal Photos Two'

class carausalPhotoThree(models.Model):
    imageCarausal = models.ImageField(upload_to='carausal')
    title = models.CharField(max_length=500, null=True, blank=True)


    class Meta:
        verbose_name_plural = 'Carausal Photos Three'
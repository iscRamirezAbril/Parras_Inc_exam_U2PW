from ast import Assign
from multiprocessing import context
from unicodedata import category
from django.http import HttpResponse
from django.shortcuts import render, redirect

from django.contrib.auth.forms import UserCreationForm
from .forms import *
from django.contrib import messages
from django.contrib.auth.models import Group
from django.contrib.auth import authenticate, login, logout
from .forms import CheckClock
from apps.Production.models import *
from apps.Parts.models import *

from datetime import *

# |==========| DECORADORES |==========| #
from django.contrib.auth.decorators import *
from apps.Employees.decorators import *

# Create your views here.
def index(request):
    return render(request, 'index.html')

@unauthenticated_user
def Employee_login(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            login(request, user)
            text = '¡Bienvenido ' + request.user.employee.empFirstName + '!'
            messages.success(request, text)
            return redirect('welcomePage')

        else:
            messages.info(request, 'Username OR password is incorrect')
        
    context = {}
    return render(request, 'login.html', context)


def register(request):
    form = employeeForm()

    if request.method == 'POST':
        form = employeeForm(request.POST)
        if form.is_valid():
            user = form.save()
            username = form.cleaned_data.get('username')
            first_name = form.cleaned_data.get('first_name')
            last_name = form.cleaned_data.get('last_name')
            
            group, created  = Group.objects.get_or_create(name ='employee')
            user.groups.add(group)
            
            Employee.objects.create(
                user = user,
                empEmail =     user.username,
                empFirstName = user.first_name,
                empLastName =  user.last_name,
            )
            
            text = 'Please, sign in'
            messages.success(request, text)
            return redirect('emp_login')
            
    context = {
        'form': form,
        'Bienvenida': 'active',
               }
    return render(request, 'register.html', context)


# Función para cerrar sesión
def Emp_logout(request):
    logout(request)
    return redirect('emp_login')


# Página de inicio
@login_required(login_url='emp_login')
def welcomePage(request):
    worker_Assistence = Assistence.objects.filter(assistDate__week=current_week).filter(assistWorker = request.user.employee.pk)
    monday=False
    tuesday=False
    wednesday=False
    thursday=False
    friday=False
    saturday=False
    sunday=False
    for day in worker_Assistence:
        if day.assistDate.weekday() == 0:
            monday=day
        if day.assistDate.weekday() == 1:
            tuesday=day
        if day.assistDate.weekday() == 2:
            wednesday=day
        if day.assistDate.weekday() == 3:
            thursday=day
        if day.assistDate.weekday() == 4:
            friday=day
        if day.assistDate.weekday() == 5:
            saturday=day
        if day.assistDate.weekday() == 6:
            sunday=day

    form = CheckClock()

    if request.method == 'POST':
        form = CheckClock(request.POST)
        if form.is_valid():
            WorkerPk = form.cleaned_data.get('assistWorker')
            
            Entry = Assistence.objects.filter(assistDate=str(datetime.now().date())).filter(assistWorker = WorkerPk)

            text = str(Entry)

            if Entry.exists():
                Assistence.objects.filter(assistWorker=WorkerPk.pk).filter(assistDate=str(datetime.now().date())).update(assistOut=datetime.now().strftime('%H:%M:%S'))
                text = "Se registró correctamente tu hora de salida " + WorkerPk.empFirstName + ' ' + WorkerPk.empLastName + '.'

            else:
                attendanceReport,created  = Assistence.objects.get_or_create(
                    assistWorker = WorkerPk,
                    assistDate = datetime.now().date(),
                    assistEntrance = datetime.now().strftime('%H:%M:%S'),
                    assistOut = '00:00:00',
                    )
                text = "Se registró correctamente tu entrada " + WorkerPk.empFirstName + ' ' + WorkerPk.empLastName + '.'
            messages.success(request, text)

        else:
            text = 'Algo salió mal, favor de intentar de nuevo'
            messages.success(request, text)

    context = {
               
               'Bienvenida': 'active',
               'worker' : request.user.employee,
               'monday' : monday, 
               'tuesday' : tuesday, 
               'wednesday' : wednesday, 
               'thursday' : thursday,
               'friday' : friday,
               'saturday' : saturday,
               'sunday' : sunday,
               
               'form' : form,
               }
    
    # Se renderiza el archivo 'stadium_list.html' y se le envía el diccionario creado
    return render(request, 'Employees/welcomePage.html', context )

@login_required(login_url='emp_login')
def ClockSystemReport(request):
    dayToday = date.today()
    dayStart = dayToday - timedelta(days=dayToday.weekday())
    Days = []
    dayCount = days=dayToday.weekday()
    for day in range(-1,dayCount):
        Days.append(dayStart + timedelta(days=day+1))
    
    Employees = Employee.objects.filter(assistence__isnull=False).distinct()
    
    AssistenceReport = Assistence.objects.filter(assistDate__week=current_week).distinct()
    
    employeesReport = []
    for employeePk in Employees:
        EmployeeEntry = []
        for day in Days:
            entry = Assistence.objects.filter(assistDate=day).filter(assistWorker = employeePk.pk)
            
            if entry.exists():
                EmployeeEntry.append(entry)
            else:
                created  = Assistence.objects.create(
                    assistWorker = employeePk,
                    assistDate = day,
                    assistEntrance = '00:00:00',
                    assistOut = '00:00:00',
                    )
                entry = Assistence.objects.filter(assistDate=day).filter(assistWorker = employeePk.pk)
                EmployeeEntry.append(entry)
        employeesReport.append(EmployeeEntry)
    
    context = {'worker_assistence': 'active',
               'week' : employeesReport,
               'Days' : Days,
               'employeesId' : Employees,
               }
    return render(request, 'Employees/worker_assistence.html', context)
    

# Para acceder a esta página, se necesita estar logueado
@login_required(login_url='emp_login')
def dashboard(request):
    workers = Employee.objects.all()
    products = Product.objects.all()
    categories = Category.objects.all()
    prodLines = ProductionLine.objects.all()
    context = {
        'Inicio': 'active',
        'workers': workers,
        'products': products,
        'categories': categories,
        'prodLines': prodLines,
    }
    return render(request, 'Employees/dashboard.html', context)

@login_required(login_url='emp_login')
def dashboard_Employees(request):
    context = {
        'Empleados': 'active',
    }
    return render(request, 'Employees/dashEmployees.html', context)

# REPORTE DE ASISTENCIA DE TRABAJADORES #
@login_required(login_url='emp_login')
def worker_List(request):
    context = {'worker_List': Worker.objects.all()}
    return render(request, 'Employees/worker_List.html', context)

current_week = date.today().isocalendar()[1]
# Generated by Django 4.0.7 on 2022-10-17 03:51

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Department',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('deptName', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Employee',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('empFirstName', models.CharField(max_length=50)),
                ('empLastName', models.CharField(max_length=50)),
                ('empBirthDate', models.DateField()),
                ('empDateJoined', models.DateField(auto_now_add=True)),
                ('empStatus', models.BooleanField(default=False)),
                ('empEmail', models.EmailField(max_length=50)),
                ('empPassword', models.CharField(max_length=50)),
                ('empLastLogin', models.DateTimeField(auto_now=True)),
                ('empUsername', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='job_Position',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('jpName', models.CharField(max_length=50)),
                ('jpEmail', models.EmailField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Worker',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('workerSalary', models.DecimalField(decimal_places=2, max_digits=10)),
                ('workerEntrance', models.TimeField()),
                ('workerOut', models.TimeField()),
                ('workerEmployee', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Employees.employee')),
                ('workerJobPosition', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Employees.job_position')),
            ],
        ),
        migrations.CreateModel(
            name='Assistence',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('assistEntrance', models.TimeField()),
                ('assistOut', models.TimeField()),
                ('assistWorkr', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Employees.worker')),
            ],
        ),
    ]

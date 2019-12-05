# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2018-12-15 07:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('loijingApp', '0013_galleryimage'),
    ]

    operations = [
        migrations.CreateModel(
            name='memberOne',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('memberImage', models.ImageField(upload_to='MemberOne')),
                ('memberName', models.CharField(blank=True, max_length=200, null=True)),
                ('memberPosition', models.CharField(blank=True, max_length=200, null=True)),
                ('memberDescription', models.CharField(blank=True, max_length=400, null=True)),
            ],
            options={
                'verbose_name_plural': 'Member One',
            },
        ),
        migrations.AlterModelOptions(
            name='applyloan',
            options={'verbose_name_plural': 'Apply Loan Request'},
        ),
        migrations.AlterModelOptions(
            name='contactus',
            options={'verbose_name_plural': 'Contacts Us.'},
        ),
    ]

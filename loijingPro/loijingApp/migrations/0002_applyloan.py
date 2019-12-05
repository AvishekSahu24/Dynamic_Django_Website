# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2018-12-07 08:42
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('loijingApp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ApplyLoan',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=200, null=True)),
                ('phone', models.CharField(blank=True, max_length=200, null=True)),
                ('altphone', models.CharField(blank=True, max_length=200, null=True)),
                ('preaddress', models.TextField(blank=True, null=True)),
                ('peraddress', models.TextField(blank=True, null=True)),
                ('landmark', models.TextField(blank=True, null=True)),
                ('occupation', models.CharField(blank=True, max_length=200, null=True)),
                ('income', models.CharField(blank=True, max_length=200, null=True)),
                ('product', models.CharField(blank=True, max_length=300, null=True)),
                ('message', models.TextField(blank=True, null=True)),
            ],
            options={
                'verbose_name_plural': 'Manage All Apply Loan',
            },
        ),
    ]

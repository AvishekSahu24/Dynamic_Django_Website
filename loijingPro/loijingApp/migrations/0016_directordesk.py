# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2018-12-18 12:00
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('loijingApp', '0015_membertwo'),
    ]

    operations = [
        migrations.CreateModel(
            name='directorDesk',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('message', models.TextField(blank=True, null=True)),
            ],
            options={
                'verbose_name_plural': 'Director Message',
            },
        ),
    ]
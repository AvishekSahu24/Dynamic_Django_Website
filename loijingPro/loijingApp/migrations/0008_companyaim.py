# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2018-12-07 11:19
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('loijingApp', '0007_auto_20181207_1059'),
    ]

    operations = [
        migrations.CreateModel(
            name='companyAim',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Companyvisioncontent', models.TextField(blank=True, null=True)),
            ],
            options={
                'verbose_name_plural': 'Manage Company vision',
            },
        ),
    ]
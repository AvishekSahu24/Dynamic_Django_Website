# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2018-12-19 10:19
from __future__ import unicode_literals

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('loijingApp', '0016_directordesk'),
    ]

    operations = [
        migrations.AlterField(
            model_name='directordesk',
            name='message',
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
    ]
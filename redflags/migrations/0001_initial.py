# Generated by Django 3.2.10 on 2022-02-05 16:51

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CorporateBehavior',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('behaviour_type', models.CharField(blank=True, max_length=40, null=True)),
                ('risk_weight', models.IntegerField()),
                ('risk_category', models.CharField(blank=True, default='', max_length=20, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='NegativeNews',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('news_type', models.CharField(blank=True, max_length=40, null=True)),
                ('risk_weight', models.IntegerField()),
                ('risk_category', models.CharField(blank=True, default='', max_length=20, null=True)),
            ],
        ),
    ]

# Generated by Django 3.2.10 on 2022-02-05 13:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('identification', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='RiskRating',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('riskrating_status', models.CharField(default='', max_length=50, null=True)),
                ('risk_rating_remarks', models.CharField(default='', max_length=300, null=True)),
                ('reason', models.CharField(default='', max_length=200, null=True)),
                ('monitoring_status_report', models.CharField(default='', max_length=50, null=True)),
                ('monitoring_frequency', models.CharField(default='', max_length=50, null=True)),
                ('monitoring_timeline', models.CharField(default='', max_length=50, null=True)),
                ('monitoring_remarks', models.CharField(default='', max_length=300, null=True)),
                ('investigation_type', models.CharField(default='', max_length=300, null=True)),
                ('approval_date', models.CharField(default='', max_length=50, null=True)),
                ('monitoring_approval_date', models.CharField(default='', max_length=50, null=True)),
                ('discounting_case_status', models.CharField(default='', max_length=50, null=True)),
                ('action_reason', models.CharField(default='', max_length=200, null=True)),
                ('action_performed', models.CharField(default='', max_length=200, null=True)),
                ('discount_status', models.CharField(default='', max_length=200, null=True)),
                ('turn_around_time', models.CharField(default='', max_length=100, null=True)),
                ('reporting_status', models.CharField(default='', max_length=100, null=True)),
                ('monitoring_status', models.CharField(default='Monitoring Pending', max_length=100, null=True)),
                ('sent_to_L1', models.BooleanField(default=False)),
                ('sent_to_MLRO', models.BooleanField(default=False)),
                ('individual', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='identification.individual')),
            ],
        ),
        migrations.CreateModel(
            name='CustomerEDD',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('verifiedDoc', models.FileField(blank=True, default='', max_length=250, null=True, upload_to='riskrating/files/Source of Wealth Files/')),
                ('approvalDoc', models.FileField(blank=True, default='', max_length=250, null=True, upload_to='riskrating/files/Manager Approval Files/')),
                ('edd_remarks', models.CharField(blank=True, default='', max_length=200, null=True)),
                ('individual', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='identification.individual')),
            ],
        ),
    ]

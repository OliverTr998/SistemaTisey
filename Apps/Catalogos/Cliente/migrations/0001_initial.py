# Generated by Django 4.2.16 on 2024-09-11 23:08

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('Persona', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Cedula', models.CharField(max_length=16)),
                ('PersonaId', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='Persona.persona')),
            ],
            options={
                'db_table': 'Cliente',
            },
        ),
    ]
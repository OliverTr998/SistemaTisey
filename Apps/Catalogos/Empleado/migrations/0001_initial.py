# Generated by Django 4.1 on 2024-11-18 19:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('Persona', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Empleado',
            fields=[
                ('Id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='Id')),
                ('INSS', models.CharField(max_length=16)),
                ('PersonaId', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='Persona.persona', verbose_name='Persona')),
            ],
            options={
                'db_table': 'Empleado',
            },
        ),
    ]

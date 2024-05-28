// lib/add_vehicle_page.dart

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddVehiclePage extends StatefulWidget {
  @override
  _AddVehiclePageState createState() => _AddVehiclePageState();
}

class _AddVehiclePageState extends State<AddVehiclePage> {
  final _formKey = GlobalKey<FormState>();

  
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();
  final TextEditingController _mileageController = TextEditingController();
  final TextEditingController _totalExpensesController = TextEditingController();
  final TextEditingController _assignedDriverController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ingresar Vehículo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextField('Marca', _brandController),
              _buildTextField('Modelo', _modelController),
              _buildTextField('Año', _yearController, isNumeric: true),
              _buildTextField('Kilometraje', _mileageController, isNumeric: true),
              _buildTextField('Total Gastos', _totalExpensesController, isNumeric: true),
              _buildTextField('Conductor Designado', _assignedDriverController),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveVehicle,
                child: Text('Guardar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, {bool isNumeric = false}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, ingrese $label';
        }
        return null;
      },
    );
  }

  void _saveVehicle() {
    if (_formKey.currentState!.validate()) {
      // Guardar el vehículo en la base de datos
      Navigator.pop(context);
    }
  }
}

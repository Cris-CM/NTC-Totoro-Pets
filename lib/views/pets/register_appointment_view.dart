import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';
import 'package:ntc_totoro_pets/widgets/texts.dart';
import 'package:sizer/sizer.dart';

class RegisterAppointmentView extends StatefulWidget {
  const RegisterAppointmentView({super.key});

  @override
  State<RegisterAppointmentView> createState() =>
      _RegisterAppointmentViewState();
}

class _RegisterAppointmentViewState extends State<RegisterAppointmentView>
    with SingleTickerProviderStateMixin {
  int _selectedTab = 0;
  int _selectedServiceIndex = 0;

  // Datos de ejemplo para cada tab de servicios
  final List<List<Map<String, String>>> serviceOptions = [
    [
      {'title': 'Consulta', 'price': 'S/30.00'},
      {'title': 'Hemograma', 'price': 'S/50.00'},
      {'title': 'Análisis a especificar', 'price': 'S/100.00'},
      {'title': 'Radiografía digital RX', 'price': 'S/150.00'},
    ],
    [
      {'title': 'Tratamiento / Inyectable', 'price': 'S/30.00'},
      {'title': 'Cirugía a especificar', 'price': 'S/50.00'},
      {'title': 'Vacuna', 'price': 'S/100.00'},
      {'title': 'Desparasitación', 'price': 'S/150.00'},
    ],
    [
      {'title': 'Hospitalización', 'price': 'S/30.00'},
      {'title': 'Peluquería', 'price': 'S/50.00'},
    ]
  ];

  // Iconos para cada tab de servicios
  final List<IconData> serviceIcons = [
    Icons.article, // Consultas y Diagnósticos
    Icons.medical_services, // Tratamientos y Procedimientos
    Icons.favorite, // Cuidados Especiales
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Flecha y título
              Row(
                children: [
                  BackButton(
                    color: Palette.green,
                    onPressed: () => Navigator.pop(context),
                  ),
                  SizedBox(width: 2.w),
                  Texts.bold(
                    'Crear Cita',
                  ),
                ],
              ).marginOnly(bottom: 2.h),
              // Tabs principales
              Row(
                children: [
                  _TabButton(
                    label: 'Servicios',
                    selected: _selectedTab == 0,
                    onTap: () => setState(() => _selectedTab = 0),
                  ),
                  _TabButton(
                    label: 'Datos',
                    selected: _selectedTab == 1,
                    onTap: () => setState(() => _selectedTab = 1),
                  ),
                  _TabButton(
                    label: 'Resumen',
                    selected: _selectedTab == 2,
                    onTap: () => setState(() => _selectedTab = 2),
                  ),
                ],
              ),
              Divider(thickness: 2),
              if (_selectedTab == 0)
                // Sub-tabs de servicios
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(3, (i) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedServiceIndex = 0;
                          _selectedTab = 0;
                        });
                        setState(() => _selectedTab = 0);
                        setState(() => _selectedServiceIndex = i);
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: _selectedServiceIndex == i
                                    ? Palette.green
                                    : Palette.transparent,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(4),
                            child: Icon(
                              serviceIcons[i],
                              color: _selectedServiceIndex == i
                                  ? Palette.green
                                  : Palette.grey400,
                              size: 8.w,
                            ),
                          ),
                          Texts.bold(
                            [
                              'Consultas\nDiagnósticos',
                              'Tratamientos\nProcedimientos',
                              'Cuidados\nEspeciales'
                            ][i],
                            alignment: TextAlign.center,
                            fontSize: 10,
                            color: _selectedServiceIndex == i
                                ? Palette.green
                                : Palette.grey400,
                          ),
                        ],
                      ),
                    );
                  }),
                ).marginOnly(bottom: 3.h),
              if (_selectedTab == 0) ...[
                // Lista de servicios
                ...serviceOptions[_selectedServiceIndex]
                    .asMap()
                    .entries
                    .map((entry) {
                  int idx = entry.key;
                  var service = entry.value;
                  return GestureDetector(
                    onTap: () {
                      // Aquí puedes guardar la selección
                    },
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 1.5.h),
                        width: 70.w,
                        height: 12.h,
                        decoration: BoxDecoration(
                          color: idx == 1 ? Palette.green : Palette.transparent,
                          border: Border.all(color: Palette.green),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Texts.regular(
                              service['title']!,
                              color: idx == 1 ? Palette.black : Palette.black,
                              fontSize: 10,
                            ).marginOnly(bottom: 1.h),
                            Texts.w400(
                              service['price']!,
                              color: idx == 1 ? Palette.white : Palette.green,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ),
                    ).marginOnly(bottom: 1.h),
                  );
                }).toList(),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Acción para ir a la siguiente pantalla/tab
                      setState(() => _selectedTab = 1);
                    },
                    child: Texts.w500(
                      'Siguiente',
                      color: Palette.green,
                      fontSize: 13,
                    ),
                  ),
                ).marginOnly(top: 10.h),
              ],
              if (_selectedTab == 1)
                Expanded(
                  child: Center(
                    child: Texts.w500(
                      'Pantalla de Datos (por implementar)',
                      color: Palette.green,
                      fontSize: 13,
                    ),
                  ),
                ),
              if (_selectedTab == 2)
                Expanded(
                  child: Center(
                    child: Texts.w500(
                      'Pantalla de Resumen (por implementar)',
                      color: Palette.green,
                      fontSize: 13,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget para los tabs principales
class _TabButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _TabButton({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Texts.regular(
              label,
              color: selected ? Palette.green : Palette.grey400,
              fontSize: 13,
            ),
            SizedBox(height: 2),
            if (selected)
              Container(
                height: 3,
                width: 40,
                color: Palette.green,
              ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/data.dart';

Widget buildSelectField<T>(
  String label,
  T value,
  List<LabelValue<T>> data,
  Function onChange,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: InputDecorator(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          value: value,
          isExpanded: true,
          items: [
            DropdownMenuItem<T>(
              value: null,
              child: Text(
                '--',
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
            ),
            ...data.map((option) {
              return DropdownMenuItem<T>(
                value: option.value,
                child: Text(
                  option.label,
                  style: const TextStyle(fontWeight: FontWeight.w400),
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }),
          ],
          onChanged: (T? newValue) {
            onChange(newValue);
          },
        ),
      ),
    ),
  );
}

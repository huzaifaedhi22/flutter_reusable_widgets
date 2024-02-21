import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widgets/cubit/drop_down_cubit.dart';

class CustomizeDropDown extends StatefulWidget {
  final List<DropdownMenuItem<dynamic>> items;
  dynamic selectedValue;

  CustomizeDropDown({Key? key, required this.items}) : super(key: key);

  @override
  State<CustomizeDropDown> createState() => _CustomizeDropDownState();
}

class _CustomizeDropDownState extends State<CustomizeDropDown> {
  @override
  Widget build(BuildContext context) => BlocBuilder<DropDownCubit,DropDownState>(
        builder: (context, state) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Theme.of(context).colorScheme.primary),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: DropdownButton<dynamic>(
                underline: const SizedBox(),
                value: widget.items.contains(widget.selectedValue)
                    ? widget.selectedValue
                    : null,
                isExpanded: true,
                icon: Icon(Icons.arrow_drop_down_rounded,
                    size: 32, color: Theme.of(context).colorScheme.primary),
                hint: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(BlocProvider.of<DropDownCubit>(context)
                      .state
                      .selectedValue
                      .toString()),
                ),
                elevation: 16,
                dropdownColor: Colors.white,
                items: widget.items,
                onChanged: (newValue) => BlocProvider.of<DropDownCubit>(context)
                      .storeSelectedValue(newValue),
              ),
            ),
          );
        },
      );
}

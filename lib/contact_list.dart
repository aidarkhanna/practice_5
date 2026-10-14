import 'package:flutter/material.dart';

import 'contacts.dart';
import 'contact_card.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text('20 contacts'),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.separated(
              itemCount: contacts.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) =>
                  ContactCard(contact: contacts[index]),
            ),
          ),
        ],
      ),
    );
  }
}

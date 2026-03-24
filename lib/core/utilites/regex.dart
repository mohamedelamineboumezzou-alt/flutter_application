String? matriculeValidator(String value) {
  if (value.isEmpty) {
    return 'Le matricule est requis';
  }
  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
    return 'Le matricule doit être composé uniquement de chiffres';
  }
  return null;
}

String? passwordValidator(String value) {
  if (value.isEmpty) {
    return 'Le mot de passe est requis';
  }
  if (value.length < 6) {
    return 'Le mot de passe doit contenir au moins 6 caractères';
  }
  return null;
}
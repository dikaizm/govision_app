String getConditionName(String name) {
  switch (name.toLowerCase()) {
    case 'no_dr':
      return 'Normal';
    case 'mild_dr':
      return 'Mild DR';
    case 'moderate_dr':
      return 'Moderate DR';
    case 'severe_dr':
      return 'Severe DR';
    case 'proliferate_dr':
      return 'Proliferate DR';
    default:
      return name; // Return original name if no match found
  }
}
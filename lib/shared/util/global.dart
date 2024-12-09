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
    case 'not_detected':
      return 'Tidak Terdeteksi';
    default:
      return name; // Return original name if no match found
  }
}

String getRoleName(String name) {
  switch (name.toLowerCase()) {
    case 'admin':
      return 'Administrator';
    case 'patient':
      return 'Pasien';
    case 'doctor':
      return 'Dokter';
    default:
      return name; // Return original name if no match found
  }
}

const UG_YEAR_PATTERN = /(?:^|[._-])ug(\d{2})/i;

export function deriveGraduationYearFromEmail(email) {
  const match = String(email || "").match(UG_YEAR_PATTERN);
  if (!match) return null;
  return String(2004 + parseInt(match[1], 10));
}

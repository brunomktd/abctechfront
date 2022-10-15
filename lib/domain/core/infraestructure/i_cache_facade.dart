abstract class ICacheFacade {
  Future<bool> setValue(String key, String value);
  Future<String?> getValue(String key);
  Future<bool> removeValue(String key);
  Future<bool> clearAll();
}

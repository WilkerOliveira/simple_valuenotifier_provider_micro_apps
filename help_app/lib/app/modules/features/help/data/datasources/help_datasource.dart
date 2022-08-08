abstract class HelpDatasource {
  Future<String> getTesteString();
}

class HelpDatasourceImpl implements HelpDatasource {
  @override
  Future<String> getTesteString() {
    return Future<String>.value('String from Datasource');
  }
}

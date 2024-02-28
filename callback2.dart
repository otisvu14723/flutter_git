void textField(String text, Function(String?) onChanged) {
  if (onChanged != null) {
    final result = 'Hello $text';
    onChanged(result);
  }
}

void main(List<String> args) {
  textField('abcccddd', (result) {
    print(result);
  });
}

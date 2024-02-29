import 'package:my_first_app/ui/helpers/text_reverse.validator.dart';
import 'package:my_first_app/ui/views/text_reverse/text_reverse_view.form.dart';
import 'package:stacked/stacked.dart';

class TextReverseViewModel extends FormViewModel {
  String get reversedText =>
      hasReverseInput ? reverseInputValue!.split('').reversed.join('') : '----';

  void validateReverseText() {
    setReverseInputValidationMessage(
        TextReverseValidators.validateReverseText(reverseInputValue));
    if (hasReverseInputValidationMessage) {
      notifyListeners();
    }
  }
}

import 'Question.dart';
import 'Answer.dart';
import 'dart:math';

class Brain {
  List<int> ind = [];
  int i = Random().nextInt(103);

  List<int> usedIn = [];
  List<Answer> tt = [];
  List<Answer> fn = [];
  int l = Random().nextInt(4);

  List<Question> q = [
    Question(
        'أين رست سفينة نوح بعد الطوفان ؟',
        Answer('جبل الجودي', true),
        Answer('جبل الصفا', false),
        Answer('جبل المروة', false),
        Answer('جبل في العراق', false)),
    Question(
        'من هو الصحابي الذي افتداه الرسول صلى الله عليه وسلم بأبيه وأمه؟',
        Answer('سعد بن أبي وقاص', true),
        Answer('زيد بن حارثة', false),
        Answer('علي بن أبي طالب', false),
        Answer('سعد بن معاذ', false)),
    Question(
        'من هو الصحابي الذي أوتي مزمارا من مزامير داوود عليه السلام؟',
        Answer('أبي موسى الأشعري', true),
        Answer('حسان بن ثابت', false),
        Answer('أبي ذر الغفاري', false),
        Answer('عمرو بن العاص', false)),
    Question(' كم عدد سور القرآن الكريم؟', Answer('111', false),
        Answer('112', false), Answer('113', false), Answer('114', false)),
    Question(
        'في أي الأيام خلق سيدنا آدم عليه السلام؟',
        Answer('يوم السبت', false),
        Answer('يوم الاثنين', false),
        Answer('يوم الأربعاء', false),
        Answer('يوم الجمعة', true)),
    Question(
        'كم عدد السنوات التي نام فيها أهل الكهف؟',
        Answer('300 سنة', false),
        Answer('309 سنوات', true),
        Answer('400 سنة', false),
        Answer('409 سنوات', false)),
    Question(
        'اسم أول صحابي قرأ القرآن جهرة؟',
        Answer('عبد الله بن مسعود', true),
        Answer('عبد الله بن عباس', false),
        Answer('عبد الله بن عمرو بن العاص', false),
        Answer('عبد الله بن الزبير', false)),
    Question(
        'من هي أخر زوجات النبي التي توفيت؟',
        Answer('السيدة زينب بنت جحش', false),
        Answer('السيدة عائشة بنت أبي بكر', false),
        Answer('السيدة أم سلمة', true),
        Answer('السيدة سودة بنت زمعة', false)),
    Question(
        'سورة قصيرة من قرأها ثلاثا فكأنما قرأ كل القرآن؟',
        Answer('سورة الناس', false),
        Answer('سورة الفلق', false),
        Answer('سورة الإخلاص', true),
        Answer('سورة الفاتحة', false)),
    Question(
        'كم مرة حج محمد رسول الله عليه الصلاة والسلام؟',
        Answer('مرة واحدة', true),
        Answer('مرتين', false),
        Answer('ثلاث مرات', false),
        Answer('أربع مرات', false)),
    Question(
        'ما هي غزوة الفرقان؟',
        Answer('غزوة بدر', true),
        Answer('غزوة أحد', false),
        Answer('غزوة الخندق', false),
        Answer('غزوة الطائف', false)),
    Question(
        'ما هي السورة التي تسمى بقلب القرآن؟',
        Answer('سورة الفاتحة', false),
        Answer('سورة البقرة', false),
        Answer('سورة يس', true),
        Answer('سورة الرحمن', false)),
    Question(
        'في أي عام تم فرض فريضة الصيام؟',
        Answer('العام الأول من الهجرة', false),
        Answer('العام الثاني من الهجرة', true),
        Answer('العام الثالث من الهجرة', false),
        Answer('العام الرابع من الهجرة', false)),
    Question(
        'كم كان عمر النبي محمد صلى الله عليه وسلم عندما توفيت أمه؟',
        Answer('3 سنوات', false),
        Answer('4 سنوات', false),
        Answer('5 سنوات', false),
        Answer('6 سنوات', true)),
    Question(
        'ما هي أطول سورة في القرآن الكريم؟',
        Answer('سورة البقرة', true),
        Answer('سورة آل عمران', false),
        Answer('سورة النساء', false),
        Answer('سورة المائدة', false)),
    Question(
        'الشهر الثالث في التقويم الهجري؟',
        Answer('شعبان', false),
        Answer('ربيع الأول', true),
        Answer('جمادى الآخرة', false),
        Answer('ذو القعدة', false)),
    Question(
        'ما السورة التي ختمت باسم وقت من أوقات الصلاة؟',
        Answer('سورة القدر', true),
        Answer('سورة البلد', false),
        Answer('سورة الأعلى', false),
        Answer('سورة الفجر', false)),
    Question(
        'كم عدد التكبيرات في الركعة الأولى في صلاة العيد؟',
        Answer('ستة', false),
        Answer('سبعة', true),
        Answer('تسعة', false),
        Answer('خمسة', false)),
    Question(
        'في أي جهة يقع باب الكعبة المشرفة؟',
        Answer('في الجهة الغربية من الكعبة', false),
        Answer('في الجهة الجنوبية من الكعبة', false),
        Answer('في الجهة الشمالية من الكعبة', false),
        Answer('في الجهة الشرقية من الكعبة', true)),
    Question('كم عدد مصارف الزكاة؟', Answer('ثمانية', true),
        Answer('خمسة', false), Answer('سبعة', false), Answer('تسعة', false)),
    Question(
        'كم مرة ذكرت السيدة مريم في القرآن الكريم؟',
        Answer('43 مرة', false),
        Answer('55 مرة', false),
        Answer('42 مرة', false),
        Answer('34 مرة', true)),
    Question(
        'قال تعالى في سورة العاديات: ( فالمغيرات صبحا (3)) ماالمقصود بالمغيرات؟',
        Answer('الرياح الشديدة', false),
        Answer('الابل', false),
        Answer('الملائكة السابحين', false),
        Answer('الخيل', true)),
    Question(
        'ما هي أعظم آية في القرآن الكريم؟',
        Answer('آية الكرسي', true),
        Answer('آخر آية من سورة الكهف', false),
        Answer('آخر آية من سورة البقرة', false),
        Answer('أول آية من سورة البقرة', false)),
    Question(
        'أحد هؤلاء الصحابة من العشرة المبشرين بالجنة؟',
        Answer('سلمان الفارسي', false),
        Answer('عقيل بن أبي طالب', false),
        Answer('سعد بن أبي وقاص', true),
        Answer('الأشعث بن قيس', false)),
    Question(
        'في أي سنة هجرية كانت غزوة أحد؟',
        Answer('السنة الثالثة للهجرة', true),
        Answer('السنة الرابعة للهجرة', false),
        Answer('السنة الخامسة للهجرة', false),
        Answer('السنة السادسة للهجرة', false)),
    Question(
        'من هي النصرانية التي أسلمت ثم تزوجها النبي صلى الله عليه وسلم؟',
        Answer('جويرية بنت الحارث', false),
        Answer('ميمونة', false),
        Answer('سودة بنت زمعة', false),
        Answer('مارية القبطية', true)),
    Question('من هو النبي الذي أرسل الى قوم ثمود؟', Answer('صالح', true),
        Answer('هود', false), Answer('نوح', false), Answer('شعيب', false)),
    Question(
        'ما عدد أحزاب القرآن الكريم؟',
        Answer('50 حزبا', false),
        Answer('40 حزبا', false),
        Answer('30 حزبا', false),
        Answer('60 حزبا', true)),
    Question(
        'قال تعالى في سورة المدثر: (والرجز فاهجر (5)) ما المقصود بالرجز؟',
        Answer('الكذب', false),
        Answer('الأوثان', true),
        Answer('الجدال', false),
        Answer('النوم', false)),
    Question(
        'قال تعالى: (والصافات صفا * فالزاجرات زجرا) ما المقصود بالزاجرات؟',
        Answer('الملائكة', true),
        Answer('الرياح', false),
        Answer('الغمام', false),
        Answer('السحاب', false)),
    Question(
        'من هو الصحابي الذي كانت تستحي منه ملائكة السماء؟',
        Answer('علي بن أبي طالب', false),
        Answer('عثمان بن عفان', true),
        Answer('عمر بن الخطاب', false),
        Answer('أبو بكر الصديق', false)),
    Question(
        'ما اسم السورة التي تنتهي آياتها بحرف السين؟',
        Answer('الفلق', false),
        Answer('الصمد', false),
        Answer('الناس', true),
        Answer('الضحى', false)),
    Question(
        'كم عدد السور التي ابتدأت بالحروف المقطعة (الم)',
        Answer('أربعة سور', false),
        Answer('ثلاث سور', false),
        Answer('خمس سور', false),
        Answer('ستة سور', true)),
    Question(
        'ما هو عدد حملة العرش يوم القيامة والمذكورين في القرآن الكريم؟',
        Answer('سبعة', false),
        Answer('ستة', false),
        Answer('ثمانية', true),
        Answer('تسعة', false)),
    Question(
        'أين ذكرت الآية الكريمة: ( وما آتاكم الرسول فخذوه وما نهاكم عنه فانتهوا)؟',
        Answer('سورة الحشر', true),
        Answer('سورة الصف', false),
        Answer('سورة الجمعة', false),
        Answer('سورة الواقعة', false)),
    Question(
        'ما هي السورة التي يطلق عليها أم الكتاب؟',
        Answer('سورة محمد', false),
        Answer('سورة البقرة', false),
        Answer('سورة يس', false),
        Answer('سورة الفاتحة', true)),
    Question(
        'كم شخص اشترك في قتل ناقة النبي صالح عليه السلام؟',
        Answer('تسعة أشخاص', true),
        Answer('خمسة أشخاص', false),
        Answer('عشرة أشخاص', false),
        Answer('ثمانية أشخاص', false)),
    Question(
        'من الذي لقب الرسول الكريم بالطيب المطيب؟',
        Answer('زيد بن حارثة', false),
        Answer('أسامة بن زيد', false),
        Answer('أنس بن مالك', false),
        Answer('عمار بن ياسر', true)),
    Question(
        'في أي سورة وردت الآية: (يمحق الله الربا ويربي الصدقات والله لا يحب كل كفار أثيم)؟',
        Answer('المائدة', false),
        Answer('البقرة', true),
        Answer('آل عمران', false),
        Answer('هود', false)),
    Question(
        'في أي سورة وردت الآية التالية (ولبثوا في كهفهم ثلاث مئة سنين وازدادوا تسعا)؟',
        Answer('سورة الكهف', true),
        Answer('سورة فصلت', false),
        Answer('سورة مريم', false),
        Answer('سورة غافر', false)),
    Question(
        'من هو النبي الذي دعا ربه (توفني مسلما وألحقني بالصالحين)؟',
        Answer('يعقوب عليه السلام', false),
        Answer('يوسف عليه السلام', true),
        Answer('صالح عليه السلام', false),
        Answer('ابراهيم عليه السلام', false)),
    Question(
        'ما هي الرادفة؟',
        Answer('يوم القيامة', false),
        Answer('النفخة الأولى في البوق', false),
        Answer('النفخة الثانية في البوق', true),
        Answer('انشقاق الأرض', false)),
    Question(
        'السورة التي ابتدأت بالحرفين المقطعين (طس)؟',
        Answer('سورة الحجر', false),
        Answer('سورة الرعد', false),
        Answer('سورة الأعراف', false),
        Answer('سورة النمل', true)),
    Question(
        'ما هي السورة التي تسمى سورة التوديع؟',
        Answer('سورة الزلزلة', false),
        Answer('سورة الحج', false),
        Answer('سورة النصر', true),
        Answer('سورة الفيل', false)),
    Question(
        'الشهر الثامن في التقويم الهجري؟',
        Answer('شعبان', true),
        Answer('ذو الحجة', false),
        Answer('محرم', false),
        Answer('شوال', false)),
    Question(
        'كم عدد السور التي افتتحت بثلاثة أحرف؟',
        Answer('16 سورة', false),
        Answer('15 سورة', false),
        Answer('14 سورة', false),
        Answer('13 سورة', true)),
    Question(
        'كم عدد آيات سورة البقرة؟',
        Answer('286 آية', true),
        Answer('280 آية', false),
        Answer('277 آية', false),
        Answer('298 آية', false)),
    Question(
        'من أسماء الخيل التي ذكرت في القرآن الكريم؟',
        Answer('الزاجرات', false),
        Answer('النازعات', false),
        Answer('الذاريات', false),
        Answer('العاديات', true)),
    Question(
        'كم عدد القراءات الصحيحة للقرآن الكريم؟',
        Answer('7 قراءات', false),
        Answer('8 قراءات', false),
        Answer('9 قراءات', false),
        Answer('10 قراءات', true)),
    Question(
        'كم مرة اعتمر النبي صلى الله عليه وسلم؟',
        Answer('أربع عمرات', true),
        Answer('عمرة واحدة', false),
        Answer('خمس عمرات', false),
        Answer('سبع عمرات', false)),
    Question(
        'ما اسم أخو يوسف عليه السلام من أمه وأبيه؟',
        Answer('روأبين', false),
        Answer('بنيامين', true),
        Answer('يهوذا', false),
        Answer('يوشع', false)),
    Question(
        'قام أحدهم بمبادلة صاع من القمح الجيد بصاعين من القمح الرديء لشخص آخر ما حكم هذه المبادلة؟',
        Answer('جائزة', false),
        Answer('مضاربة', false),
        Answer('ربا الفضل', true),
        Answer('ربا النسيئة', false)),
    Question(
        'في أي عام هجري وقعت غزوة خيبر؟',
        Answer('10 هجري', false),
        Answer('5 هجري', false),
        Answer('9 هجري', false),
        Answer('7 هجري', true)),
    Question(
        'كم عدد الأنبياء الذين ذكروا في سورة الأنبياء؟',
        Answer('18 نبي', false),
        Answer('19 نبي', false),
        Answer('16 نبي', true),
        Answer('25 نبي', false)),
    Question(
        'ما هو الاسم الذي يطلق على الزيادة في الدين نظير الأجل أو الزيادة فيه؟',
        Answer('ربا النسيئة', true),
        Answer('ربا الفضل', false),
        Answer('مضاربة مشروعة', false),
        Answer('ربا المال', false)),
    Question(
        'ما هي السورة التي لا تبدأ بالبسملة؟',
        Answer('النحل', false),
        Answer('النمل', false),
        Answer('الاسراء', false),
        Answer('التوبة', true)),
    Question(
        'من أول من ألف في أحكام القرآن؟',
        Answer('الامام الشافعي', true),
        Answer('الامام حمد بن حنبل', false),
        Answer('الامام المالكي', false),
        Answer('الامام أبي حنيفة', false)),
    Question(
        'في أي سورة ذكرت قصة قابيل وهابيل؟',
        Answer('سورة الأعراف', false),
        Answer('سورة القصص', false),
        Answer('سورة الأنعام', false),
        Answer('سورة المائدة', true)),
    Question(
        'ما اسم الزوجة الثالثة بالترتيب التي تزوجها النبي صلى الله عليه وسلم؟',
        Answer('حفصة بنت عمر', false),
        Answer('عائشة بنت أبي بكر الصديق', true),
        Answer('أم سلمة', false),
        Answer('سودة بنت زمعة', false)),
    Question(
        'من من الخلفاء الراشدين كان الأكبر سنا عندما لقي ربه؟',
        Answer('عثمان بن عفان', true),
        Answer('أبو بكر الصديق', false),
        Answer('عمر بن الخطاب', false),
        Answer('علي بن أبي طالب', false)),
    Question(
        'من أول من لقب بأمير المؤمنين؟',
        Answer('علي بن أبي طالب', false),
        Answer('عمر بن الخطاب', true),
        Answer('أبو بكر الصديق', false),
        Answer('عثمان بن عفان', false)),
    Question(
        'يجب اخراج الزكاة من الذهب اذا كان يبلغ النصاب الشرعي وهو؟',
        Answer('88 غراما', false),
        Answer('78 غراما', false),
        Answer('85 غراما', true),
        Answer('58 غراما', false)),
    Question(
        'ماذا لقب ابراهيم عليه السلام؟',
        Answer('الصديق', false),
        Answer('شيخ المرسلين', false),
        Answer('اسرائيل', false),
        Answer('الخليل', true)),
    Question(
        'أين وردت الآية الكريمة ( أقم الصلاة لدلوك الشمس إلى غسق الليل وقرآن الفجر إن قرآن الفجر كان مشهودا)؟',
        Answer('سورة النور', false),
        Answer('سورة التكوير', false),
        Answer('سورة الاسراء', true),
        Answer('سورة الشمس', false)),
    Question(
        'من هو الصحابي الذي كان جبريل يأتي على هيئته؟',
        Answer('دحية الكلبي', true),
        Answer('سعد بن أبي وقاص', false),
        Answer('حذيفة بن اليمان', false),
        Answer('سعد بن معاذ', false)),
    Question(
        'من هو الصحابي الملقب بأبي تراب؟',
        Answer('عمر بن الخطاب', false),
        Answer('أبو بكر الصديق', false),
        Answer('عثمان بن عفان', false),
        Answer('علي بن أبي طالب', true)),
    Question(
        'أول زوجات النبي صلى الله عليه وسلم لحوقا به بعد وفاته؟',
        Answer('زينب بنت جحش', true),
        Answer('حفصة بنت عمر', false),
        Answer('أم سلمة', false),
        Answer('سودة بنت زمعة', false)),
    Question(
        'كم كان عمر الرسول صلى الله عليه وسلم عندما بعث نبيا ورسولا للإسلام؟',
        Answer('عشرون عاما', false),
        Answer('ثلاثون عاما', false),
        Answer('خمسون عاما', false),
        Answer('أربعون عاما', true)),
    Question(
        'ما هي السورة التي وردت فيها غزوة أحد وغزوة بدر؟',
        Answer('سورة البقرة', false),
        Answer('سورة آل عمران', true),
        Answer('سورة المائدة', false),
        Answer('سورة الأنعام', false)),
    Question(
        'ما هو العام الهجري الذي احتفل فيه المسلمين بعيد الفطر وعيد الأضحى المبارك؟',
        Answer('العام الأول', false),
        Answer('العام الثاني', true),
        Answer('العام الثالث', false),
        Answer('العام الرابع', false)),
    Question(
        'ما هو أول الأيام التي خلقها الله تعالى؟',
        Answer('يوم السبت', false),
        Answer('يوم الأحد', true),
        Answer('يوم الجمعة', false),
        Answer('يوم الثلاثاء', false)),
    Question(
        'ما هي السورة الوحيدة في القرآن الكريم التي لا تحتوي على حرف الميم؟',
        Answer('سورة الناس', false),
        Answer('سورة النصر', false),
        Answer('سورة الكوثر', true),
        Answer('سورة الفيل', false)),
    Question(
        'من هي آسيا؟',
        Answer('زوجة نوح', false),
        Answer('زوجة لقمان', false),
        Answer('زوجة لوط', false),
        Answer('زوجة فرعون', true)),
    Question(
        'ما هي أول صلاة صلاها الرسول صلى الله عليه وسلم؟',
        Answer('صلاة الفجر', false),
        Answer('صلاة الظهر', true),
        Answer('صلاة العصر', false),
        Answer('صلاة العشاء', false)),
    Question(
        'كم مرة ذكر اسم الرسول محمد صلى الله عليه وسلم في القرآن؟',
        Answer('3 مرات', false),
        Answer('4 مرات', true),
        Answer('5 مرات', false),
        Answer('6 مرات', false)),
    Question(
        'من هو النبي الذي آمن به جميع قومه؟',
        Answer('نوح عليه السلام', false),
        Answer('شعيب عليه السلام', false),
        Answer('إبراهيم عليه السلام', false),
        Answer('يونس عليه السلام', true)),
    Question(
        'من هو أول صحابي حيّا الرسول صلى الله عليه وسلم بتحية الإسلام؟',
        Answer('أبو بكر الصديق', false),
        Answer('أبو أيوب الأنصاري', false),
        Answer('أبو ذر الغفاري', true),
        Answer('أبو موسى الأشعري', false)),
    Question(
        'قال تعالى: (وزرابي مبثوثة) سورة الغاشية (16)، المقصود بـ(زرابي)؟',
        Answer('الطنافس', true),
        Answer('الأسرة', false),
        Answer('الوسائد', false),
        Answer('الفرش', false)),
    Question(
        'أقسم الله عزوجل بالتين والزيتون كناية عن الأرض التي تزرع فيها ومهبط الرسالات السماوية وهي أرض؟',
        Answer('مصر', false),
        Answer('الحجاز', false),
        Answer('فلسطين', true),
        Answer('اليمن', false)),
    Question(
        'بدأت سورة الشعراء بعد البسملة بثلاثة حروف هي؟',
        Answer('طسم', true),
        Answer('الم', false),
        Answer('الر', false),
        Answer('كهع', false)),
    Question(
        'اذا ضرب المسلم أخاه المسلم ونتج عن ذلك فقدانه للنطق فمقدار الدية التي يجب عليه دفعها في الشريعة الإسلامية هي؟',
        Answer('دية النفس كاملة', true),
        Answer('نصف الدية', false),
        Answer('ثلث الدية', false),
        Answer('عشر الدية', false)),
    Question(
        'من قائد المسلمين في معركة القادسية؟',
        Answer('خالد بن الوليد', false),
        Answer('عمرو بن العاص', false),
        Answer('سعد بن أبي وقاص', true),
        Answer('شرحبيل بن حسنة', false)),
    Question(
        'الغزوة التي تسمى غزوة أوطاس أيضا هي غزوة؟',
        Answer('بدر', false),
        Answer('بني قينقاع', false),
        Answer('مؤته', false),
        Answer('حنين', true)),
    Question(
        'ما أكثر سورة تكرر فيها اسم الرحمن؟',
        Answer('سورة الرحمن', false),
        Answer('سورة البقرة', false),
        Answer('سورة مريم', true),
        Answer('سورة آل عمران', false)),
    Question(
        'قرية أخبر الرسول صلى الله عليه وسلم أنها (آخر قرية من قرى الإسلام خرابا) فما هي؟',
        Answer('المدينة المنورة', true),
        Answer('مكة المكرمة', false),
        Answer('جدة', false),
        Answer('القدس', false)),
    Question(
        'من هي ثاني إمرأة دخلت الإسلام؟',
        Answer('سمية بنت خياط', false),
        Answer('فاطمة بنت أسد', false),
        Answer('أم أيمن', false),
        Answer('أم الفضل زوجة العباس', true)),
    Question(
        'صحابي قال له النبي صلى الله عليه وسلم (أن الله مقمصمك قميصا فإن أرادك المنافقون على خلعه فلا تخلعه) فمن هو؟',
        Answer('عثمان بن عفان', true),
        Answer('أبو بكر الصديق', false),
        Answer('عمر بن الخطاب', false),
        Answer('علي بن أبي طالب', false)),
    Question(
        'كم ورد لفظ (لؤلؤ واللؤلؤ) في القرآن الكريم؟',
        Answer('مرة واحدة', false),
        Answer('مرتان', false),
        Answer('أربع مرات', false),
        Answer('ست مرات', true)),
    Question(
        'اذا ضرب المسلم أخيه المسلم ونتج عن ذلك فقدان للبصر لأحدى عينيه فيجب عليه أن يسلم له؟',
        Answer('الدية كاملة', false),
        Answer('نصف الدية', true),
        Answer('ثلث الدية', false),
        Answer('ربع الدية', false)),
    Question(
        'الدعاء (بسم الله والصلاة والسلام على رسول الله وعلى آله، اللهم اغفر ذنوبي وافتح لي أبواب رحمتك) يستحب للمسلم أن يدعو به عند؟',
        Answer('دخول المسجد', true),
        Answer('الخروج من المسجد', false),
        Answer('دخول المنزل', false),
        Answer('الخروج من المنزل', false)),
    Question(
        'كم مرة وردت كلمة (تلاوة) في القرآن الكريم؟',
        Answer('ثلاث مرات', false),
        Answer('مرة واحدة', true),
        Answer('خمس مرات', false),
        Answer('سبع مرات', false)),
    Question(
        'صحابي قال له الرسول صلى الله عليه وسلم: ( تمشي وحدك وتموت وحدك وتبعث وحدك) فمن هو؟',
        Answer('أبو موسى الأشعري', false),
        Answer('أبو أيوب الأنصاري', false),
        Answer('أبو ذر الغفاري', true),
        Answer('أبو بصير', false)),
    Question(
        'قال تعالى: (ننزل الملائكة والروح فيها بإذن ربهم) سورة القدر(4) المقصود بـ(الروح) هو؟',
        Answer('ميكائيل', false),
        Answer('اسرافيل', false),
        Answer('عزرائيل', false),
        Answer('جبريل', true)),
    Question(
        'من الذي عقد مع رسول الله صلى الله عليه وسلم صلح الحديبية عن قريش؟',
        Answer('أبو سفيان بن حرب', false),
        Answer('سهيل بن عمرو', true),
        Answer('الوليد بن المغيرة', false),
        Answer('أبو الحكم بن هشام', false)),
    Question(
        'كم كان عمر النبي صلى الله عليه وسلم حين وفاة زوجته خديجة بنت خويلد رضى الله عنها؟',
        Answer('45 عاما', false),
        Answer('48 عاما', false),
        Answer('51 عاما', true),
        Answer('53 عاما', false)),
    Question(
        'ما آخر سورة نزلت في مكة؟',
        Answer('النصر', false),
        Answer('القارعة', false),
        Answer('المرسلات', true),
        Answer('الزلزلة', false)),
    Question(
        'كم ورد لفظ (الصمد) في القرآن الكريم؟',
        Answer('مرة واحدة', true),
        Answer('مرتان', false),
        Answer('أربع مرات', false),
        Answer('ست مرات', false)),
    Question(
        'في عهد من من خلفاء المسلمين وقعت معركة اليرموك؟',
        Answer('أبو بكر الصديق', false),
        Answer('عمر بن الخطاب', true),
        Answer('عثمان بن عفان', false),
        Answer('علي بن أبي طالب', false)),
    Question(
        'متى توفيت أم المؤمنين زينب بنت جحش رضى الله عنها؟',
        Answer('سنة 15 هجرية', false),
        Answer('سنة 20 هجرية', true),
        Answer('سنة 25 هجرية', false),
        Answer('سنة 30 هجرية', false)),
    Question(
        'ما هو الشئ الذي كان النبي صلى الله عليه وسلم لا يرده؟',
        Answer('الطيب', true),
        Answer('الكحل', false),
        Answer('الثياب', false),
        Answer('الطعام', false)),
    Question(
        'كم وردت كلمة (أف) في القرآن الكريم ؟',
        Answer('مرتان', false),
        Answer('ثلاث مرات', true),
        Answer('خمس مرات', false),
        Answer('سبع مرات', false)),
    Question(
        'القائد المسلم الذي فتح مدينة تدمر الأثرية هو؟',
        Answer('خالد بن الوليد', true),
        Answer('عمرو بن العاص', false),
        Answer('شرحبيل بن حسنة', false),
        Answer('سعد بن أبي وقاص', false)),
    Question(
        'في أي عام فرضت زكاة الفطر؟',
        Answer('عام 1 هجرية', false),
        Answer('عام 2 هجرية', true),
        Answer('عام 3 هجرية', false),
        Answer('عام 4 هجرية ', false)),
  ];

  Brain() {
    randAns();
  }

  String getQuestion() {
    return q[i].q;
  }

  List<Answer> getAnswers() {
    print(usedIn);

    return fn;
  }

  bool isAnsCor(Answer a) {
    return (q[i].isCorrect(a));
  }

  void update() {
    i = Random().nextInt(103);
    while (ind.contains(i)) {
      i = Random().nextInt(103);
    }
    ind.add(i);
    randAns();
  }

  void randAns() {
    usedIn = [];
    fn = [];

    tt = q[i].ans.anss;
    while (fn.length != 4) {
      if (!usedIn.contains(l)) {
        fn.add(tt[l]);
        usedIn.add(l);
      }
      l = Random().nextInt(4);
    }
  }

  void reset() {
    ind = [];
  }
}

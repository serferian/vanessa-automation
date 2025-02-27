﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA46_Макеты_для_загрузки_и_обработки_фич

@IgnoreOnCIMainBuild



Функциональность: Демо VA Editor часть один

 
Контекст:
	Дано я запускаю SikuliX сервер
	Дано Я открываю Vanessa-Automation в TestClient для записи автодокументации "TestManager"

	И я устанавливаю профиль цвета "MainForm"
		| 'Шрифт'      | 'arial' |
		| 'ЦветФона'   | 'white' |
		| 'ЦветШрифта' | 'black' |
		| 'Размер'     | '18'    |	
		
	И я устанавливаю основной профиль цвета "MainForm"
	

Сценарий: Демо VA Editor часть один


	#[autodoc.ignorestep]
	* Настройки VA
		И я перехожу в редактор Vanessa Automation из дерева
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "СтраницаВыполнениеСценариев"
		И я устанавливаю флаг с именем 'ВыполнятьШагиАсинхронно'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я устанавливаю флаг с именем 'ПроверкаРаботыVanessaAutomationВРежимеTestClient'
		И в таблице "ДеревоТестов" я активизирую поле с именем "ДеревоТестовИмя"
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
			|'ДобавитьФичуВСписокНедавноЗагруженныхФич("C:\Commons\rep\vanessa-automation\docs\VSL\VanessaEditor\Пример\ПримерVanessaEditor01.feature");'|
			|'СохранитьИСкопироватьНедавноЗагруженныеФичиВИнтерфейс(НедавноЗагруженныеФичи, Истина);'|
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'

		И я перехожу к закладке с именем "ГруппаНастройки"
		И я снимаю флаг с именем 'ПроверкаРаботыVanessaAutomationВРежимеTestClient'
		И в таблице "ДеревоТестов" я активизирую поле с именем "ДеревоТестовИмя"
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		Затем клик на картинку "Гамбургер"
		Затем клик на картинку "НастройкиГамбургер"
		Затем клик на картинку "СкрытьВсеПанелиГамбургер"
		
		


	


	@YandexTTS: ermil,evil 
	И текст субтитров "Привет, Ванесса! Я слышал, что для написания тестов теперь можно использовать новый редактор. Расскажи про это."

	//@YandexTTS: oksana,good 
	И текст субтитров "Привет! Да. Теперь появилась возможность встроить редактор тестов прямо внутрь Vanessa Automation."

	
	* Давай загр^узим демонстрационный фича файл и посмотрим как это работает.
		Дано клик на картинку "Загрузить фичи"
		Дано клик на картинку "ПерваяФичаИзСписка"

		И пауза 1

	* Не много увеличим размер текста
		Затем клик на картинку "ZoomPlus"
		Затем клик на картинку "ZoomPlus"
		И пауза 1


	И видеовставка только текст "Автокомплит"
	И текст субтитров "Посмотрим как работает автокомплит."

	* Достаточно набрать часть шага, чтобы появилось окно подбора шагов.
		Затем клик на картинку "Пример работы с Vanessa Editor"
		Дано я нажимаю хоткей "end" "ctrl"
		И я набираю текст "	я запускаю"
		И пауза 3
		И я нажимаю ENTER

	* При наведении курс^ора мышки на шаг появится его описание из которого можно узнать, что этот шаг делает.
		Дано курсор к картинке "Я запускаю сценарий"
		И Пауза 3

	И видеовставка только текст "Интеграция с Vanessa Automation"

	И текст субтитров "Также теперь многие действия и функции Vanessa Automation научились работать с новым редактором."

	* Например, давай включим запись действий пользователя и накл^икаем несколько шагов. Мы создадим новый элемент справочника и зададим ему имя Тестовый элемент.	
		Затем клик на картинку "Красная точка"
		Затем я жду, что в сообщениях пользователю будет подстрока "Запись действий пользователя начата." в течение 30 секунд
		Затем клик на картинку "Основная"
		Затем клик на картинку "Справочник1"
		Затем клик на картинку "КнопкаСоздать"
		И пауза 1
		И я набираю текст "Тестовый элемент"
		Дано я нажимаю хоткей "tab"
		Дано я нажимаю хоткей "tab" "shift"

		
	* Вернёмся в основной сеанс и остановим запись действий пользователя. При этом в редактор будут добавлены накликанные шаги. Их можно отредактировать если нужно. Или сразу использовать.
		Дано клик на картинку "Основной сеанс"
		Затем клик на картинку "Синий квадрат"
		И я нажимаю ENTER

	И видеовставка только текст "Чтение данных из клиента тестирования"
	И текст субтитров "Теперь посмотрим как можно упростить написание шагов."

	* Сначала попробуем набрать часть шага, который вводит текст в поле.
		Дано я нажимаю хоткей "end" "ctrl"
		И я набираю текст "	в поле с именем ввожу текст"
		И пауза 1

	//Тогда я вызываю исключение "Текст исключения"


	* При этом параметры шагов были заполнены значениями по умолчанию.
		Дано курсор к картинке "АвтоДокЧастьСтрокиПриПодбореШагаИмяПоля"
		И Пауза 2
		Дано курсор к картинке "АвтоДокЧастьСтрокиПриПодбореШагаИмяЗначениеПоля"
		И Пауза 2

	* Теперь попробуем ещё раз подобрать шаг по части строк^и, но перед этим включим чтение данных из активной формы клиента тестирования.
		Дано клик на картинку "ШестеренкаVanessaEditor"
		И пауза 2
		Дано клик на картинку "Использовать данные текущей формы при подборе шагов желтый"
		И пауза 2

	* Нажимаем комбинацию клавиш к^онтрол плюс пробел.
		Дано я нажимаю хоткей " " "ctrl"
		И пауза 1
		
		
	* При этом в первый параметр шага автоматически подставилось имя текущего поля. В данном случае это Наименование.
		Дано курсор к картинке "АвтоДокЧастьСтрокиПриПодбореШагаНаименование"
		И Пауза 4
		
	* А во второй параметр автоматически подставилось значение поля - Тестовый элемент.
		Дано курсор к картинке "АвтоДокЧастьСтрокиПриПодбореШагаТестовыйЭлемент"
		И Пауза 4

	//Тогда я вызываю исключение "Текст исключения"
	

	И видеовставка только текст "Работа с переменными"

		
	@YandexTTS: ermil,evil 
	И текст субтитров "Отлично! А что со значениями переменных?"

	И текст субтитров "Значения переменных тоже показываются."


	* Добавим шаг, который запоминает значение текущего поля в переменную.
		Дано я нажимаю хоткей "end" "ctrl"
		И я набираю текст "	я запоминаю значение текущего поля"
		И пауза 1
		И я нажимаю ENTER

	* И в^ыполним его. например, через контекстное меню.
		Затем клик на картинку "запоминаю значение текущего поля"
		Дано клик правой кнопкой на картинку "запоминаю значение текущего поля"
		Затем клик на картинку "Выполнить шаг контекстное меню"
		И пауза 1

	#[autodoc.ignorestep]
	И Пауза 3
	

	* Переместим мышку к строке шага. При этом отобразилось значение переменной.
		Затем клик на картинку "Пример работы с Vanessa Editor"
		Дано курсор к картинке "ИмяПеременнойЗеленый"
		И Пауза 1
		Дано курсор к картинке "ЗначениеПеременнойВПодсказкеШага"
		И Пауза 2
		
	И видеовставка только текст "Тема редактора"	

	* К встроенному редактору сценарием можно применить одну из знакомых вам тем, например темную тему из Visual Studio Code.
		Затем клик на картинку "ГруппаТемыРедактора"
		Затем клик на картинку "VisualStudioDark"
		
		

	
		
			
	@YandexTTS: ermil,evil 
	И текст субтитров "Спасибо Ванесса! Пойду и запилю новые крутые сценарии!"
			
	Дано текст субтитров "Также новый редактор позволяет работать с точками останова, шагами под сценариев и многим другим, но об этом мы поговорим в следующий раз."

	Дано текст субтитров "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	
					
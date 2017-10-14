class CoursesController < ApplicationController
  def ethics
    @progress = 50

    if params[:number] == nil
      @param = 0
    else
      @param = params[:number]
    end

    @gutschlecht= [
        ["Peter läuft durch die Stadt. Unterwegs beseitigt Peter Scherben auf dem Fahrradweg.", "good", "Wahrscheinlich nicht. Dank Peter werden Fahrradfahrer weniger Platten bekommen und dadurch wird weniger Leid produziert."],
        ["Susanna pflückt alle Äpfel von einem Apfelbaum. Sie isst einen davon und wirft alle anderen in den Müll.", "bad", "Wahrscheinlich nicht. Susanna wirft Äpfel weg, die von anderen Menschen hätten gegessen werden können. Sie hätte mehr Glück produzieren können, wenn sie die Äpfel verteilt hätte."],
        ["Heinrich spendet sein Blut für das Spital in Zürich.", "good", "Wahrscheinlich nicht. Dank Heinrich können Menschen besser überleben und somit wird weniger Leid erzeugt."],
        ["Fritz fährt mit seinem Auto über 80km/h in einer Dreissigerzone.", "bad", "Wahrscheinlich nicht. Fritz kann wegen der hohen Geschwindigkeit weniger schnell bremsen und riskiert unnötigerweise das Leben von anderen Verkehrsteilnehmern. Ein solches Verhalten würde viele Menschen wütend machen."],
        ["Lisa holt die Feuerwehr, obwohl gar kein Feuer brennt.", "bad", "Wahrscheinlich nicht. Wegen Lisa wurde unnötigerweise eine ganze Mannschaft in Stress versetzt und im schlimmsten Fall wird die Feuerwehr woanders benötigt."],
        ["Tamara erfährt, dass der Weg über die Brücke gesperrt ist. Auf dem Rückweg informiert sie andere Passanten, die auch über die Brücke wollten, dass der Weg über die Brücke gesperrt ist.", "good", "Wahrscheinlich nicht. Dank Tamara können sich die anderen Passanten die Mühe sparen, den Weg zur Brücke zu machen."]
    ]

    @problems = [
      "Der Konsequentialismus hat zu wenige Anhänger, um ernst genommen zu werden.",
      "Der Konsequentialismus behauptet, dass wir immer lügen und stehlen sollen.",
      "Wir können die Folgen unserer Handlungen nicht immer vorhersehen oder abschätzen.",
      "Der Konsequentialismus zieht Absichten und Intentionen nicht in Erwägung.",
      "Da die Willensfreiheit eine Illusion ist, kann man sich gar nicht für eine Handlung entscheiden.",
      "Früher oder später hat jede Handlung gute Folgen, deshalb spielt es keine Rolle, wie man sich entscheidet.",
      "In gewissen Situationen verlangt der Konsequentialismus, dass wir lügen, stehlen oder morden sollen.",
      "Der Konsequentialismus verlangt, dass wir vor jeder Entscheidung zu einer Wahrsagerin gehen.",
      "Der Konsequentialismus impliziert, dass jede Ursache eine Wirkung haben muss."
    ]

    @deontvsutil = [
        ["Statt seinem reichen Freund wie versprochen das Geld zurückzugeben, spendet Stefan es an bedürftige Menschen.","ut", "Stefan versucht bedürftigen Menschen zu helfen und bricht dabei ein Versprechen. Er handelt utilitaristisch."],
        ["Lorenz verarztet einen verwundeten, feindlichen Soldaten.", "deon", "Da der Soldat Lorenz feindlich gesinnt ist, wäre es aus der Sicht von Lorenz besser, den feindlichen Soldaten zu töten, statt zu verarzten. Doch Lorenz scheint zu denken, dass es intrinsisch schlecht ist, einem verwundeten Menschen nicht zu helfen."],
        ["Fabian weigert sich, einen Terrorist zu foltern, um die von ihm versteckte Bombe zu finden.", "deon", "Eine Bombe könnte viele Menschen töten und verletzen. Ein Utilitarist würde auf die Folgen der Handlung schauen und sagen, dass durch die Folter weniger Menschen leiden müssten, als wenn nicht gefoltert wurde."],
        ["Lara zündet ein Haus an, um die Behörden auf die mangelhafte Feuerwehr aufmerksam zu machen.", "ut", "Laura erhofft sich durch ihre gefährliche Tat, dass die Behörden mehr in die Feuerwehr investieren. Dabei schaut sie auf die Folgen, nicht auf die Tat selbst."],
        ["Viele Menschen sind krank geworden. Obwohl Nadja weiss, dass ihre Medikamente nichts nützen, erzählt sie den Menschen, dass ihre Medikamente ihnen helfen würden. Sie hofft auf den Placebo-Effekt.", "ut", "Nadja lügt, in der Hoffnung gute Folgen hervorzurufen. Sie schaut auf die Folgen, nicht auf die Handlung selbst."]
    ]

    @conflicts = [
        ["Anna lügt ihre Lehrerin an, damit ihre Schulfreudin keine Strafe bekommt.","ut","Anna macht eine schlechte Tat, um ihrer Freundin zu helfen."],
    ]

    @whatareyou = [
        ["Würdest du einen Menschen umbringen, um 5 Menschen das Leben zu retten?", "Ja, ich würde dafür einen Menschen umbringen.", "Nein, ich würde dafür keinen Menschen umbringen.",[0,1]],
        ["Würdest du lügen, um einen Streit zwischen deinen Freunden zu vermeiden?", "Ja, ich würde dafür lügen.", "Nein, ich würde meinen Freunden die Wahrheit sagen.",[0,1]],
        ["Würdest du einen Lehrer bestechen, so dass ein unartiger Schüler schlechtere Noten bekommt?", "Antwort", "Antwort", [0,1]]
    ]

    @memory = [
        ["Ob eine Handlung gut oder schlecht ist, hängt von den Folgen ab, die eine Handlung nach sich zieht.", 1],
        ["Konsequentialismus", 1],
        ["Ob eine Handlung gut oder schlecht ist, hängt von der Handlung selbst ab.", 2],
        ["Deontologie", 2],
        ["Eine Handlung ist gut, wenn sie viel Glück produziert und schlecht, wenn sie viel Leid verursacht.", 3],
        ["Utilitarismus", 3],
        ["Eine Person ist gut, wenn sie gerecht, tapfer, weise und gemässigt ist.", 4],
        ["Tugendethik", 4],
        ["Was du nicht willst, dass man dir tu, das füg auch keinem andern zu.", 5],
        ["Goldene Regel", 5],
        ["Tugendhaft", 6],
        ["Tugendhaft", 6]
    ]

    @memory = @memory.shuffle
  end
end

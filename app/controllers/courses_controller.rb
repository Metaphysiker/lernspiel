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
        ["Susanna pflückt alle Äpfel von einem Apfelbaum. Sie isst einen davon und wirft alle anderen in den Müll.", "bad", "Wahrscheinlich nicht. Susanna wirft Äpfel weg, die von anderen Menschen hätten gegessen werden sollen. Sie hätte mehr Glück produzieren können, wenn sie die Äpfel verteilt hätte."],
        ["Heinrich spendet sein Blut für das Spital in Zürich.", "good", "Wahrscheinlich nicht. Dank Heinrich können Menschen besser überleben und somit wird weniger Leid erzeugt."],
        ["Fritz fährt mit seinem Auto über 80km/h in einer Dreissigerzone.", "bad", "Wahrscheinlich nicht. Fritz kann wegen der hohen Geschwindigkeit weniger schnell bremsen und riskiert unnötigerweise das Leben von anderen Verkehrsteilnehmern."],
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

  end
end

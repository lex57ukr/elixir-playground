defmodule Playground.Rot13Test do
  use     ExUnit.Case
  alias   Playground.Rot13
  import  Playground.StringHelper

  doctest Rot13

  test "Will decode a string" do
    text = strip_margin(
      "Gurer vf n gvqr va gur nssnvef bs zra,
      |Juvpu gnxra ng gur sybbq, yrnqf ba gb sbeghar.
      |Bzvggrq, nyy gur iblntr bs gurve yvsr vf obhaq
      |va funyybjf naq va zvfrevrf.
      |Ba fhpu n shyy frn ner jr abj nsybng.
      |
      |Naq jr zhfg gnxr gur pheerag jura vg freirf,
      |be ybfr bhe iragherf."
    )

    expected = strip_margin(
      "There is a tide in the affairs of men,
      |Which taken at the flood, leads on to fortune.
      |Omitted, all the voyage of their life is bound
      |in shallows and in miseries.
      |On such a full sea are we now afloat.
      |
      |And we must take the current when it serves,
      |or lose our ventures."
    )

    assert expected == Rot13.encode(text)
  end

  test "Will encode a string" do
    text = strip_margin(
      "There is a tide in the affairs of men,
      |Which taken at the flood, leads on to fortune.
      |Omitted, all the voyage of their life is bound
      |in shallows and in miseries.
      |On such a full sea are we now afloat.
      |
      |And we must take the current when it serves,
      |or lose our ventures."
    )

    expected = strip_margin(
      "Gurer vf n gvqr va gur nssnvef bs zra,
      |Juvpu gnxra ng gur sybbq, yrnqf ba gb sbeghar.
      |Bzvggrq, nyy gur iblntr bs gurve yvsr vf obhaq
      |va funyybjf naq va zvfrevrf.
      |Ba fhpu n shyy frn ner jr abj nsybng.
      |
      |Naq jr zhfg gnxr gur pheerag jura vg freirf,
      |be ybfr bhe iragherf."
    )

    assert expected == Rot13.encode(text)
  end

  test "Will decode a charlist" do
    text = strip_margin(
      'Gurer vf n gvqr va gur nssnvef bs zra,
      |Juvpu gnxra ng gur sybbq, yrnqf ba gb sbeghar.
      |Bzvggrq, nyy gur iblntr bs gurve yvsr vf obhaq
      |va funyybjf naq va zvfrevrf.
      |Ba fhpu n shyy frn ner jr abj nsybng.
      |
      |Naq jr zhfg gnxr gur pheerag jura vg freirf,
      |be ybfr bhe iragherf.'
    )

    expected = strip_margin(
      'There is a tide in the affairs of men,
      |Which taken at the flood, leads on to fortune.
      |Omitted, all the voyage of their life is bound
      |in shallows and in miseries.
      |On such a full sea are we now afloat.
      |
      |And we must take the current when it serves,
      |or lose our ventures.'
    )

    assert expected == Rot13.encode(text)
  end

  test "Will encode a charlist" do
    text = strip_margin(
      'There is a tide in the affairs of men,
      |Which taken at the flood, leads on to fortune.
      |Omitted, all the voyage of their life is bound
      |in shallows and in miseries.
      |On such a full sea are we now afloat.
      |
      |And we must take the current when it serves,
      |or lose our ventures.'
    )

    expected = strip_margin(
      'Gurer vf n gvqr va gur nssnvef bs zra,
      |Juvpu gnxra ng gur sybbq, yrnqf ba gb sbeghar.
      |Bzvggrq, nyy gur iblntr bs gurve yvsr vf obhaq
      |va funyybjf naq va zvfrevrf.
      |Ba fhpu n shyy frn ner jr abj nsybng.
      |
      |Naq jr zhfg gnxr gur pheerag jura vg freirf,
      |be ybfr bhe iragherf.'
    )

    assert expected == Rot13.encode(text)
  end
end

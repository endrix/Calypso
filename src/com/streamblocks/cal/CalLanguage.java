package com.streamblocks.cal;

import com.intellij.lang.Language;

/**
 * Cal Language
 * @author Endri Bezati
 */
public class CalLanguage extends Language {
    public static final CalLanguage INSTANCE = new CalLanguage();

    private CalLanguage() {
        super("Cal");
    }
}

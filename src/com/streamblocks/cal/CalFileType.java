package com.streamblocks.cal;

import com.intellij.openapi.fileTypes.LanguageFileType;
import org.jetbrains.annotations.*;

import javax.swing.*;

/**
 * Cal File Type
 *
 * @author Endri Bezati
 */
public class CalFileType extends LanguageFileType{
    public static final CalFileType INSTANCE = new CalFileType();

    private CalFileType(){
        super(CalLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public String getName(){
        return "Cal file";
    }

    @NotNull
    @Override
    public String getDescription(){
        return "Cal Language file";
    }

    @NotNull
    @Override
    public String getDefaultExtension(){
        return "cal";
    }

    @NotNull
    @Override
    public Icon getIcon(){
        return CalIcons.FILE;
    }

}

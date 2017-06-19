package com.streamblocks.cal.psi;

import com.intellij.psi.tree.IElementType;
import com.streamblocks.cal.CalLanguage;
import org.jetbrains.annotations.*;

/**
 * Cal Element Type
 *
 * @author Endri Bezati
 */
public class CalElementType extends IElementType {
    public CalElementType(@NotNull @NonNls String debugName){
        super(debugName, CalLanguage.INSTANCE);
    }
}

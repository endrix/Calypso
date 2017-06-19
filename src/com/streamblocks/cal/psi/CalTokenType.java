package com.streamblocks.cal.psi;

import com.intellij.psi.tree.IElementType;
import com.streamblocks.cal.CalLanguage;
import org.jetbrains.annotations.*;

/**
 * Cal Token Type
 *
 * @author Endri Bezati
 */
public class CalTokenType extends IElementType {
    public CalTokenType(@NotNull @NonNls String debugName) {
        super(debugName, CalLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "CalTokenType." + super.toString();
    }
}

﻿using System;

namespace TypeCobol.Compiler.CodeElements
{
    /// <summary>
    /// A user-defined word that identifies a paragraph. 
    /// A paragraph-name, because it can be qualified, need not be unique.
    /// </summary>
    public class ParagraphName : Symbol
    {
        public ParagraphName(string userDefinedWord) :
            base(userDefinedWord, SymbolType.ParagraphName)
        { }
    }
}

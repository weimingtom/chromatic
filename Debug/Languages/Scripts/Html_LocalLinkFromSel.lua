(defvar Context,(call WALib(WAMiscAllocMem),WAContext_Size))
(if !Context,(end))
(call WALib(WAMMGetContext),Context)
(defvar Word,(call WALib(WAMMSelectCurrentWord),*Context#WAContext_hCurrentChild))
(if !(call WALib(WAStringLen),Word),(end))
(defvar Title,(call WALib(WAControlGetText),*Context#WAContext_hCurrentChild))
(defvar WordPaste,(call WALib(WAStringCat),"<a href=\"",(call WALib(WAFileGetFileName),Title)))
(setvar WordPaste,(call WALib(WAStringCat),WordPaste,"#"))
(setvar WordPaste,(call WALib(WAStringCat),WordPaste,Word))
(setvar WordPaste,(call WALib(WAStringCat),WordPaste,"\">"))
(setvar WordPaste,(call WALib(WAStringCat),WordPaste,Word))
(setvar WordPaste,(call WALib(WAStringCat),WordPaste,"</a>"))
(call WALib(WAMMInsertText),*Context#WAContext_hCurrentChild,WordPaste)
(call WALib(WAMiscFreeMem),Context)

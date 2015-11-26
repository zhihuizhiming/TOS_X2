.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field protected final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 73
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 74
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 75
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .param p1, "mgr"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 67
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureDefaultComposingSpans()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 573
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 575
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 576
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 582
    .local v0, "context":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010230

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 587
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 588
    .local v1, "style":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 589
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 590
    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 595
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "style":Ljava/lang/CharSequence;
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 577
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 578
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 580
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 125
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 121
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 78
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 79
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 80
    .local v2, "sps":[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 81
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 82
    aget-object v1, v2, v0

    .line 83
    .local v1, "o":Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 81
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z

    .prologue
    const/4 v6, -0x1

    .line 599
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 600
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    .line 692
    :goto_0
    return-void

    .line 604
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 607
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 608
    .local v0, "a":I
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 612
    .local v1, "b":I
    if-ge v1, v0, :cond_1

    .line 613
    move v5, v0

    .line 614
    .local v5, "tmp":I
    move v0, v1

    .line 615
    move v1, v5

    .line 618
    .end local v5    # "tmp":I
    :cond_1
    if-eq v0, v6, :cond_3

    if-eq v1, v6, :cond_3

    .line 619
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 632
    :cond_2
    :goto_1
    if-eqz p3, :cond_8

    .line 633
    const/4 v4, 0x0

    .line 634
    .local v4, "sp":Landroid/text/Spannable;
    instance-of v6, p1, Landroid/text/Spannable;

    if-nez v6, :cond_6

    .line 641
    new-instance v4, Landroid/text/SpannableString;

    .end local v4    # "sp":Landroid/text/Spannable;
    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 643
    .restart local v4    # "sp":Landroid/text/Spannable;
    move-object p1, v4

    .line 644
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 645
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_7

    .line 646
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_7

    .line 647
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v8

    const/16 v9, 0x121

    invoke-interface {v4, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 646
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 621
    .end local v3    # "i":I
    .end local v4    # "sp":Landroid/text/Spannable;
    :cond_3
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 622
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 623
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 624
    :cond_4
    if-gez v1, :cond_5

    const/4 v1, 0x0

    .line 625
    :cond_5
    if-ge v1, v0, :cond_2

    .line 626
    move v5, v0

    .line 627
    .restart local v5    # "tmp":I
    move v0, v1

    .line 628
    move v1, v5

    goto :goto_1

    .end local v5    # "tmp":I
    .restart local v4    # "sp":Landroid/text/Spannable;
    :cond_6
    move-object v4, p1

    .line 652
    check-cast v4, Landroid/text/Spannable;

    .line 654
    :cond_7
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 673
    .end local v4    # "sp":Landroid/text/Spannable;
    :cond_8
    if-lez p2, :cond_b

    .line 674
    add-int/lit8 v6, v1, -0x1

    add-int/2addr p2, v6

    .line 678
    :goto_3
    if-gez p2, :cond_9

    const/4 p2, 0x0

    .line 679
    :cond_9
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v6

    if-le p2, v6, :cond_a

    .line 680
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result p2

    .line 681
    :cond_a
    invoke-static {v2, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 683
    invoke-interface {v2, v0, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 691
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 676
    :cond_b
    add-int/2addr p2, v0

    goto :goto_3
.end method

.method private sendCurrentText()V
    .locals 11

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 534
    iget-boolean v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v8

    .line 539
    .local v8, "content":Landroid/text/Editable;
    if-eqz v8, :cond_0

    .line 540
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v6

    .line 541
    .local v6, "N":I
    if-eqz v6, :cond_0

    .line 544
    if-ne v6, v2, :cond_4

    .line 547
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_2

    .line 548
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 550
    :cond_2
    new-array v7, v2, [C

    .line 551
    .local v7, "chars":[C
    invoke-interface {v8, v5, v2, v7, v5}, Landroid/text/Editable;->getChars(II[CI)V

    .line 552
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v9

    .line 553
    .local v9, "events":[Landroid/view/KeyEvent;
    if-eqz v9, :cond_4

    .line 554
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v1, v9

    if-ge v10, v1, :cond_3

    .line 556
    aget-object v1, v9, v10

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 554
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 558
    :cond_3
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 565
    .end local v7    # "chars":[C
    .end local v9    # "events":[Landroid/view/KeyEvent;
    .end local v10    # "i":I
    :cond_4
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 567
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 568
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 92
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v7, 0x121

    .line 96
    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 97
    .local v3, "sps":[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 98
    array-length v4, v3

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 99
    aget-object v2, v3, v1

    .line 100
    .local v2, "o":Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    .line 101
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 98
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 106
    .local v0, "fl":I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_0

    .line 108
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 116
    .end local v0    # "fl":I
    .end local v1    # "i":I
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 118
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .param p1, "states"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 172
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 174
    :goto_0
    return v1

    .line 173
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 174
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 199
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 10
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v9, -0x1

    .line 212
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 213
    .local v4, "content":Landroid/text/Editable;
    if-nez v4, :cond_0

    const/4 v9, 0x0

    .line 259
    :goto_0
    return v9

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 217
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 218
    .local v0, "a":I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 220
    .local v1, "b":I
    if-le v0, v1, :cond_1

    .line 221
    move v8, v0

    .line 222
    .local v8, "tmp":I
    move v0, v1

    .line 223
    move v1, v8

    .line 227
    .end local v8    # "tmp":I
    :cond_1
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 228
    .local v2, "ca":I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 229
    .local v3, "cb":I
    if-ge v3, v2, :cond_2

    .line 230
    move v8, v2

    .line 231
    .restart local v8    # "tmp":I
    move v2, v3

    .line 232
    move v3, v8

    .line 234
    .end local v8    # "tmp":I
    :cond_2
    if-eq v2, v9, :cond_4

    if-eq v3, v9, :cond_4

    .line 235
    if-ge v2, v0, :cond_3

    move v0, v2

    .line 236
    :cond_3
    if-le v3, v1, :cond_4

    move v1, v3

    .line 239
    :cond_4
    const/4 v5, 0x0

    .line 241
    .local v5, "deleted":I
    if-lez p1, :cond_6

    .line 242
    sub-int v7, v0, p1

    .line 243
    .local v7, "start":I
    if-gez v7, :cond_5

    const/4 v7, 0x0

    .line 244
    :cond_5
    invoke-interface {v4, v7, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 245
    sub-int v5, v0, v7

    .line 248
    .end local v7    # "start":I
    :cond_6
    if-lez p2, :cond_8

    .line 249
    sub-int/2addr v1, v5

    .line 251
    add-int v6, v1, p2

    .line 252
    .local v6, "end":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    if-le v6, v9, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 254
    :cond_7
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 257
    .end local v6    # "end":I
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 259
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 270
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 272
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 274
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 275
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 277
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 6
    .param p1, "reqModes"    # I

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-boolean v5, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-eqz v5, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v4

    .line 288
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 289
    .local v2, "content":Landroid/text/Editable;
    if-eqz v2, :cond_0

    .line 291
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 292
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 294
    .local v1, "b":I
    if-le v0, v1, :cond_2

    .line 295
    move v3, v0

    .line 296
    .local v3, "tmp":I
    move v0, v1

    .line 297
    move v1, v3

    .line 300
    .end local v3    # "tmp":I
    :cond_2
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 137
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 139
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 346
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 347
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-object v4

    .line 349
    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 350
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 352
    .local v1, "b":I
    if-le v0, v1, :cond_2

    .line 353
    move v3, v0

    .line 354
    .local v3, "tmp":I
    move v0, v1

    .line 355
    move v1, v3

    .line 358
    .end local v3    # "tmp":I
    :cond_2
    if-eq v0, v1, :cond_0

    .line 360
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_3

    .line 361
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 363
    :cond_3
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 372
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 396
    :goto_0
    return-object v4

    .line 374
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 375
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 377
    .local v1, "b":I
    if-le v0, v1, :cond_1

    .line 378
    move v3, v0

    .line 379
    .local v3, "tmp":I
    move v0, v1

    .line 380
    move v1, v3

    .line 384
    .end local v3    # "tmp":I
    :cond_1
    if-gez v1, :cond_2

    .line 385
    const/4 v1, 0x0

    .line 388
    :cond_2
    add-int v4, v1, p1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 389
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int p1, v4, v1

    .line 393
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 394
    add-int v4, v1, p1

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 396
    :cond_4
    add-int v4, v1, p1

    invoke-static {v2, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 316
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 338
    :goto_0
    return-object v4

    .line 318
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 319
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 321
    .local v1, "b":I
    if-le v0, v1, :cond_1

    .line 322
    move v3, v0

    .line 323
    .local v3, "tmp":I
    move v0, v1

    .line 324
    move v1, v3

    .line 327
    .end local v3    # "tmp":I
    :cond_1
    if-gtz v0, :cond_2

    .line 328
    const-string v4, ""

    goto :goto_0

    .line 331
    :cond_2
    if-le p1, v0, :cond_3

    .line 332
    move p1, v0

    .line 335
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 336
    sub-int v4, v0, p1

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 338
    :cond_4
    sub-int v4, v0, p1

    invoke-static {v2, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 15
    .param p1, "actionCode"    # I

    .prologue
    .line 403
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 404
    .local v1, "eventTime":J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 409
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 414
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method protected reportFinish()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 529
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 530
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 511
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 512
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 513
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_0
    if-nez v0, :cond_0

    .line 514
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 518
    :cond_0
    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 521
    :cond_1
    monitor-exit v2

    .line 522
    const/4 v1, 0x0

    return v1

    .line 512
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setComposingRegion(II)Z
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v7, 0x121

    .line 443
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 444
    .local v2, "content":Landroid/text/Editable;
    if-eqz v2, :cond_6

    .line 445
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 446
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 447
    move v0, p1

    .line 448
    .local v0, "a":I
    move v1, p2

    .line 449
    .local v1, "b":I
    if-le v0, v1, :cond_0

    .line 450
    move v5, v0

    .line 451
    .local v5, "tmp":I
    move v0, v1

    .line 452
    move v1, v5

    .line 455
    .end local v5    # "tmp":I
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 456
    .local v4, "length":I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 457
    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 458
    :cond_2
    if-le v0, v4, :cond_3

    move v0, v4

    .line 459
    :cond_3
    if-le v1, v4, :cond_4

    move v1, v4

    .line 461
    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 462
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 463
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 464
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 469
    .end local v3    # "i":I
    :cond_5
    sget-object v6, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 473
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 474
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 476
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v4    # "length":I
    :cond_6
    const/4 v6, 0x1

    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v0, 0x1

    .line 438
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 439
    return v0
.end method

.method public setSelection(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v2, 0x1

    .line 485
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 486
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 503
    :cond_0
    :goto_0
    return v2

    .line 487
    :cond_1
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 488
    .local v1, "len":I
    if-gt p1, v1, :cond_0

    if-gt p2, v1, :cond_0

    .line 495
    if-ne p1, p2, :cond_2

    const/16 v3, 0x800

    invoke-static {v0, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 501
    :cond_2
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

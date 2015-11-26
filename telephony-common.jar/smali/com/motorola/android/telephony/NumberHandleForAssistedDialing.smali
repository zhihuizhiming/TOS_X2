.class public abstract Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;
.super Ljava/lang/Object;
.source "NumberHandleForAssistedDialing.java"


# static fields
.field public static final CUR_COUNTRY_CODE:Ljava/lang/String; = "cur_country_code"

.field public static final CUR_COUNTRY_IDD:Ljava/lang/String; = "cur_country_idd"

.field public static final CUR_COUNTRY_MCC:Ljava/lang/String; = "cur_country_mcc"

.field public static final CUR_COUNTRY_NDD:Ljava/lang/String; = "cur_country_ndd"

.field public static final CUR_COUNTRY_UPDATED_BY_USER:Ljava/lang/String; = "cur_country_updated_by_user"

.field private static final DBG:Z = false

.field public static final REF_COUNTRY_AREA_CODE:Ljava/lang/String; = "ref_country_area_code"

.field public static final REF_COUNTRY_CODE:Ljava/lang/String; = "ref_country_code"

.field public static final REF_COUNTRY_IDD:Ljava/lang/String; = "ref_country_idd"

.field public static final REF_COUNTRY_MCC:Ljava/lang/String; = "ref_country_mcc"

.field public static final REF_COUNTRY_NDD:Ljava/lang/String; = "ref_country_ndd"

.field public static final US_CC:Ljava/lang/String; = "1"

.field public static final US_IDD:Ljava/lang/String; = "011"

.field public static final US_NDD:Ljava/lang/String; = "1"

.field protected static mDisableVZWSpecificADRules:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected cr:Landroid/content/ContentResolver;

.field protected isoCountryName:Ljava/lang/String;

.field protected mCurrentMcc:I

.field protected mMccTable:Lcom/motorola/android/telephony/MCCTables;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v1, "NumberHandleForAssistedDialing"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    .line 31
    iput v3, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 34
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    .line 49
    new-instance v1, Lcom/motorola/android/telephony/MCCTables;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 51
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sput-boolean v3, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    goto :goto_0
.end method


# virtual methods
.method protected checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "otaIdd"    # Ljava/lang/String;

    .prologue
    .line 350
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 351
    :cond_0
    const/4 v5, 0x0

    .line 369
    :goto_0
    return-object v5

    .line 354
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 355
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 356
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 358
    .local v1, "firstCharAdded":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 359
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 360
    .local v0, "c":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    if-nez v1, :cond_3

    .line 361
    :cond_2
    const/4 v1, 0x1

    .line 362
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 365
    :cond_3
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 369
    .end local v0    # "c":C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method protected concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "ndd"    # Ljava/lang/String;
    .param p2, "sourceNumber"    # Ljava/lang/String;
    .param p3, "mcc"    # I

    .prologue
    .line 553
    packed-switch p3, :pswitch_data_0

    .line 575
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "retString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 556
    .end local v0    # "retString":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    move-object v0, p2

    .restart local v0    # "retString":Ljava/lang/String;
    goto :goto_0

    .line 561
    .end local v0    # "retString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const-string v1, "10"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "retString":Ljava/lang/String;
    goto :goto_0

    .line 565
    .end local v0    # "retString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    move-object v0, p2

    .restart local v0    # "retString":Ljava/lang/String;
    goto :goto_0

    .line 571
    .end local v0    # "retString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .restart local v0    # "retString":Ljava/lang/String;
    goto :goto_0

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_0
    .end packed-switch
.end method

.method protected getAreaCode(I)Ljava/lang/String;
    .locals 3
    .param p1, "refMcc"    # I

    .prologue
    .line 584
    const-string v1, ""

    .line 585
    .local v1, "retString":Ljava/lang/String;
    const/4 v0, -0x1

    .line 587
    .local v0, "areaCodeLength":I
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNANPMCC(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    const/4 v0, 0x3

    .line 597
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 598
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 600
    if-nez v1, :cond_1

    const-string v1, ""

    .line 601
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_2

    .line 602
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 605
    :goto_2
    return-object v2

    .line 592
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 600
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v2, v1}, Lcom/motorola/android/telephony/MCCTables;->formatNANPMDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 605
    goto :goto_2
.end method

.method public getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sourceNumber"    # Ljava/lang/String;
    .param p2, "byWhom"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getPostDialFirstIndex(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "postDialFirstIndex":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 75
    move-object v1, p1

    .line 76
    .local v1, "manipulatingNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .line 82
    .local v3, "postDialNumber":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_3

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 90
    .local v0, "manipulatedNumber":Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_4

    .line 91
    const/4 v0, 0x0

    .line 96
    .end local v0    # "manipulatedNumber":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v0

    .line 78
    .end local v1    # "manipulatingNumber":Ljava/lang/String;
    .end local v3    # "postDialNumber":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 79
    .restart local v1    # "manipulatingNumber":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "postDialNumber":Ljava/lang/String;
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getManipulatedNumberWithoutPostDial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "manipulatedNumber":Ljava/lang/String;
    goto :goto_1

    .line 93
    :cond_4
    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method protected abstract getManipulatedNumberWithoutPostDial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected getPostDialFirstIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 417
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_0
    move v0, v2

    .line 426
    :cond_1
    :goto_0
    return v0

    .line 420
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 421
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 422
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 426
    goto :goto_0
.end method

.method protected hasPlusCode(Ljava/lang/String;)Z
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 377
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_2

    :cond_0
    move v2, v3

    .line 388
    :cond_1
    :goto_0
    return v2

    .line 380
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 383
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 384
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 388
    goto :goto_0
.end method

.method protected hasSpecialChar(Ljava/lang/String;)Z
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 396
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_2

    :cond_0
    move v3, v4

    .line 410
    :cond_1
    :goto_0
    return v3

    .line 399
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 403
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 404
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 405
    .local v0, "c":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_4

    :cond_3
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1

    .line 403
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "c":C
    :cond_5
    move v3, v4

    .line 410
    goto :goto_0
.end method

.method protected isNANPMCC(I)Z
    .locals 1
    .param p1, "refMcc"    # I

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "ret":Z
    sparse-switch p1, :sswitch_data_0

    .line 467
    const/4 v0, 0x0

    .line 470
    :goto_0
    return v0

    .line 464
    :sswitch_0
    const/4 v0, 0x1

    .line 465
    goto :goto_0

    .line 432
    :sswitch_data_0
    .sparse-switch
        0x12e -> :sswitch_0
        0x136 -> :sswitch_0
        0x137 -> :sswitch_0
        0x138 -> :sswitch_0
        0x139 -> :sswitch_0
        0x13a -> :sswitch_0
        0x13b -> :sswitch_0
        0x13c -> :sswitch_0
        0x14a -> :sswitch_0
        0x14c -> :sswitch_0
        0x152 -> :sswitch_0
        0x156 -> :sswitch_0
        0x158 -> :sswitch_0
        0x15a -> :sswitch_0
        0x15c -> :sswitch_0
        0x15e -> :sswitch_0
        0x160 -> :sswitch_0
        0x162 -> :sswitch_0
        0x164 -> :sswitch_0
        0x166 -> :sswitch_0
        0x168 -> :sswitch_0
        0x16c -> :sswitch_0
        0x16d -> :sswitch_0
        0x16e -> :sswitch_0
        0x172 -> :sswitch_0
        0x176 -> :sswitch_0
        0x178 -> :sswitch_0
        0x216 -> :sswitch_0
        0x217 -> :sswitch_0
        0x220 -> :sswitch_0
    .end sparse-switch
.end method

.method protected isValidCountryCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isValidIDD(Ljava/lang/String;)Z
    .locals 1
    .param p1, "idd"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidIDD(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isValidLocalNumber(ILjava/lang/String;)Z
    .locals 4
    .param p1, "refMcc"    # I
    .param p2, "sourceNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    .line 474
    const/4 v1, 0x0

    .line 475
    .local v1, "ret":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 477
    .local v0, "numberLength":I
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNANPMCC(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    if-ne v0, v3, :cond_0

    .line 479
    const/4 v1, 0x1

    .line 493
    :cond_0
    :goto_0
    return v1

    .line 482
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 489
    const/4 v1, 0x0

    goto :goto_0

    .line 484
    :pswitch_0
    if-eq v0, v3, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 485
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_0
    .end packed-switch
.end method

.method protected isValidLongNumber(ILjava/lang/String;)Z
    .locals 4
    .param p1, "refMcc"    # I
    .param p2, "sourceNumber"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, "ret":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 500
    .local v0, "numberLength":I
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNANPMCC(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    if-ne v0, v3, :cond_0

    .line 502
    const/4 v1, 0x1

    .line 519
    :cond_0
    :goto_0
    return v1

    .line 505
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 513
    if-ne v0, v3, :cond_0

    .line 514
    const/4 v1, 0x1

    goto :goto_0

    .line 508
    :pswitch_0
    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    const/4 v1, 0x1

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_0
    .end packed-switch
.end method

.method protected isValidNANPAreaCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "areaCode"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidNANPAreaCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isValidNDDLongNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "refMcc"    # I
    .param p2, "refNdd"    # Ljava/lang/String;
    .param p3, "sourceNumber"    # Ljava/lang/String;

    .prologue
    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, "ret":Z
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 526
    .local v0, "numberLength":I
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNANPMCC(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    const-string v2, "1"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    const/4 v1, 0x1

    .line 548
    :cond_0
    :goto_0
    return v1

    .line 531
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 541
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    if-ne v0, v2, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    const/4 v1, 0x1

    goto :goto_0

    .line 533
    :pswitch_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    const/16 v2, 0xc

    if-gt v0, v2, :cond_0

    .line 535
    const-string v2, "0"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    const/4 v1, 0x1

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_0
    .end packed-switch
.end method

.method protected manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 27
    .param p1, "sourceNumber"    # Ljava/lang/String;
    .param p2, "byWhom"    # Ljava/lang/String;
    .param p3, "isNBPCDAllowed"    # Z

    .prologue
    .line 113
    move-object/from16 v6, p1

    .line 114
    .local v6, "manipulatedNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 126
    .local v7, "numLength":I
    const-string v4, ""

    .line 129
    .local v4, "areaCode":Ljava/lang/String;
    sget-object v24, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v24

    .line 130
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "cur_country_idd"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 131
    .local v10, "otaIdd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "cur_country_ndd"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 132
    .local v13, "otaNdd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "cur_country_code"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "otaCC":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "cur_country_mcc"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 135
    .local v12, "otaMcc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "ref_country_idd"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 136
    .local v17, "refIdd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "ref_country_ndd"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 137
    .local v20, "refNdd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "ref_country_code"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 138
    .local v15, "refCC":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "ref_country_mcc"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 139
    .local v19, "refMcc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "cur_country_updated_by_user"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 143
    .local v5, "areaCodeUpdated":I
    if-eqz v5, :cond_0

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "ref_country_area_code"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    :cond_0
    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    if-nez v5, :cond_1

    .line 150
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getAreaCode(I)Ljava/lang/String;

    move-result-object v4

    .line 164
    :cond_1
    if-nez v10, :cond_2

    const-string v10, ""

    .line 165
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 167
    .local v11, "otaIddLength":I
    if-nez v13, :cond_3

    const-string v13, ""

    .line 168
    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 170
    .local v14, "otaNddLength":I
    if-nez v8, :cond_4

    const-string v8, ""

    .line 171
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 173
    .local v9, "otaCCLength":I
    if-nez v17, :cond_5

    const-string v17, ""

    .line 174
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    .line 176
    .local v18, "refIddLength":I
    if-nez v20, :cond_6

    const-string v20, ""

    .line 177
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    .line 179
    .local v21, "refNddLength":I
    if-nez v15, :cond_7

    const-string v15, ""

    .line 180
    :cond_7
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 182
    .local v16, "refCCLength":I
    if-nez v4, :cond_8

    const-string v4, ""

    .line 184
    :cond_8
    if-eqz v7, :cond_e

    .line 186
    if-nez p3, :cond_b

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 188
    if-nez v6, :cond_9

    .line 189
    const/16 v23, 0x0

    .line 326
    :goto_0
    return-object v23

    .line 147
    .end local v5    # "areaCodeUpdated":I
    .end local v8    # "otaCC":Ljava/lang/String;
    .end local v9    # "otaCCLength":I
    .end local v10    # "otaIdd":Ljava/lang/String;
    .end local v11    # "otaIddLength":I
    .end local v12    # "otaMcc":I
    .end local v13    # "otaNdd":Ljava/lang/String;
    .end local v14    # "otaNddLength":I
    .end local v15    # "refCC":Ljava/lang/String;
    .end local v16    # "refCCLength":I
    .end local v17    # "refIdd":Ljava/lang/String;
    .end local v18    # "refIddLength":I
    .end local v19    # "refMcc":I
    .end local v20    # "refNdd":Ljava/lang/String;
    .end local v21    # "refNddLength":I
    :catchall_0
    move-exception v23

    :try_start_1
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .line 191
    .restart local v5    # "areaCodeUpdated":I
    .restart local v8    # "otaCC":Ljava/lang/String;
    .restart local v9    # "otaCCLength":I
    .restart local v10    # "otaIdd":Ljava/lang/String;
    .restart local v11    # "otaIddLength":I
    .restart local v12    # "otaMcc":I
    .restart local v13    # "otaNdd":Ljava/lang/String;
    .restart local v14    # "otaNddLength":I
    .restart local v15    # "refCC":Ljava/lang/String;
    .restart local v16    # "refCCLength":I
    .restart local v17    # "refIdd":Ljava/lang/String;
    .restart local v18    # "refIddLength":I
    .restart local v19    # "refMcc":I
    .restart local v20    # "refNdd":Ljava/lang/String;
    .restart local v21    # "refNddLength":I
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 192
    const/16 v23, 0x0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    const-string v24, "+"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 193
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_a
    move-object/from16 v23, v6

    .line 195
    goto :goto_0

    .line 198
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->hasPlusCode(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 199
    const/16 v23, 0x0

    goto :goto_0

    .line 204
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->hasSpecialChar(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 205
    const/16 v23, 0x0

    goto :goto_0

    .line 208
    :cond_d
    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    const-string v24, "+"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 209
    if-nez p3, :cond_e

    .line 214
    add-int/lit8 v23, v9, 0x1

    move/from16 v0, v23

    if-lt v7, v0, :cond_10

    const/16 v23, 0x1

    add-int/lit8 v24, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 216
    add-int/lit8 v23, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1, v12}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 322
    :cond_e
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 323
    const/4 v6, 0x0

    :cond_f
    move-object/from16 v23, v6

    .line 326
    goto/16 :goto_0

    .line 221
    :cond_10
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v7, v0, :cond_11

    const/16 v23, 0x1

    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    :cond_11
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v7, v0, :cond_12

    const/16 v23, 0x1

    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    const/16 v23, 0x1

    const/16 v24, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    :cond_12
    const/16 v23, 0x3

    move/from16 v0, v23

    if-le v7, v0, :cond_e

    const/16 v23, 0x1

    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    const/16 v23, 0x1

    const/16 v24, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    const/16 v23, 0x1

    const/16 v24, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 229
    :cond_13
    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 238
    :cond_14
    const-string v23, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidLongNumber(ILjava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_16

    .line 242
    if-eqz p3, :cond_15

    .line 243
    const-string v23, "+"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 245
    :cond_15
    invoke-virtual {v10, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 248
    :cond_16
    const-string v23, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidNDDLongNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_18

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_18

    .line 252
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 253
    .local v22, "tempNumber":Ljava/lang/String;
    if-eqz p3, :cond_17

    .line 254
    const-string v23, "+"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 256
    :cond_17
    invoke-virtual {v10, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 262
    .end local v22    # "tempNumber":Ljava/lang/String;
    :cond_18
    const-string v23, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidLocalNumber(ILjava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1c

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_19

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_1c

    .line 266
    :cond_19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v21

    if-le v0, v1, :cond_1a

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 268
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 270
    :cond_1a
    if-eqz p3, :cond_1b

    .line 271
    const-string v23, "+"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 274
    :cond_1b
    invoke-virtual {v10, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 287
    :cond_1c
    add-int v23, v11, v9

    move/from16 v0, v23

    if-lt v7, v0, :cond_1e

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 289
    if-eqz p3, :cond_1d

    const-string v23, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 290
    const-string v23, "+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 291
    :cond_1d
    add-int v23, v11, v9

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 293
    add-int v23, v11, v9

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1, v12}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 299
    :cond_1e
    move/from16 v0, v18

    if-lt v7, v0, :cond_e

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 303
    if-eqz p3, :cond_1f

    .line 304
    const-string v23, "+"

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 307
    :cond_1f
    add-int v23, v18, v9

    move/from16 v0, v23

    if-lt v7, v0, :cond_20

    add-int v23, v18, v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 310
    add-int v23, v18, v9

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1, v12}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 315
    :cond_20
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1
.end method

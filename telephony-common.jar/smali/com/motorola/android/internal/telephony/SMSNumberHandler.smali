.class public Lcom/motorola/android/internal/telephony/SMSNumberHandler;
.super Ljava/lang/Object;
.source "SMSNumberHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;
    }
.end annotation


# static fields
.field private static ALL_COUNTRY_CODES:[I = null

.field private static final DBG:Ljava/lang/Boolean;

.field public static final GSM_UMTS_NETWORK:I = 0x0

.field private static IDDS_MAPS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MAX_COUNTRY_CODES_LENGTH:I = 0x0

.field private static final MIN_COUNTRY_AREA_LOCAL_LENGTH:I = 0xa

.field private static MULTI_IDDS_MAPS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final NANP_CC:I = 0x1

.field private static final NANP_IDD:Ljava/lang/String; = "011"

.field private static final NANP_LONG_LENGTH:I = 0xb

.field private static final NANP_MEDIUM_LENGTH:I = 0xa

.field private static final NANP_NDD:Ljava/lang/String; = "1"

.field private static final NANP_SHORT_LENGTH:I = 0x7

.field private static final NP_CC_AREA_LOCAL:I = 0x68

.field private static final NP_HOMEIDD_CC_AREA_LOCAL:I = 0x65

.field private static final NP_INTERNATIONAL_BEGIN:I = 0x64

.field private static final NP_LOCALIDD_CC_AREA_LOCAL:I = 0x67

.field private static final NP_LOCAL_NUMBER:I = 0xc9

.field private static final NP_NANP_AREA_LOCAL:I = 0x2

.field private static final NP_NANP_BEGIN:I = 0x1

.field private static final NP_NANP_LOCAL:I = 0x1

.field private static final NP_NANP_LOCALIDD_CC_AREA_LOCAL:I = 0x5

.field private static final NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x6

.field private static final NP_NANP_NBPCD_NDD_AREA_LOCAL:I = 0x4

.field private static final NP_NANP_NDD_AREA_LOCAL:I = 0x3

.field private static final NP_NBPCD_CC_AREA_LOCAL:I = 0x66

.field private static final NP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x64

.field private static final NP_NONE:I = 0x0

.field private static final NP_OTHERS_BEGIN:I = 0xc8

.field private static final NP_SHORT_CODE:I = 0xc8

.field public static final OTHER_CDMA_NETWORK:I = 0x2

.field private static final PLUS_SIGN:Ljava/lang/String; = "+"

.field private static final TAG:Ljava/lang/String; = "SMSNumberHandler"

.field public static final VERIZON_CDMA_NETWORK:I = 0x1


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->DBG:Ljava/lang/Boolean;

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->IDDS_MAPS:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    .line 129
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "724"

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "0014"

    aput-object v4, v3, v5

    const-string v4, "0015"

    aput-object v4, v3, v6

    const-string v4, "0021"

    aput-object v4, v3, v7

    const-string v4, "0023"

    aput-object v4, v3, v8

    const-string v4, "0031"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "456"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v5

    const-string v4, "007"

    aput-object v4, v3, v6

    const-string v4, "008"

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "732"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "00444"

    aput-object v4, v3, v5

    const-string v4, "005"

    aput-object v4, v3, v6

    const-string v4, "007"

    aput-object v4, v3, v7

    const-string v4, "009"

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "244"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "00"

    aput-object v4, v3, v5

    const-string v4, "990"

    aput-object v4, v3, v6

    const-string v4, "994"

    aput-object v4, v3, v7

    const-string v4, "999"

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "510"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v5

    const-string v4, "008"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "425"

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "00"

    aput-object v4, v3, v5

    const-string v4, "012"

    aput-object v4, v3, v6

    const-string v4, "013"

    aput-object v4, v3, v7

    const-string v4, "014"

    aput-object v4, v3, v8

    const-string v4, "018"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "525"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v5

    const-string v4, "008"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "450"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v5

    const-string v4, "002"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->mResolver:Landroid/content/ContentResolver;

    .line 170
    return-void
.end method

.method private checkNANP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;)I
    .locals 10
    .param p1, "numberEntry"    # Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 418
    .local p2, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 419
    .local v5, "isNANP":Z
    iget-object v6, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->number:Ljava/lang/String;

    .line 421
    .local v6, "number":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_2

    .line 423
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 424
    .local v1, "firstChar":C
    const/16 v8, 0x32

    if-lt v1, v8, :cond_0

    const/16 v8, 0x39

    if-gt v1, v8, :cond_0

    .line 425
    const/4 v5, 0x1

    .line 426
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/4 v8, 0x7

    if-ge v2, v8, :cond_0

    .line 427
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 428
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 429
    const/4 v5, 0x0

    .line 434
    .end local v0    # "c":C
    .end local v2    # "i":I
    :cond_0
    if-eqz v5, :cond_8

    .line 435
    const/4 v8, 0x1

    .line 486
    .end local v1    # "firstChar":C
    :goto_1
    return v8

    .line 426
    .restart local v0    # "c":C
    .restart local v1    # "firstChar":C
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "c":C
    .end local v1    # "firstChar":C
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    .line 439
    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 440
    const/4 v8, 0x2

    goto :goto_1

    .line 442
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_4

    .line 446
    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 447
    const/4 v8, 0x3

    goto :goto_1

    .line 449
    :cond_4
    const-string v8, "+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 450
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 451
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_5

    .line 455
    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 456
    const/4 v8, 0x4

    goto :goto_1

    .line 458
    :cond_5
    const-string v8, "011"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_8

    .line 462
    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 463
    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 464
    const/4 v8, 0x6

    goto :goto_1

    .line 470
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 471
    .local v4, "idd":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 472
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 475
    .local v7, "number2":Ljava/lang/String;
    if-eqz v7, :cond_7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 476
    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 477
    iput-object v4, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->IDD:Ljava/lang/String;

    .line 478
    const/4 v8, 0x5

    goto/16 :goto_1

    .line 486
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "idd":Ljava/lang/String;
    .end local v7    # "number2":Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method private checkNP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 8
    .param p1, "numberEntry"    # Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;
    .param p3, "homeIDD"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 345
    .local p2, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->number:Ljava/lang/String;

    .line 346
    .local v3, "number":Ljava/lang/String;
    const/4 v0, -0x1

    .line 347
    .local v0, "countryCode":I
    const-string v7, "+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 349
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "numberNoNBPCD":Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 352
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "numberCountryAreaLocal":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 354
    iput v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    .line 355
    const/16 v7, 0x64

    .line 386
    .end local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    .end local v6    # "numberNoNBPCD":Ljava/lang/String;
    :goto_0
    return v7

    .line 357
    .restart local v6    # "numberNoNBPCD":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 358
    iput v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    .line 359
    const/16 v7, 0x66

    goto :goto_0

    .line 362
    .end local v6    # "numberNoNBPCD":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 364
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 365
    .restart local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 366
    iput v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    .line 367
    const/16 v7, 0x65

    goto :goto_0

    .line 370
    .end local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 371
    .local v1, "exitCode":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 372
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "numberNoIDD":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 374
    iput v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    .line 375
    iput-object v1, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->IDD:Ljava/lang/String;

    .line 376
    const/16 v7, 0x67

    goto :goto_0

    .line 381
    .end local v1    # "exitCode":Ljava/lang/String;
    .end local v5    # "numberNoIDD":Ljava/lang/String;
    :cond_4
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 382
    iput v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    .line 383
    const/16 v7, 0x68

    goto :goto_0

    .line 386
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private formatNumberForVZW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 12
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "activeMcc"    # Ljava/lang/String;
    .param p3, "activeMnc"    # Ljava/lang/String;
    .param p4, "isNBPCDSupported"    # Z
    .param p5, "networkType"    # I

    .prologue
    .line 212
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "np":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 214
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Number is invalid!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 217
    :cond_1
    new-instance v7, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;

    invoke-direct {v7, p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;-><init>(Lcom/motorola/android/internal/telephony/SMSNumberHandler;Ljava/lang/String;)V

    .line 218
    .local v7, "numberEntry":Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getAllIDDs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 221
    .local v1, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v7, v1}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->checkNANP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;)I

    move-result v5

    .line 222
    .local v5, "nanpState":I
    const-string v9, "SMSNumberHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NANP type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v9, 0x1

    if-eq v5, v9, :cond_2

    const/4 v9, 0x2

    if-eq v5, v9, :cond_2

    const/4 v9, 0x3

    if-ne v5, v9, :cond_3

    .line 325
    .end local v6    # "np":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v6

    .line 229
    .restart local v6    # "np":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x4

    if-ne v5, v9, :cond_5

    .line 230
    if-nez p4, :cond_2

    const/4 v9, 0x1

    move/from16 v0, p5

    if-eq v0, v9, :cond_4

    const/4 v9, 0x2

    move/from16 v0, p5

    if-ne v0, v9, :cond_2

    .line 234
    :cond_4
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 239
    :cond_5
    const/4 v9, 0x5

    if-ne v5, v9, :cond_7

    .line 240
    const/4 v9, 0x1

    move/from16 v0, p5

    if-eq v0, v9, :cond_2

    .line 243
    if-nez p5, :cond_6

    .line 245
    iget-object v3, v7, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->IDD:Ljava/lang/String;

    .line 246
    .local v3, "idd":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 247
    .end local v3    # "idd":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x2

    move/from16 v0, p5

    if-ne v0, v9, :cond_7

    .line 249
    iget-object v3, v7, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->IDD:Ljava/lang/String;

    .line 250
    .restart local v3    # "idd":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 254
    .end local v3    # "idd":Ljava/lang/String;
    :cond_7
    const-string v9, "011"

    invoke-direct {p0, v7, v1, v9}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->checkNP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v4

    .line 255
    .local v4, "internState":I
    const-string v9, "SMSNumberHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "International type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v8, 0x0

    .line 258
    .local v8, "returnNumber":Ljava/lang/String;
    packed-switch v4, :pswitch_data_0

    .line 301
    :pswitch_0
    const-string v9, "+"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez p4, :cond_9

    const/4 v9, 0x1

    move/from16 v0, p5

    if-eq v0, v9, :cond_8

    const/4 v9, 0x2

    move/from16 v0, p5

    if-ne v0, v9, :cond_9

    .line 305
    :cond_8
    const-string v9, "+011"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 307
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 319
    :cond_9
    :goto_1
    if-nez v8, :cond_a

    .line 320
    move-object v8, v6

    .line 324
    :cond_a
    sget-object v9, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "SMSNumberHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; After format = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object v6, v8

    .line 325
    goto/16 :goto_0

    .line 260
    :pswitch_1
    if-nez p5, :cond_9

    .line 262
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 267
    :pswitch_2
    if-eqz p5, :cond_d

    const/4 v9, 0x1

    move/from16 v0, p5

    if-eq v0, v9, :cond_c

    const/4 v9, 0x2

    move/from16 v0, p5

    if-ne v0, v9, :cond_9

    :cond_c
    if-nez p4, :cond_9

    .line 271
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "011"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 276
    :pswitch_3
    if-eqz p5, :cond_e

    const/4 v9, 0x2

    move/from16 v0, p5

    if-ne v0, v9, :cond_9

    .line 277
    :cond_e
    iget-object v3, v7, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->IDD:Ljava/lang/String;

    .line 279
    .restart local v3    # "idd":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "011"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 280
    goto/16 :goto_1

    .line 284
    .end local v3    # "idd":Ljava/lang/String;
    :pswitch_4
    iget v2, v7, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    .line 288
    .local v2, "countryCode":I
    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->inExceptionListForNpCcAreaLocal(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xb

    if-lt v9, v10, :cond_9

    const/4 v9, 0x1

    if-eq v2, v9, :cond_9

    .line 292
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "011"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 310
    .end local v2    # "countryCode":I
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "011"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 258
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAllCountryCodes()[I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 542
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    if-eqz v0, :cond_0

    .line 543
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    .line 566
    :goto_0
    return-object v0

    .line 545
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "country_code"

    aput-object v0, v2, v11

    .line 547
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 550
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 551
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 552
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    .line 553
    const/4 v8, 0x0

    .line 554
    .local v8, "i":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 556
    .local v7, "cc":I
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    aput v7, v0, v8

    .line 557
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    .line 558
    .local v10, "length":I
    sget v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MAX_COUNTRY_CODES_LENGTH:I

    if-le v10, v0, :cond_1

    .line 559
    sput v10, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MAX_COUNTRY_CODES_LENGTH:I

    :cond_1
    move v8, v9

    .line 561
    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_1

    .line 563
    .end local v7    # "cc":I
    .end local v8    # "i":I
    .end local v10    # "length":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 566
    :cond_3
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    goto :goto_0
.end method

.method private getAllIDDs(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "mcc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 569
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 570
    .local v6, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 612
    .end local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, "allIDDs":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v7

    .line 573
    .end local v7    # "allIDDs":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .restart local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "idd"

    aput-object v0, v2, v11

    const-string v0, "mcc"

    aput-object v0, v2, v1

    .line 577
    .local v2, "projection3":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 582
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x0

    .line 583
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 584
    const-string v3, "mcc=?"

    .line 585
    new-array v4, v1, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    aput-object p1, v4, v11

    .line 587
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Idd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 590
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 591
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 592
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 593
    .local v9, "idd":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 597
    .end local v9    # "idd":Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 605
    :cond_4
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 606
    .local v10, "multiIdds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_5

    .line 607
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 609
    :cond_5
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v0, "SMSNumberHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MCC = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", all IDDs = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 612
    .restart local v7    # "allIDDs":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method private getCountryCode(Ljava/lang/String;)I
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 390
    const/4 v1, -0x1

    .line 391
    .local v1, "cc":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getAllCountryCodes()[I

    move-result-object v0

    .line 394
    .local v0, "allCCs":[I
    if-nez v0, :cond_1

    .line 414
    .end local v0    # "allCCs":[I
    .end local v1    # "cc":I
    :cond_0
    :goto_0
    return v1

    .line 398
    .restart local v0    # "allCCs":[I
    .restart local v1    # "cc":I
    :cond_1
    sget v6, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MAX_COUNTRY_CODES_LENGTH:I

    new-array v2, v6, [I

    .line 399
    .local v2, "ccArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget v6, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v3, v6, :cond_2

    .line 400
    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v3

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 403
    :cond_2
    const/4 v3, 0x0

    :goto_2
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 404
    aget v5, v0, v3

    .line 405
    .local v5, "tempCC":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    sget v6, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v4, v6, :cond_4

    .line 406
    aget v6, v2, v4

    if-ne v5, v6, :cond_3

    .line 407
    const-string v6, "SMSNumberHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Country code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 408
    goto :goto_0

    .line 405
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 403
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private getNumberPlanType(I)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number Plan type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "numberPlanType":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 507
    const-string v0, "NP_NANP_LOCAL"

    .line 535
    :goto_0
    return-object v0

    .line 508
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 509
    const-string v0, "NP_NANP_AREA_LOCAL"

    goto :goto_0

    .line 510
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 511
    const-string v0, "NP_NANP_NDD_AREA_LOCAL"

    goto :goto_0

    .line 512
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 513
    const-string v0, "NP_NANP_NBPCD_NDD_AREA_LOCAL"

    goto :goto_0

    .line 514
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 515
    const-string v0, "NP_NANP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 516
    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 517
    const-string v0, "NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 518
    :cond_5
    const/16 v1, 0x64

    if-ne p1, v1, :cond_6

    .line 519
    const-string v0, "NP_NBPCD_IDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 520
    :cond_6
    const/16 v1, 0x65

    if-ne p1, v1, :cond_7

    .line 521
    const-string v0, "NP_IDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 522
    :cond_7
    const/16 v1, 0x66

    if-ne p1, v1, :cond_8

    .line 523
    const-string v0, "NP_NBPCD_CC_AREA_LOCAL"

    goto :goto_0

    .line 524
    :cond_8
    const/16 v1, 0x67

    if-ne p1, v1, :cond_9

    .line 525
    const-string v0, "NP_IDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 526
    :cond_9
    const/16 v1, 0x68

    if-ne p1, v1, :cond_a

    .line 527
    const-string v0, "NP_CC_AREA_LOCAL"

    goto :goto_0

    .line 528
    :cond_a
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_b

    .line 529
    const-string v0, "NP_SHORT_CODE"

    goto :goto_0

    .line 530
    :cond_b
    const/16 v1, 0xc9

    if-ne p1, v1, :cond_c

    .line 531
    const-string v0, "NP_LOCAL_NUMBER"

    goto :goto_0

    .line 533
    :cond_c
    const-string v0, "Unclear type"

    goto :goto_0
.end method

.method private inExceptionListForNpCcAreaLocal(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;)Z
    .locals 4
    .param p1, "numberEntry"    # Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;

    .prologue
    .line 331
    iget v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    .line 332
    .local v0, "countryCode":I
    iget-object v2, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 336
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 337
    const-string v2, "SMSNumberHandler"

    const-string v3, "The number is in exception list for this format!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1
    return v1

    .line 332
    .end local v1    # "result":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNANP(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xb

    .line 490
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 493
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 497
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v0

    .line 500
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "activeMcc"    # Ljava/lang/String;
    .param p3, "activeMnc"    # Ljava/lang/String;
    .param p4, "isNBPCDSupported"    # Z
    .param p5, "networkType"    # I

    .prologue
    .line 178
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nubmer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a global phone number!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    const/4 v0, 0x1

    if-eq p5, v0, :cond_2

    const/4 v0, 0x2

    if-eq p5, v0, :cond_2

    if-eqz p5, :cond_2

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network type is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 191
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activeMcc is null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_4
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SMSNumberHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format Number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Active MCC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Active MNC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NBPCD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_5
    invoke-direct/range {p0 .. p5}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->formatNumberForVZW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNANPShortCode(Ljava/lang/String;)Z
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v5, 0x1

    .line 624
    sget-object v6, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SMSNumberHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNANPShortCode? number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 626
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nubmer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a global phone number!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 629
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "np":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 631
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Number is invalid!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 634
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v0, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "011"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v4, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;

    invoke-direct {v4, p0, v3}, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;-><init>(Lcom/motorola/android/internal/telephony/SMSNumberHandler;Ljava/lang/String;)V

    .line 639
    .local v4, "numberEntry":Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;
    invoke-direct {p0, v4, v0}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->checkNANP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;)I

    move-result v2

    .line 640
    .local v2, "nanpState":I
    const-string v6, "SMSNumberHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NANP type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v6, "011"

    invoke-direct {p0, v4, v0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->checkNP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v1

    .line 644
    .local v1, "internState":I
    const-string v6, "SMSNumberHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NP type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    packed-switch v1, :pswitch_data_0

    .line 674
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v9, :cond_6

    .line 676
    const-string v6, "SMSNumberHandler"

    const-string v7, "isNANPShortCode: true -- rule #1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_0
    return v5

    .line 652
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_5

    const-string v6, "+"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 657
    if-nez v2, :cond_8

    .line 658
    const-string v6, "SMSNumberHandler"

    const-string v7, "isNANPShortCode: true -- rule #2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 661
    :cond_5
    iget v6, v4, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    if-ne v6, v5, :cond_8

    .line 663
    if-nez v2, :cond_8

    .line 667
    const-string v6, "SMSNumberHandler"

    const-string v7, "isNANPShortCode: true -- rule #4"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 678
    :cond_6
    if-nez v2, :cond_8

    .line 681
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 682
    const-string v6, "SMSNumberHandler"

    const-string v7, "isNANPShortCode: true -- rule #2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_8

    const-string v6, "1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 690
    const-string v6, "SMSNumberHandler"

    const-string v7, "isNANPShortCode: true -- rule #3"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    :cond_8
    const-string v5, "SMSNumberHandler"

    const-string v6, "isNANPShortCode: false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v5, 0x0

    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

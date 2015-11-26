.class public Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;
.super Ljava/lang/Object;
.source "NBPCDPhoneNumberUtils.java"


# static fields
.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "NBPCDPhoneNumberUtils"

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_LENGTH:I = 0xa

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 296
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "retStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 303
    .end local v2    # "retStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "retStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 258
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 274
    :goto_0
    return-object v5

    .line 261
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 265
    .local v4, "trimIndex":I
    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 266
    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 268
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 269
    .local v0, "c":C
    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 270
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .param p0, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 281
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 282
    .local v0, "c":C
    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    .end local v0    # "c":C
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 280
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "c":C
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 315
    sget-object v2, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 316
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 317
    sget-object v2, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 318
    const/4 v2, 0x1

    .line 324
    :goto_1
    return v2

    .line 316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 322
    const/4 v2, 0x2

    goto :goto_1

    .line 324
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 356
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 357
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 359
    .local v3, "wIndex":I
    invoke-static {v1, v3}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 361
    .local v2, "trimIndex":I
    if-gez v2, :cond_0

    .line 362
    add-int/lit8 v4, v0, -0x1

    .line 364
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 70
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 435
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 403
    const/4 v2, 0x0

    .line 404
    .local v2, "retVal":Z
    if-eqz p0, :cond_2

    .line 405
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 406
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    const/4 v2, 0x1

    .line 409
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 410
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 411
    .local v0, "c":C
    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 412
    const/4 v2, 0x0

    .line 421
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 409
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 385
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 333
    .local v1, "retVal":Z
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 335
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const/4 v1, 0x1

    .line 342
    .end local v0    # "newDialStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 340
    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 392
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 78
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 425
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 426
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "NBPCDPhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method private static minPositive(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 371
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 372
    if-ge p0, p1, :cond_1

    .line 378
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_1
    move p0, p1

    .line 372
    goto :goto_0

    .line 373
    :cond_2
    if-gez p0, :cond_0

    .line 375
    if-ltz p1, :cond_3

    move p0, p1

    .line 376
    goto :goto_0

    .line 378
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static nbpcdCheckAndProcessPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "isNBPCDAllowed"    # Z

    .prologue
    .line 128
    move-object v3, p0

    .line 131
    .local v3, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 137
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 144
    :cond_0
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->nbpcdExtractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "networkDialStr":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->nbpcdProcessPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 150
    if-nez v3, :cond_3

    .line 151
    move-object v3, v1

    .line 162
    :goto_0
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 164
    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "dialableIndex":I
    const/4 v5, 0x1

    if-lt v0, v5, :cond_5

    .line 168
    invoke-static {v0, v3, v2}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    .end local v0    # "dialableIndex":I
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    :cond_2
    move-object p0, v3

    .line 185
    .end local p0    # "dialStr":Ljava/lang/String;
    :goto_2
    return-object p0

    .line 153
    .restart local v1    # "networkDialStr":Ljava/lang/String;
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v4    # "tempDialStr":Ljava/lang/String;
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 159
    :cond_4
    const-string v5, "nbpcdCheckAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 176
    .restart local v0    # "dialableIndex":I
    :cond_5
    if-gez v0, :cond_6

    .line 177
    const-string v2, ""

    .line 179
    :cond_6
    const-string v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static nbpcdExtractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v4, 0x0

    .line 112
    :goto_0
    return-object v4

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 101
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 104
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 105
    .local v0, "c":C
    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_2
    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static nbpcdProcessPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "isNBPCDAllowed"    # Z

    .prologue
    const/16 v11, 0x2b

    const/4 v10, 0x1

    .line 203
    if-nez p0, :cond_0

    .line 204
    const/4 v8, 0x0

    .line 245
    :goto_0
    return-object v8

    .line 207
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 208
    .local v6, "len":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    .local v7, "ret":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 211
    .local v3, "firstCharAdded":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_a

    .line 212
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 213
    .local v0, "c":C
    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->isDialable(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 214
    if-ne v0, v11, :cond_1

    if-nez v3, :cond_7

    .line 215
    :cond_1
    if-ne v0, v11, :cond_6

    if-nez p1, :cond_6

    .line 218
    const-string v8, "gsm.operator.iso-country"

    const-string v9, "us"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "iso":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    const-string v5, "us"

    .line 222
    :cond_2
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 223
    .local v1, "currFormat":I
    const-string v8, "gsm.sim.operator.iso-country"

    const-string v9, "us"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    .line 226
    .local v2, "defaultFormt":I
    if-ne v1, v2, :cond_3

    if-ne v1, v10, :cond_3

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 228
    :cond_3
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->getCurrentIDD()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .end local v1    # "currFormat":I
    .end local v2    # "defaultFormt":I
    .end local v5    # "iso":Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 211
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 231
    :cond_6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 234
    :cond_7
    if-nez p1, :cond_8

    .line 236
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->getCurrentIDD()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 238
    :cond_8
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 240
    :cond_9
    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/NBPCDPhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 245
    .end local v0    # "c":C
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

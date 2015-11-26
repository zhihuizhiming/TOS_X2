.class public final enum Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;
.super Ljava/lang/Enum;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DDTMDefaultPreferenceSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

.field public static final enum DDTMDefaultPreferenceAUTO:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

.field public static final enum DDTMDefaultPreferenceOFF:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

.field public static final enum DDTMDefaultPreferenceON:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    new-instance v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    const-string v1, "DDTMDefaultPreferenceOFF"

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->DDTMDefaultPreferenceOFF:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    .line 299
    new-instance v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    const-string v1, "DDTMDefaultPreferenceON"

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->DDTMDefaultPreferenceON:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    .line 300
    new-instance v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    const-string v1, "DDTMDefaultPreferenceAUTO"

    invoke-direct {v0, v1, v4, v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->DDTMDefaultPreferenceAUTO:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    .line 295
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    sget-object v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->DDTMDefaultPreferenceOFF:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->DDTMDefaultPreferenceON:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->DDTMDefaultPreferenceAUTO:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->$VALUES:[Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 302
    iput p3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->id:I

    .line 303
    return-void
.end method

.method public static fromInt(I)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 310
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->values()[Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    move-result-object v0

    .local v0, "arr$":[Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 311
    .local v1, "en":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;
    iget v4, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->id:I

    if-ne v4, p0, :cond_0

    .line 315
    .end local v1    # "en":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;
    :goto_1
    return-object v1

    .line 310
    .restart local v1    # "en":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "en":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;
    :cond_1
    sget-object v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->DDTMDefaultPreferenceOFF:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 295
    const-class v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    return-object v0
.end method

.method public static values()[Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->$VALUES:[Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$DDTMDefaultPreferenceSettings;->id:I

    return v0
.end method

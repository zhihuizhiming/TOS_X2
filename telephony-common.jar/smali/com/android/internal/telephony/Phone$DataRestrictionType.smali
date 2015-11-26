.class public final enum Lcom/android/internal/telephony/Phone$DataRestrictionType;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataRestrictionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Phone$DataRestrictionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Phone$DataRestrictionType;

.field public static final enum CDMA_DOMESTIC_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

.field public static final enum CDMA_INTERNATIONAL_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

.field public static final enum GSM_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

.field public static final enum NONE:Lcom/android/internal/telephony/Phone$DataRestrictionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$DataRestrictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;->NONE:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    new-instance v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;

    const-string v1, "CDMA_DOMESTIC_ROAMING"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Phone$DataRestrictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;->CDMA_DOMESTIC_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    new-instance v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;

    const-string v1, "CDMA_INTERNATIONAL_ROAMING"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Phone$DataRestrictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;->CDMA_INTERNATIONAL_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    new-instance v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;

    const-string v1, "GSM_ROAMING"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Phone$DataRestrictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;->GSM_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/Phone$DataRestrictionType;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataRestrictionType;->NONE:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Phone$DataRestrictionType;->CDMA_DOMESTIC_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Phone$DataRestrictionType;->CDMA_INTERNATIONAL_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/Phone$DataRestrictionType;->GSM_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;->$VALUES:[Lcom/android/internal/telephony/Phone$DataRestrictionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataRestrictionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Phone$DataRestrictionType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;->$VALUES:[Lcom/android/internal/telephony/Phone$DataRestrictionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Phone$DataRestrictionType;

    return-object v0
.end method

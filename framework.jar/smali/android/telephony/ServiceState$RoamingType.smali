.class public final enum Landroid/telephony/ServiceState$RoamingType;
.super Ljava/lang/Enum;
.source "ServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoamingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/ServiceState$RoamingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/ServiceState$RoamingType;

.field public static final enum DOMESTIC:Landroid/telephony/ServiceState$RoamingType;

.field public static final enum HOME:Landroid/telephony/ServiceState$RoamingType;

.field public static final enum INTERNATIONAL:Landroid/telephony/ServiceState$RoamingType;

.field public static final enum UNKNOWN:Landroid/telephony/ServiceState$RoamingType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 346
    new-instance v0, Landroid/telephony/ServiceState$RoamingType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Landroid/telephony/ServiceState$RoamingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/ServiceState$RoamingType;->UNKNOWN:Landroid/telephony/ServiceState$RoamingType;

    .line 347
    new-instance v0, Landroid/telephony/ServiceState$RoamingType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v3}, Landroid/telephony/ServiceState$RoamingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/ServiceState$RoamingType;->HOME:Landroid/telephony/ServiceState$RoamingType;

    .line 348
    new-instance v0, Landroid/telephony/ServiceState$RoamingType;

    const-string v1, "DOMESTIC"

    invoke-direct {v0, v1, v4}, Landroid/telephony/ServiceState$RoamingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/ServiceState$RoamingType;->DOMESTIC:Landroid/telephony/ServiceState$RoamingType;

    .line 349
    new-instance v0, Landroid/telephony/ServiceState$RoamingType;

    const-string v1, "INTERNATIONAL"

    invoke-direct {v0, v1, v5}, Landroid/telephony/ServiceState$RoamingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/ServiceState$RoamingType;->INTERNATIONAL:Landroid/telephony/ServiceState$RoamingType;

    .line 345
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/telephony/ServiceState$RoamingType;

    sget-object v1, Landroid/telephony/ServiceState$RoamingType;->UNKNOWN:Landroid/telephony/ServiceState$RoamingType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/telephony/ServiceState$RoamingType;->HOME:Landroid/telephony/ServiceState$RoamingType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/ServiceState$RoamingType;->DOMESTIC:Landroid/telephony/ServiceState$RoamingType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/ServiceState$RoamingType;->INTERNATIONAL:Landroid/telephony/ServiceState$RoamingType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/telephony/ServiceState$RoamingType;->$VALUES:[Landroid/telephony/ServiceState$RoamingType;

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
    .line 345
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/ServiceState$RoamingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 345
    const-class v0, Landroid/telephony/ServiceState$RoamingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState$RoamingType;

    return-object v0
.end method

.method public static values()[Landroid/telephony/ServiceState$RoamingType;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->$VALUES:[Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/ServiceState$RoamingType;

    return-object v0
.end method


# virtual methods
.method public getTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Landroid/telephony/ServiceState$RoamingType;->HOME:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 353
    const-string v0, "home"

    .line 361
    :goto_0
    return-object v0

    .line 355
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Landroid/telephony/ServiceState$RoamingType;->DOMESTIC:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 356
    const-string v0, "domestic roaming"

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Landroid/telephony/ServiceState$RoamingType;->INTERNATIONAL:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 359
    const-string v0, "international roaming"

    goto :goto_0

    .line 361
    :cond_2
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

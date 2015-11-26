.class public final enum Lcom/android/internal/telephony/CallDetails$TypeChange;
.super Ljava/lang/Enum;
.source "CallDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CallDetails$TypeChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VOICE_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VOICE_VT_RX:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VOICE_VT_TX:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_NODIR_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_NODIR_VT_RX:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_NODIR_VT_TX:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_RX_VOICE:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_RX_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_RX_VT_NODIR:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_TX_VOICE:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_TX_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_TX_VT_NODIR:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_VOICE:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_VT_NODIR:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_VT_RX:Lcom/android/internal/telephony/CallDetails$TypeChange;

.field public static final enum VT_VT_TX:Lcom/android/internal/telephony/CallDetails$TypeChange;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VOICE_VT_TX"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VOICE_VT_TX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 269
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VOICE_VT_RX"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VOICE_VT_RX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 270
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VOICE_VT"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VOICE_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 271
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_TX_VT"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_TX_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 272
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_RX_VT"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_RX_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 274
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_VOICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_VOICE:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 275
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_TX_VOICE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_TX_VOICE:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 276
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_RX_VOICE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_RX_VOICE:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 277
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_VT_TX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_VT_TX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 278
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_VT_RX"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_VT_RX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 281
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_VT_NODIR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_VT_NODIR:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 282
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_NODIR_VT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_NODIR_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 285
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_TX_VT_NODIR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_TX_VT_NODIR:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 286
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_RX_VT_NODIR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_RX_VT_NODIR:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 287
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_NODIR_VT_TX"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_NODIR_VT_TX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 288
    new-instance v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    const-string v1, "VT_NODIR_VT_RX"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallDetails$TypeChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_NODIR_VT_RX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    .line 266
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/internal/telephony/CallDetails$TypeChange;

    sget-object v1, Lcom/android/internal/telephony/CallDetails$TypeChange;->VOICE_VT_TX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/CallDetails$TypeChange;->VOICE_VT_RX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/CallDetails$TypeChange;->VOICE_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_TX_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_RX_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_VOICE:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_TX_VOICE:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_RX_VOICE:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_VT_TX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_VT_RX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_VT_NODIR:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_NODIR_VT:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_TX_VT_NODIR:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_RX_VT_NODIR:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_NODIR_VT_TX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/CallDetails$TypeChange;->VT_NODIR_VT_RX:Lcom/android/internal/telephony/CallDetails$TypeChange;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->$VALUES:[Lcom/android/internal/telephony/CallDetails$TypeChange;

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
    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CallDetails$TypeChange;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 266
    const-class v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallDetails$TypeChange;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CallDetails$TypeChange;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/android/internal/telephony/CallDetails$TypeChange;->$VALUES:[Lcom/android/internal/telephony/CallDetails$TypeChange;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CallDetails$TypeChange;

    return-object v0
.end method

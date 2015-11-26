.class public final Lcom/motorola/bluetooth/BluetoothMetrics;
.super Ljava/lang/Object;
.source "BluetoothMetrics.java"


# static fields
.field private static final DBG:Z = false

.field private static final ID_CONNECTION_FAILURE:Ljava/lang/String; = "ID_CONNECTION_FAILURE"

.field private static final ID_CONNECTION_SUCCESS:Ljava/lang/String; = "ID_CONNECTION_SUCCESS"

.field private static final ID_PAIRING_FAILURE:Ljava/lang/String; = "ID_PAIRING_FAILURE"

.field private static final ID_PAIRING_SUCCESS:Ljava/lang/String; = "ID_PAIRING_SUCCESS"

.field private static final PARAMETER_ACCESSORY:Ljava/lang/String; = "accessory"

.field private static final PARAMETER_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "BluetoothMetrics"

.field private static final TAG_PREFIX_BT_A2DP:Ljava/lang/String; = "BT_A2DP"

.field private static final TAG_PREFIX_BT_HFP:Ljava/lang/String; = "BT_HFP"

.field private static final TAG_PREFIX_BT_HID:Ljava/lang/String; = "BT_HID"

.field private static final TAG_PREFIX_BT_PAIRING:Ljava/lang/String; = "BT_PAIRING"

.field private static final TAG_PREFIX_BT_PAN:Ljava/lang/String; = "BT_PAN"

.field private static final TAG_PREFIX_BT_PBAP:Ljava/lang/String; = "BT_PBAP"

.field private static final TAG_SUFFIX_FAILURE:Ljava/lang/String; = "_F"

.field private static final TAG_SUFFIX_SUCCESS:Ljava/lang/String; = "_S"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static final VERSION_1_0:Ljava/lang/String; = "1.0"

.field private static mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/motorola/bluetooth/BluetoothMetrics;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method private static buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 156
    sget-object v1, Lcom/motorola/bluetooth/BluetoothMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lcom/motorola/bluetooth/BluetoothMetrics$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/motorola/bluetooth/BluetoothMetrics$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Landroid/content/ContentResolver;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method

.method public static logPairing(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "prevState"    # I
    .param p3, "state"    # I

    .prologue
    .line 64
    if-nez p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    if-eqz p1, :cond_0

    .line 74
    invoke-static {p0}, Lcom/motorola/bluetooth/BluetoothMetrics;->setContext(Landroid/content/Context;)V

    .line 75
    invoke-static {p1, p2, p3}, Lcom/motorola/bluetooth/BluetoothMetrics;->logPairingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private static logPairingStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "prevState"    # I
    .param p2, "state"    # I

    .prologue
    const/16 v1, 0xb

    .line 143
    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 144
    if-ne p1, v1, :cond_0

    .line 146
    const-string v0, "BT_PAIRING_F"

    const-string v1, "ID_PAIRING_FAILURE"

    invoke-static {v0, v1, p0}, Lcom/motorola/bluetooth/BluetoothMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 151
    const-string v0, "BT_PAIRING_S"

    const-string v1, "ID_PAIRING_SUCCESS"

    invoke-static {v0, v1, p0}, Lcom/motorola/bluetooth/BluetoothMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public static logProfile(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;III)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "prevState"    # I
    .param p4, "state"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 80
    if-nez p0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    if-eqz p1, :cond_0

    .line 90
    invoke-static {p0}, Lcom/motorola/bluetooth/BluetoothMetrics;->setContext(Landroid/content/Context;)V

    .line 92
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 94
    :pswitch_1
    const-string v0, "BT_HFP"

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/motorola/bluetooth/BluetoothMetrics;->logProfileStateChange(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;IIIII)V

    goto :goto_0

    .line 98
    :pswitch_2
    const-string v0, "BT_A2DP"

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/motorola/bluetooth/BluetoothMetrics;->logProfileStateChange(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;IIIII)V

    goto :goto_0

    .line 102
    :pswitch_3
    const-string v0, "BT_HID"

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/motorola/bluetooth/BluetoothMetrics;->logProfileStateChange(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;IIIII)V

    goto :goto_0

    .line 106
    :pswitch_4
    const-string v0, "BT_PAN"

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/motorola/bluetooth/BluetoothMetrics;->logProfileStateChange(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;IIIII)V

    goto :goto_0

    .line 110
    :pswitch_5
    const-string v0, "BT_PBAP"

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/motorola/bluetooth/BluetoothMetrics;->logProfileStateChange(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;IIIII)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static logProfileStateChange(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;IIIII)V
    .locals 2
    .param p0, "tag_prefix"    # Ljava/lang/String;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "prevState"    # I
    .param p3, "state"    # I
    .param p4, "connected_state"    # I
    .param p5, "connecting_state"    # I
    .param p6, "disconnected_state"    # I

    .prologue
    .line 130
    if-ne p3, p4, :cond_2

    if-eq p2, p5, :cond_0

    if-ne p2, p6, :cond_2

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID_CONNECTION_SUCCESS"

    invoke-static {v0, v1, p1}, Lcom/motorola/bluetooth/BluetoothMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    if-ne p3, p6, :cond_1

    .line 135
    if-ne p2, p5, :cond_1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID_CONNECTION_FAILURE"

    invoke-static {v0, v1, p1}, Lcom/motorola/bluetooth/BluetoothMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private static now()J
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    sput-object p0, Lcom/motorola/bluetooth/BluetoothMetrics;->mContext:Landroid/content/Context;

    .line 122
    return-void
.end method

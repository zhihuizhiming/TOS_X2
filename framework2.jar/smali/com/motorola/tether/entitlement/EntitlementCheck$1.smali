.class final Lcom/motorola/tether/entitlement/EntitlementCheck$1;
.super Ljava/lang/Object;
.source "EntitlementCheck.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/tether/entitlement/EntitlementCheck;->turnOffBluetoothTethering(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$cm:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/motorola/tether/entitlement/EntitlementCheck$1;->val$cm:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/motorola/tether/entitlement/EntitlementCheck$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 267
    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 269
    .local v1, "pan":Landroid/bluetooth/BluetoothPan;
    iget-object v2, p0, Lcom/motorola/tether/entitlement/EntitlementCheck$1;->val$cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/tether/entitlement/EntitlementCheck$1;->val$cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/tether/entitlement/EntitlementCheck;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "bluetoothIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/motorola/tether/entitlement/EntitlementCheck$1;->val$cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const-string v2, "EntitlementCheck"

    const-string v3, "cm.untether(bluetootheIface) returned error."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    if-eqz v1, :cond_1

    .line 276
    const-string v2, "EntitlementCheck"

    const-string v3, "BT Tethering was ON. Turning OFF."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/motorola/tether/entitlement/EntitlementCheck$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 280
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 282
    return-void
.end method

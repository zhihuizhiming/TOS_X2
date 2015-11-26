.class Lcom/motorola/tether/entitlement/AbsEntitlementService$1;
.super Ljava/lang/Object;
.source "AbsEntitlementService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/tether/entitlement/AbsEntitlementService;->turnOffBluetoothTethering(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/tether/entitlement/AbsEntitlementService;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$monitor:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/motorola/tether/entitlement/AbsEntitlementService;Landroid/bluetooth/BluetoothAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementService$1;->this$0:Lcom/motorola/tether/entitlement/AbsEntitlementService;

    iput-object p2, p0, Lcom/motorola/tether/entitlement/AbsEntitlementService$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p3, p0, Lcom/motorola/tether/entitlement/AbsEntitlementService$1;->val$monitor:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 62
    const-string v1, "AbsEntitlementSvc"

    const-string v2, "Entitlement: BT Pan onServiceConnected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 63
    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 65
    .local v0, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "AbsEntitlementSvc"

    const-string v2, "BT Tethering is ON. Turning OFF."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 69
    :cond_0
    const-string v1, "AbsEntitlementSvc"

    const-string v2, "Closing the pan profile proxy."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementService$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 71
    iget-object v2, p0, Lcom/motorola/tether/entitlement/AbsEntitlementService$1;->val$monitor:Ljava/lang/Object;

    monitor-enter v2

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementService$1;->this$0:Lcom/motorola/tether/entitlement/AbsEntitlementService;

    const/4 v3, 0x1

    # setter for: Lcom/motorola/tether/entitlement/AbsEntitlementService;->mBtTetherReset:Z
    invoke-static {v1, v3}, Lcom/motorola/tether/entitlement/AbsEntitlementService;->access$002(Lcom/motorola/tether/entitlement/AbsEntitlementService;Z)Z

    .line 73
    const-string v1, "AbsEntitlementSvc"

    const-string v3, "Notify monitor."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementService$1;->val$monitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 75
    monitor-exit v2

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 78
    const-string v0, "AbsEntitlementSvc"

    const-string v1, "Entitlement: BT Pan onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

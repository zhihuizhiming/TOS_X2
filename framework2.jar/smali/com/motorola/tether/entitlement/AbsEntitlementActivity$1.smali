.class Lcom/motorola/tether/entitlement/AbsEntitlementActivity$1;
.super Ljava/lang/Object;
.source "AbsEntitlementActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/tether/entitlement/AbsEntitlementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/tether/entitlement/AbsEntitlementActivity;


# direct methods
.method constructor <init>(Lcom/motorola/tether/entitlement/AbsEntitlementActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity$1;->this$0:Lcom/motorola/tether/entitlement/AbsEntitlementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 61
    # getter for: Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z
    invoke-static {}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity$1;->this$0:Lcom/motorola/tether/entitlement/AbsEntitlementActivity;

    # getter for: Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->access$200(Lcom/motorola/tether/entitlement/AbsEntitlementActivity;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 65
    # getter for: Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z
    invoke-static {}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity$1;->this$0:Lcom/motorola/tether/entitlement/AbsEntitlementActivity;

    # getter for: Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->access$200(Lcom/motorola/tether/entitlement/AbsEntitlementActivity;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.class Lcom/motorola/tether/entitlement/AbsEntitlementActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AbsEntitlementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 125
    iput-object p1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity$2;->this$0:Lcom/motorola/tether/entitlement/AbsEntitlementActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    # getter for: Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z
    invoke-static {}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "home key pressed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity$2;->this$0:Lcom/motorola/tether/entitlement/AbsEntitlementActivity;

    invoke-virtual {v1}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->setResultAndFinish()V

    .line 133
    :cond_1
    return-void
.end method

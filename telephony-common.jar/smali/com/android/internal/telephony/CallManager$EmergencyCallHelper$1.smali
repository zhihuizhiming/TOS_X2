.class Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)V
    .locals 0

    .prologue
    .line 2398
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$1;->this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2401
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2403
    const-string v1, "CallManager"

    const-string v2, "EmergencyCallHelper.onReceive E"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$1;->this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    # invokes: Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->isInECM()Z
    invoke-static {v1}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->access$300(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)Z

    move-result v0

    .line 2405
    .local v0, "ecm":Z
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EmergencyCallHelper: mECM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$1;->this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    # getter for: Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mECM:Z
    invoke-static {v3}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->access$400(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ecm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$1;->this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    # getter for: Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mECM:Z
    invoke-static {v1}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->access$400(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2407
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$1;->this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->onExitECM()V

    .line 2409
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$1;->this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    # setter for: Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mECM:Z
    invoke-static {v1, v0}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->access$402(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;Z)Z

    .line 2410
    const-string v1, "CallManager"

    const-string v2, "EmergencyCallHelper.onReceive X"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    .end local v0    # "ecm":Z
    :cond_1
    return-void
.end method

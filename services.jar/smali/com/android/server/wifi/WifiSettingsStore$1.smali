.class Lcom/android/server/wifi/WifiSettingsStore$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiSettingsStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiSettingsStore;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/wifi/WifiSettingsStore$1;->this$0:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x4

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore$1;->this$0:Lcom/android/server/wifi/WifiSettingsStore;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;->access$000(Lcom/android/server/wifi/WifiSettingsStore;I)V

    .line 76
    :cond_0
    return-void
.end method

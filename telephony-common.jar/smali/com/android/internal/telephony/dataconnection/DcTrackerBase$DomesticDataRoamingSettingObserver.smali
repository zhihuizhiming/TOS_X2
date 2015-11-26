.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DomesticDataRoamingSettingObserver;
.super Landroid/database/ContentObserver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomesticDataRoamingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DomesticDataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 480
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 481
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DomesticDataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleDataOnDomesticRoamingChange()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 498
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 485
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "domestic_data_roaming"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 487
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 492
    return-void
.end method

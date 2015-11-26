.class public final Lcom/motorola/android/provider/CheckinEvent;
.super Lcom/motorola/data/event/api/Event;
.source "CheckinEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "segmentName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/data/event/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "segmentName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/motorola/data/event/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 59
    return-void
.end method


# virtual methods
.method public publish(Ljava/lang/Object;)V
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    instance-of v9, p1, Landroid/content/ContentResolver;

    if-nez v9, :cond_0

    .line 63
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "CheckinEvent:publish input object has to be of type ContentResolver"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getTagName()Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getEventName()Ljava/lang/String;

    move-result-object v1

    .local v1, "eventName":Ljava/lang/String;
    move-object v9, p1

    .line 69
    check-cast v9, Landroid/content/ContentResolver;

    invoke-virtual {v9}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/motorola/data/event/api/Event;->setApkName(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 76
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    const/4 v3, 0x0

    .line 77
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    .line 79
    .local v8, "versionCode":I
    const/4 v9, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v5, v4, v9, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 84
    :goto_0
    if-nez v3, :cond_1

    .line 85
    const-string v9, "Checkin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/motorola/data/event/api/Event;->setApkVerCode(Ljava/lang/String;)V

    .line 92
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "serializedEvent":Ljava/lang/String;
    const-string v9, "Checkin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "publish the event [tag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " event name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    check-cast p1, Landroid/content/ContentResolver;

    .end local p1    # "object":Ljava/lang/Object;
    const-string v9, "eventTags"

    invoke-static {p1, v7, v1, v6, v9}, Lcom/motorola/android/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 102
    return-void

    .line 80
    .end local v6    # "serializedEvent":Ljava/lang/String;
    .restart local p1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const-string v9, "Checkin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get package info for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget v8, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_1

    .line 95
    .end local p1    # "object":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 96
    .local v2, "ie":Ljava/lang/IllegalArgumentException;
    const-string v9, "Checkin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CheckinEvent:publish Cannot publish event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getTagName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    throw v2

    .line 98
    .end local v2    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "Checkin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CheckinEvent:publish Cannot publish event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/motorola/data/event/api/Event;->getTagName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    throw v0
.end method

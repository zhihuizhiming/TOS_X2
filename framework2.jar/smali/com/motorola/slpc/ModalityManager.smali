.class public Lcom/motorola/slpc/ModalityManager;
.super Ljava/lang/Object;
.source "ModalityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/slpc/ModalityManager$VehicleListener;,
        Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;,
        Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$MovementListener;,
        Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$StowedListener;,
        Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$OrientationListener;,
        Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$ModalityListener;,
        Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$StatusListener;,
        Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DONT_CARE:I = 0x0

.field public static final DURATION_IGNORE:J = 0x7fffffffffffffffL

.field public static final MODALITY_ALL:I = 0xffff

.field public static final MODALITY_MICROMOTION:I = 0x4

.field public static final MODALITY_MOTIONLESS:I = 0x2

.field public static final MODALITY_RUNNING:I = 0x10

.field public static final MODALITY_UNKNOWN:I = 0x1

.field public static final MODALITY_VEHICLE:I = 0x20

.field public static final MODALITY_WALKING:I = 0x8

.field public static final ORIENTATION_ALL:I = 0xffff

.field public static final ORIENTATION_FACE_DOWN:I = 0x4

.field public static final ORIENTATION_FACE_SIDEWAYS:I = 0x8

.field public static final ORIENTATION_FACE_UP:I = 0x2

.field public static final ORIENTATION_UNKNOWN:I = 0x1

.field public static final STATUS_AVAILABLE:I = 0x1

.field public static final STATUS_UNAVAILABLE:I = 0x0

.field public static final STOWED_ALL:I = 0xffff

.field public static final STOWED_FALSE:I = 0x4

.field public static final STOWED_TRUE:I = 0x2

.field public static final STOWED_UNKNOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ModalityManager"


# instance fields
.field private mAccumMvmtListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;",
            "Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMainLooper:Landroid/os/Looper;

.field private mModalityListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$ModalityListener;",
            "Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mMovementListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$MovementListener;",
            "Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$OrientationListener;",
            "Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/motorola/slpc/IModalityService;

.field private mStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$StatusListener;",
            "Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mStowedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$StowedListener;",
            "Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mVehicleListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$VehicleListener;",
            "Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/slpc/IModalityService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/motorola/slpc/IModalityService;
    .param p3, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mStatusListeners:Ljava/util/HashMap;

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mModalityListeners:Ljava/util/HashMap;

    .line 554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mOrientationListeners:Ljava/util/HashMap;

    .line 795
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mStowedListeners:Ljava/util/HashMap;

    .line 1036
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mMovementListeners:Ljava/util/HashMap;

    .line 1203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    .line 1480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    .line 180
    iput-object p1, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    .line 182
    iput-object p3, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    .line 183
    return-void
.end method

.method static synthetic access$200(Lcom/motorola/slpc/ModalityManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/slpc/ModalityManager;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static modalityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "modality"    # I

    .prologue
    .line 1429
    const-string v0, "undefined"

    .line 1430
    .local v0, "name":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 1439
    :goto_0
    return-object v0

    .line 1431
    :sswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 1432
    :sswitch_1
    const-string v0, "motionless"

    goto :goto_0

    .line 1433
    :sswitch_2
    const-string v0, "micromotion"

    goto :goto_0

    .line 1434
    :sswitch_3
    const-string v0, "walking"

    goto :goto_0

    .line 1435
    :sswitch_4
    const-string v0, "running"

    goto :goto_0

    .line 1436
    :sswitch_5
    const-string v0, "vehicle"

    goto :goto_0

    .line 1437
    :sswitch_6
    const-string v0, "all"

    goto :goto_0

    .line 1430
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0xffff -> :sswitch_6
    .end sparse-switch
.end method

.method public static orientationToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 1450
    const-string v0, "undefined"

    .line 1451
    .local v0, "name":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 1458
    :goto_0
    return-object v0

    .line 1452
    :sswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 1453
    :sswitch_1
    const-string v0, "up"

    goto :goto_0

    .line 1454
    :sswitch_2
    const-string v0, "down"

    goto :goto_0

    .line 1455
    :sswitch_3
    const-string v0, "sideways"

    goto :goto_0

    .line 1456
    :sswitch_4
    const-string v0, "all"

    goto :goto_0

    .line 1451
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0xffff -> :sswitch_4
    .end sparse-switch
.end method

.method public static stowedToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "stowedState"    # I

    .prologue
    .line 1469
    const-string v0, "undefined"

    .line 1470
    .local v0, "name":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 1476
    :goto_0
    return-object v0

    .line 1471
    :sswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 1472
    :sswitch_1
    const-string v0, "stowed"

    goto :goto_0

    .line 1473
    :sswitch_2
    const-string v0, "not stowed"

    goto :goto_0

    .line 1474
    :sswitch_3
    const-string v0, "all"

    goto :goto_0

    .line 1470
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0xffff -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addAccumulatedMovementListener(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;III)Z
    .locals 6
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;
    .param p2, "time"    # I
    .param p3, "distance"    # I
    .param p4, "holdoff"    # I

    .prologue
    .line 1357
    iget-object v5, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/slpc/ModalityManager;->addAccumulatedMovementListener(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;IIILandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addAccumulatedMovementListener(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;IIILandroid/os/Looper;)Z
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;
    .param p2, "time"    # I
    .param p3, "distance"    # I
    .param p4, "holdoff"    # I
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1317
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\naddAccumulatedMovementListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    if-gez p2, :cond_0

    .line 1320
    const/4 p2, 0x0

    .line 1322
    :cond_0
    if-gez p3, :cond_1

    .line 1323
    const/4 p3, 0x0

    .line 1325
    :cond_1
    if-gez p4, :cond_2

    .line 1326
    const/4 p4, 0x0

    .line 1329
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    :try_start_1
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;

    .line 1331
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    if-nez v1, :cond_3

    .line 1332
    new-instance v1, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;

    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    invoke-direct {v1, p0, p1, p5}, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;Landroid/os/Looper;)V

    .line 1334
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :cond_3
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1, p2, p3, p4}, Lcom/motorola/slpc/IModalityService;->addAccumulatedMovementListener(Lcom/motorola/slpc/IAccumulatedMovementListener;III)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1335
    const-string v2, "ModalityManager"

    const-string v4, "mService.addAccumulatedMovementListener() succeeded"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    :goto_0
    monitor-exit v3

    .line 1345
    const/4 v2, 0x1

    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :goto_1
    return v2

    .line 1338
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :cond_4
    const-string v2, "ModalityManager"

    const-string v4, "mService.addAccumulatedMovementListener() failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1340
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "ModalityManager"

    const-string v3, "addAccumulatedMovementListener(): Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1343
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public addModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;IJJ)Z
    .locals 8
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$ModalityListener;
    .param p2, "modalities"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J

    .prologue
    .line 489
    iget-object v7, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/motorola/slpc/ModalityManager;->addModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;IJJLandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;IJJLandroid/os/Looper;)Z
    .locals 10
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$ModalityListener;
    .param p2, "modalities"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J
    .param p7, "looper"    # Landroid/os/Looper;

    .prologue
    .line 451
    const-string v1, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\naddModalityListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-wide/16 v3, 0x0

    cmp-long v1, p3, v3

    if-gez v1, :cond_0

    .line 454
    const-wide/16 p3, 0x0

    .line 456
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v1, p5, v3

    if-gez v1, :cond_1

    .line 457
    const-wide/16 p5, 0x0

    .line 460
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/motorola/slpc/ModalityManager;->mModalityListeners:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :try_start_1
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mModalityListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;

    .line 462
    .local v2, "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    if-nez v2, :cond_2

    .line 463
    new-instance v2, Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;

    .end local v2    # "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    move-object/from16 v0, p7

    invoke-direct {v2, p0, p1, v0}, Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$ModalityListener;Landroid/os/Looper;)V

    .line 465
    .restart local v2    # "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    :cond_2
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/motorola/slpc/IModalityService;->addModalityListener(Lcom/motorola/slpc/IModalityListener;IJJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 467
    const-string v1, "ModalityManager"

    const-string v3, "mService.addModalityListener() succeeded"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mModalityListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :goto_0
    monitor-exit v9

    .line 477
    const/4 v1, 0x1

    .end local v2    # "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    :goto_1
    return v1

    .line 470
    .restart local v2    # "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    :cond_3
    const-string v1, "ModalityManager"

    const-string v3, "mService.addModalityListener() failed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    .end local v2    # "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 473
    :catch_0
    move-exception v8

    .line 474
    .local v8, "ex":Ljava/lang/Exception;
    const-string v1, "ModalityManager"

    const-string v3, "addModalityListener(): Exception"

    invoke-static {v1, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public addMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;JJ)Z
    .locals 7
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$MovementListener;
    .param p2, "startDuration"    # J
    .param p4, "endDuration"    # J

    .prologue
    .line 1182
    iget-object v6, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/slpc/ModalityManager;->addMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;JJLandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;JJLandroid/os/Looper;)Z
    .locals 8
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$MovementListener;
    .param p2, "startDuration"    # J
    .param p4, "endDuration"    # J
    .param p6, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v4, 0x0

    .line 1145
    const-string v0, "ModalityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\naddMovementListener(), package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    cmp-long v0, p2, v4

    if-gez v0, :cond_0

    .line 1148
    const-wide/16 p2, 0x0

    .line 1150
    :cond_0
    cmp-long v0, p4, v4

    if-gez v0, :cond_1

    .line 1151
    const-wide/16 p4, 0x0

    .line 1154
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/motorola/slpc/ModalityManager;->mMovementListeners:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    :try_start_1
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mMovementListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;

    .line 1156
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    if-nez v1, :cond_2

    .line 1157
    new-instance v1, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;

    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    invoke-direct {v1, p0, p1, p6}, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$MovementListener;Landroid/os/Looper;)V

    .line 1159
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    :cond_2
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/motorola/slpc/IModalityService;->addMovementListener(Lcom/motorola/slpc/IMovementListener;JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1160
    const-string v0, "ModalityManager"

    const-string v2, "mService.addMovementListener() succeeded"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mMovementListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    :goto_0
    monitor-exit v7

    .line 1170
    const/4 v0, 0x1

    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    :goto_1
    return v0

    .line 1163
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    :cond_3
    const-string v0, "ModalityManager"

    const-string v2, "mService.addMovementListener() failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1165
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1166
    :catch_0
    move-exception v6

    .line 1167
    .local v6, "ex":Ljava/lang/Exception;
    const-string v0, "ModalityManager"

    const-string v2, "addMovementListener(): Exception"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;IJJ)Z
    .locals 8
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$OrientationListener;
    .param p2, "orientations"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J

    .prologue
    .line 730
    iget-object v7, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/motorola/slpc/ModalityManager;->addOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;IJJLandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;IJJLandroid/os/Looper;)Z
    .locals 10
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$OrientationListener;
    .param p2, "orientations"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J
    .param p7, "looper"    # Landroid/os/Looper;

    .prologue
    .line 692
    const-string v1, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\naddOrientationListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-wide/16 v3, 0x0

    cmp-long v1, p3, v3

    if-gez v1, :cond_0

    .line 695
    const-wide/16 p3, 0x0

    .line 697
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v1, p5, v3

    if-gez v1, :cond_1

    .line 698
    const-wide/16 p5, 0x0

    .line 701
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/motorola/slpc/ModalityManager;->mOrientationListeners:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :try_start_1
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mOrientationListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;

    .line 703
    .local v2, "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    if-nez v2, :cond_2

    .line 704
    new-instance v2, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;

    .end local v2    # "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    move-object/from16 v0, p7

    invoke-direct {v2, p0, p1, v0}, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$OrientationListener;Landroid/os/Looper;)V

    .line 706
    .restart local v2    # "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    :cond_2
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/motorola/slpc/IModalityService;->addOrientationListener(Lcom/motorola/slpc/IOrientationListener;IJJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 708
    const-string v1, "ModalityManager"

    const-string v3, "mService.addOrientationListener() succeeded"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mOrientationListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :goto_0
    monitor-exit v9

    .line 718
    const/4 v1, 0x1

    .end local v2    # "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    :goto_1
    return v1

    .line 711
    .restart local v2    # "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    :cond_3
    const-string v1, "ModalityManager"

    const-string v3, "mService.addOrientationListener() failed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 713
    .end local v2    # "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 714
    :catch_0
    move-exception v8

    .line 715
    .local v8, "ex":Ljava/lang/Exception;
    const-string v1, "ModalityManager"

    const-string v3, "addOrientationListener(): Exception"

    invoke-static {v1, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public addStatusListener(Lcom/motorola/slpc/ModalityManager$StatusListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StatusListener;

    .prologue
    .line 244
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 246
    const/4 v1, 0x1

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    :try_start_0
    new-instance v2, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;

    invoke-direct {v2, p0, p1}, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$StatusListener;)V

    .line 250
    .local v2, "transport":Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v3, v2}, Lcom/motorola/slpc/IModalityService;->addStatusListener(Lcom/motorola/slpc/IStatusListener;)Z

    move-result v1

    .line 251
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 252
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    .end local v1    # "result":Z
    .end local v2    # "transport":Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ModalityManager"

    const-string v4, "addStatusListener(): RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public addStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;IJJ)Z
    .locals 8
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StowedListener;
    .param p2, "stowedStates"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J

    .prologue
    .line 971
    iget-object v7, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/motorola/slpc/ModalityManager;->addStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;IJJLandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;IJJLandroid/os/Looper;)Z
    .locals 10
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StowedListener;
    .param p2, "stowedStates"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J
    .param p7, "looper"    # Landroid/os/Looper;

    .prologue
    .line 933
    const-string v1, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\naddStowedListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-wide/16 v3, 0x0

    cmp-long v1, p3, v3

    if-gez v1, :cond_0

    .line 936
    const-wide/16 p3, 0x0

    .line 938
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v1, p5, v3

    if-gez v1, :cond_1

    .line 939
    const-wide/16 p5, 0x0

    .line 942
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/motorola/slpc/ModalityManager;->mStowedListeners:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :try_start_1
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mStowedListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;

    .line 944
    .local v2, "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    if-nez v2, :cond_2

    .line 945
    new-instance v2, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;

    .end local v2    # "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    move-object/from16 v0, p7

    invoke-direct {v2, p0, p1, v0}, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$StowedListener;Landroid/os/Looper;)V

    .line 947
    .restart local v2    # "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    :cond_2
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/motorola/slpc/IModalityService;->addStowedListener(Lcom/motorola/slpc/IStowedListener;IJJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 949
    const-string v1, "ModalityManager"

    const-string v3, "mService.addStowedListener() succeeded"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mStowedListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    :goto_0
    monitor-exit v9

    .line 959
    const/4 v1, 0x1

    .end local v2    # "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    :goto_1
    return v1

    .line 952
    .restart local v2    # "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    :cond_3
    const-string v1, "ModalityManager"

    const-string v3, "mService.addStowedListener() failed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    .end local v2    # "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 955
    :catch_0
    move-exception v8

    .line 956
    .local v8, "ex":Ljava/lang/Exception;
    const-string v1, "ModalityManager"

    const-string v3, "addStowedListener(): Exception"

    invoke-static {v1, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public addVehicleListener(Lcom/motorola/slpc/ModalityManager$VehicleListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$VehicleListener;

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/slpc/ModalityManager;->addVehicleListener(Lcom/motorola/slpc/ModalityManager$VehicleListener;Landroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addVehicleListener(Lcom/motorola/slpc/ModalityManager$VehicleListener;Landroid/os/Looper;)Z
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$VehicleListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1581
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\naddVehicleListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :try_start_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    :try_start_1
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;

    .line 1585
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    if-nez v1, :cond_0

    .line 1586
    new-instance v1, Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;

    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    invoke-direct {v1, p0, p1, p2}, Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$VehicleListener;Landroid/os/Looper;)V

    .line 1588
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    :cond_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1}, Lcom/motorola/slpc/IModalityService;->addVehicleListener(Lcom/motorola/slpc/IVehicleListener;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1589
    const-string v2, "ModalityManager"

    const-string v4, "mService.addVehicleListener() succeeded"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    :goto_0
    monitor-exit v3

    .line 1599
    const/4 v2, 0x1

    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    :goto_1
    return v2

    .line 1592
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    :cond_1
    const-string v2, "ModalityManager"

    const-string v4, "mService.addVehicleListener() failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1594
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "ModalityManager"

    const-string v3, "addVehicleListener(): Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1597
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getAccumulatedDistance(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;

    .prologue
    const/4 v2, 0x0

    .line 1409
    :try_start_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;

    .line 1410
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    if-nez v1, :cond_0

    .line 1411
    const-string v3, "ModalityManager"

    const-string v4, "getAccumulatedDistance(): null transport"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :goto_0
    return v2

    .line 1414
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :cond_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v3, v1}, Lcom/motorola/slpc/IModalityService;->getAccumulatedDistance(Lcom/motorola/slpc/IAccumulatedMovementListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1415
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :catch_0
    move-exception v0

    .line 1416
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ModalityManager"

    const-string v4, "getAccumulatedDistance(): RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAccumulatedTime(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;

    .prologue
    const/4 v2, 0x0

    .line 1388
    :try_start_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;

    .line 1389
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    if-nez v1, :cond_0

    .line 1390
    const-string v3, "ModalityManager"

    const-string v4, "getAccumulatedTime(): null transport"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :goto_0
    return v2

    .line 1393
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :cond_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v3, v1}, Lcom/motorola/slpc/IModalityService;->getAccumulatedTime(Lcom/motorola/slpc/IAccumulatedMovementListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1394
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :catch_0
    move-exception v0

    .line 1395
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ModalityManager"

    const-string v4, "getAccumulatedTime(): RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getModality()Lcom/motorola/slpc/Transition;
    .locals 4

    .prologue
    .line 545
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2}, Lcom/motorola/slpc/IModalityService;->getModality()Lcom/motorola/slpc/Transition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 550
    .local v1, "transition":Lcom/motorola/slpc/Transition;
    :goto_0
    return-object v1

    .line 546
    .end local v1    # "transition":Lcom/motorola/slpc/Transition;
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "getModality(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    new-instance v1, Lcom/motorola/slpc/Transition;

    invoke-direct {v1}, Lcom/motorola/slpc/Transition;-><init>()V

    .restart local v1    # "transition":Lcom/motorola/slpc/Transition;
    goto :goto_0
.end method

.method public getOrientation()Lcom/motorola/slpc/Transition;
    .locals 4

    .prologue
    .line 786
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2}, Lcom/motorola/slpc/IModalityService;->getOrientation()Lcom/motorola/slpc/Transition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 791
    .local v1, "transition":Lcom/motorola/slpc/Transition;
    :goto_0
    return-object v1

    .line 787
    .end local v1    # "transition":Lcom/motorola/slpc/Transition;
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "getOrientation(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    new-instance v1, Lcom/motorola/slpc/Transition;

    invoke-direct {v1}, Lcom/motorola/slpc/Transition;-><init>()V

    .restart local v1    # "transition":Lcom/motorola/slpc/Transition;
    goto :goto_0
.end method

.method public getStatus()I
    .locals 4

    .prologue
    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2}, Lcom/motorola/slpc/IModalityService;->getStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 295
    .local v1, "status":I
    :goto_0
    return v1

    .line 290
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "getStatus(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/4 v1, 0x0

    .restart local v1    # "status":I
    goto :goto_0
.end method

.method public getStowed()Lcom/motorola/slpc/Transition;
    .locals 4

    .prologue
    .line 1027
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2}, Lcom/motorola/slpc/IModalityService;->getStowed()Lcom/motorola/slpc/Transition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1032
    .local v1, "transition":Lcom/motorola/slpc/Transition;
    :goto_0
    return-object v1

    .line 1028
    .end local v1    # "transition":Lcom/motorola/slpc/Transition;
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "getStowed(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1030
    new-instance v1, Lcom/motorola/slpc/Transition;

    invoke-direct {v1}, Lcom/motorola/slpc/Transition;-><init>()V

    .restart local v1    # "transition":Lcom/motorola/slpc/Transition;
    goto :goto_0
.end method

.method public removeAccumulatedMovementListener(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;

    .prologue
    .line 1368
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveAccumulatedMovementListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;

    .line 1371
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    if-eqz v1, :cond_0

    .line 1372
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1}, Lcom/motorola/slpc/IModalityService;->removeAccumulatedMovementListener(Lcom/motorola/slpc/IAccumulatedMovementListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "removeAccumulatedMovementListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$ModalityListener;

    .prologue
    .line 525
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lcom/motorola/slpc/ModalityManager;->removeModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;I)V

    .line 526
    return-void
.end method

.method public removeModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$ModalityListener;
    .param p2, "modalities"    # I

    .prologue
    .line 506
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveModalityListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mModalityListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;

    .line 509
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    if-eqz v1, :cond_0

    .line 510
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1, p2}, Lcom/motorola/slpc/IModalityService;->removeModalityListener(Lcom/motorola/slpc/IModalityListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "removeModalityListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$MovementListener;

    .prologue
    .line 1191
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveMovementListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mMovementListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;

    .line 1194
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    if-eqz v1, :cond_0

    .line 1195
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1}, Lcom/motorola/slpc/IModalityService;->removeMovementListener(Lcom/motorola/slpc/IMovementListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "removeMovementListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$OrientationListener;

    .prologue
    .line 766
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lcom/motorola/slpc/ModalityManager;->removeOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;I)V

    .line 767
    return-void
.end method

.method public removeOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$OrientationListener;
    .param p2, "orientations"    # I

    .prologue
    .line 747
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveOrientationListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mOrientationListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;

    .line 750
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    if-eqz v1, :cond_0

    .line 751
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1, p2}, Lcom/motorola/slpc/IModalityService;->removeOrientationListener(Lcom/motorola/slpc/IOrientationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "removeOrientationListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeStatusListener(Lcom/motorola/slpc/ModalityManager$StatusListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StatusListener;

    .prologue
    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;

    .line 270
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
    if-eqz v1, :cond_0

    .line 271
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1}, Lcom/motorola/slpc/IModalityService;->removeStatusListener(Lcom/motorola/slpc/IStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "removeStatusListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StowedListener;

    .prologue
    .line 1005
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lcom/motorola/slpc/ModalityManager;->removeStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;I)V

    .line 1006
    return-void
.end method

.method public removeStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StowedListener;
    .param p2, "stowedStates"    # I

    .prologue
    .line 986
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveStowedListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mStowedListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;

    .line 989
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    if-eqz v1, :cond_0

    .line 990
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1, p2}, Lcom/motorola/slpc/IModalityService;->removeStowedListener(Lcom/motorola/slpc/IStowedListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "removeStowedListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeVehicleListener(Lcom/motorola/slpc/ModalityManager$VehicleListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$VehicleListener;

    .prologue
    .line 1618
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveVehicleListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :try_start_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    :try_start_1
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;

    .line 1622
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    if-eqz v1, :cond_0

    .line 1623
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1}, Lcom/motorola/slpc/IModalityService;->removeVehicleListener(Lcom/motorola/slpc/IVehicleListener;)V

    .line 1625
    :cond_0
    monitor-exit v3

    .line 1629
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    :goto_0
    return-void

    .line 1625
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1626
    :catch_0
    move-exception v0

    .line 1627
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "removeVehicleListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

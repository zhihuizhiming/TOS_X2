.class abstract Landroid/hardware/SystemSensorManager$BaseEventQueue;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseEventQueue"
.end annotation


# instance fields
.field private final mActiveSensors:Landroid/util/SparseBooleanArray;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field protected final mFirstEvent:Landroid/util/SparseBooleanArray;

.field protected final mManager:Landroid/hardware/SystemSensorManager;

.field private final mScratch:[F

.field protected final mSensorAccuracies:Landroid/util/SparseIntArray;

.field private nSensorEventQueue:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "manager"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    .line 264
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    .line 265
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mFirstEvent:Landroid/util/SparseBooleanArray;

    .line 266
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 267
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mScratch:[F

    .line 271
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mScratch:[F

    invoke-direct {p0, p0, v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInitBaseEventQueue(Landroid/hardware/SystemSensorManager$BaseEventQueue;Landroid/os/MessageQueue;[F)I

    move-result v0

    iput v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    .line 272
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 273
    iput-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    .line 274
    return-void
.end method

.method private disableSensor(Landroid/hardware/Sensor;)I
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 369
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 370
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 371
    :cond_1
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDisableSensor(II)I

    move-result v0

    return v0
.end method

.method private dispose(Z)V
    .locals 1
    .param p1, "finalized"    # Z

    .prologue
    .line 348
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 349
    if-eqz p1, :cond_0

    .line 350
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 354
    :cond_1
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-eqz v0, :cond_2

    .line 355
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-static {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDestroySensorEventQueue(I)V

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    .line 358
    :cond_2
    return-void
.end method

.method private enableSensor(Landroid/hardware/Sensor;III)I
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "rateUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I
    .param p4, "reservedFlags"    # I

    .prologue
    .line 362
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 363
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 364
    :cond_1
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-static {v0, v1, p2, p3, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(IIIII)I

    move-result v0

    return v0
.end method

.method private static native nativeDestroySensorEventQueue(I)V
.end method

.method private static native nativeDisableSensor(II)I
.end method

.method private static native nativeEnableSensor(IIIII)I
.end method

.method private static native nativeFlushSensor(I)I
.end method

.method private native nativeInitBaseEventQueue(Landroid/hardware/SystemSensorManager$BaseEventQueue;Landroid/os/MessageQueue;[F)I
.end method


# virtual methods
.method public addSensor(Landroid/hardware/Sensor;III)Z
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "delayUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I
    .param p4, "reservedFlags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 284
    .local v0, "handle":I
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    :goto_0
    return v1

    .line 287
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 288
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensorEvent(Landroid/hardware/Sensor;)V

    .line 289
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;III)I

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    if-eqz p3, :cond_1

    if-lez p3, :cond_2

    invoke-direct {p0, p1, p2, v1, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;III)I

    move-result v3

    if-eqz v3, :cond_2

    .line 293
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 297
    goto :goto_0
.end method

.method protected abstract addSensorEvent(Landroid/hardware/Sensor;)V
.end method

.method protected abstract dispatchFlushCompleteEvent(I)V
.end method

.method protected abstract dispatchSensorEvent(I[FIJ)V
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V

    .line 278
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 341
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 345
    return-void

    .line 343
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 330
    :cond_0
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-static {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeFlushSensor(I)I

    move-result v0

    return v0
.end method

.method public hasSensors()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 335
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v1

    if-ltz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllSensors()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 302
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 303
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 304
    .local v0, "handle":I
    # getter for: Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$000()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 305
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-eqz v2, :cond_0

    .line 306
    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 307
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 308
    invoke-virtual {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 301
    .end local v0    # "handle":I
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_1
    return v5
.end method

.method public removeSensor(Landroid/hardware/Sensor;Z)Z
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "disable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 319
    .local v0, "handle":I
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 321
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 322
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 323
    const/4 v1, 0x1

    .line 325
    :cond_1
    return v1
.end method

.method protected abstract removeSensorEvent(Landroid/hardware/Sensor;)V
.end method

.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field static REPORTING_MODE_CONTINUOUS:I = 0x0

.field static REPORTING_MODE_ONE_SHOT:I = 0x0

.field static REPORTING_MODE_ON_CHANGE:I = 0x0

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_CAMERA_ACTIVATE:I = 0x25

.field public static final TYPE_DISPLAY_BRIGHTNESS:I = 0x20

.field public static final TYPE_DISPLAY_ROTATE:I = 0x1f

.field public static final TYPE_DOCK:I = 0x21

.field public static final TYPE_FLAT_DOWN:I = 0x23

.field public static final TYPE_FLAT_UP:I = 0x22

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_IR_GESTURE:I = 0x27

.field public static final TYPE_IR_OBJECT:I = 0x29

.field public static final TYPE_IR_RAW:I = 0x28

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_NFC_DETECT:I = 0x26

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_QUATERNION:I = 0x1e

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_STOWED:I = 0x24

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mHandle:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 310
    sput v5, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    .line 313
    sput v7, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    .line 316
    sput v4, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    .line 324
    const/16 v0, 0x54

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v3, v0, v5

    sget v1, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v1, v0, v7

    aput v4, v0, v4

    const/4 v1, 0x4

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    aput v4, v0, v6

    const/4 v1, 0x6

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    const/16 v1, 0xc

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    const/16 v1, 0xe

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/16 v1, 0x12

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v4, v0, v1

    const/16 v1, 0x14

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x15

    aput v4, v0, v1

    const/16 v1, 0x16

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v6, v0, v1

    const/16 v1, 0x18

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x19

    aput v4, v0, v1

    const/16 v1, 0x1a

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    aput v4, v0, v1

    const/16 v1, 0x1c

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x1e

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x22

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    aput v2, v0, v1

    const/16 v1, 0x23

    aput v5, v0, v1

    const/16 v1, 0x24

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x25

    aput v5, v0, v1

    const/16 v1, 0x26

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v5, v0, v1

    const/16 v1, 0x28

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x29

    aput v6, v0, v1

    const/16 v1, 0x2a

    aput v3, v0, v1

    const/16 v1, 0x2b

    aput v3, v0, v1

    const/16 v1, 0x2c

    aput v3, v0, v1

    const/16 v1, 0x2d

    aput v3, v0, v1

    const/16 v1, 0x2e

    aput v3, v0, v1

    const/16 v1, 0x2f

    aput v3, v0, v1

    const/16 v1, 0x30

    aput v3, v0, v1

    const/16 v1, 0x31

    aput v3, v0, v1

    const/16 v1, 0x32

    aput v3, v0, v1

    const/16 v1, 0x33

    aput v3, v0, v1

    const/16 v1, 0x34

    aput v3, v0, v1

    const/16 v1, 0x35

    aput v3, v0, v1

    const/16 v1, 0x36

    aput v3, v0, v1

    const/16 v1, 0x37

    aput v3, v0, v1

    const/16 v1, 0x38

    aput v3, v0, v1

    const/16 v1, 0x39

    aput v3, v0, v1

    const/16 v1, 0x3a

    aput v3, v0, v1

    const/16 v1, 0x3b

    aput v3, v0, v1

    const/16 v1, 0x3c

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x3d

    aput v4, v0, v1

    const/16 v1, 0x3e

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x3f

    aput v5, v0, v1

    const/16 v1, 0x40

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x41

    aput v5, v0, v1

    const/16 v1, 0x42

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x43

    aput v5, v0, v1

    const/16 v1, 0x44

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x45

    aput v5, v0, v1

    const/16 v1, 0x46

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x47

    aput v5, v0, v1

    const/16 v1, 0x48

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x49

    aput v5, v0, v1

    const/16 v1, 0x4a

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x4b

    aput v7, v0, v1

    const/16 v1, 0x4c

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x4d

    aput v5, v0, v1

    const/16 v1, 0x4e

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x4f

    aput v6, v0, v1

    const/16 v1, 0x50

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x52

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    aput v2, v0, v1

    const/16 v1, 0x53

    aput v5, v0, v1

    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    return-void
.end method

.method static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .locals 3
    .param p0, "sensor"    # Landroid/hardware/Sensor;
    .param p1, "sdkLevel"    # I

    .prologue
    .line 393
    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    .line 396
    .local v1, "type":I
    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/16 v2, 0x11

    if-gt p1, v2, :cond_0

    .line 398
    const/4 v2, 0x3

    .line 410
    :goto_0
    return v2

    .line 400
    :cond_0
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 401
    .local v0, "offset":I
    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 408
    const/16 v2, 0x10

    goto :goto_0

    .line 410
    :cond_1
    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget v2, v2, v0

    goto :goto_0
.end method

.method static getReportingMode(Landroid/hardware/Sensor;)I
    .locals 3
    .param p0, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 375
    iget v2, p0, Landroid/hardware/Sensor;->mType:I

    mul-int/lit8 v1, v2, 0x2

    .line 376
    .local v1, "offset":I
    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 380
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    .line 381
    .local v0, "minDelay":I
    if-nez v0, :cond_0

    .line 382
    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    .line 389
    .end local v0    # "minDelay":I
    :goto_0
    return v2

    .line 383
    .restart local v0    # "minDelay":I
    :cond_0
    if-gez v0, :cond_1

    .line 384
    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    goto :goto_0

    .line 386
    :cond_1
    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    goto :goto_0

    .line 389
    .end local v0    # "minDelay":I
    :cond_2
    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget v2, v2, v1

    goto :goto_0
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public getHandle()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method setRange(FF)V
    .locals 0
    .param p1, "max"    # F
    .param p2, "res"    # F

    .prologue
    .line 513
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 514
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 515
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

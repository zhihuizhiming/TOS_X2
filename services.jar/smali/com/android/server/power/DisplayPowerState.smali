.class final Lcom/android/server/power/DisplayPowerState;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DisplayPowerState"


# instance fields
.field private final mBacklight:Lcom/android/server/LightsService$Light;

.field private mButtonBrightness:I

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCleanListener:Ljava/lang/Runnable;

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mElectronBeam:Lcom/android/server/power/ElectronBeam;

.field private mElectronBeamDrawPending:Z

.field private final mElectronBeamDrawRunnable:Ljava/lang/Runnable;

.field private mElectronBeamLevel:F

.field private mElectronBeamPrepared:Z

.field private mElectronBeamReady:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

.field private mScreenBrightness:I

.field private mScreenOn:Z

.field private mScreenReady:Z

.field private mScreenUpdatePending:Z

.field private final mScreenUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    .line 106
    new-instance v0, Lcom/android/server/power/DisplayPowerState$1;

    const-string v1, "electronBeamLevel"

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    .line 119
    new-instance v0, Lcom/android/server/power/DisplayPowerState$2;

    const-string v1, "screenBrightness"

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerState$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    return-void

    :cond_0
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;)V
    .locals 3
    .param p1, "electronBean"    # Lcom/android/server/power/ElectronBeam;
    .param p2, "displayBlanker"    # Lcom/android/server/power/DisplayBlanker;
    .param p3, "backlight"    # Lcom/android/server/LightsService$Light;

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Lcom/android/server/power/DisplayPowerState$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/DisplayPowerState$3;-><init>(Lcom/android/server/power/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    .line 360
    new-instance v0, Lcom/android/server/power/DisplayPowerState$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/DisplayPowerState$4;-><init>(Lcom/android/server/power/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawRunnable:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 86
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    .line 87
    iput-object p2, p0, Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    .line 88
    iput-object p3, p0, Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;

    .line 89
    new-instance v0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/power/DisplayPowerState;Lcom/android/server/power/DisplayPowerState$1;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .line 97
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    .line 98
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    .line 99
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    .line 103
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    .line 104
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/power/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/power/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/DisplayPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/ElectronBeam;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/power/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/DisplayPowerState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mButtonBrightness:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/power/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->invokeCleanListenerIfNeeded()V

    return-void
.end method

.method private invokeCleanListenerIfNeeded()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 332
    .local v0, "listener":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    if-eqz v1, :cond_0

    .line 333
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 334
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 336
    :cond_0
    return-void
.end method

.method private postScreenUpdateThreadSafe()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method

.method private scheduleElectronBeamDraw()V
    .locals 4

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    .line 325
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 328
    :cond_0
    return-void
.end method

.method private scheduleScreenUpdate()V
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    .line 313
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V

    .line 315
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissElectronBeam()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    invoke-virtual {v0}, Lcom/android/server/power/ElectronBeam;->dismiss()V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    .line 238
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 295
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 296
    const-string v0, "Display Power State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamDrawPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->dump(Ljava/io/PrintWriter;)V

    .line 307
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    invoke-virtual {v0, p1}, Lcom/android/server/power/ElectronBeam;->dump(Ljava/io/PrintWriter;)V

    .line 308
    return-void
.end method

.method public getButtonBrightness()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mButtonBrightness:I

    return v0
.end method

.method public getElectronBeamLevel()F
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    return v0
.end method

.method public getScreenBrightness()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    return v0
.end method

.method public prepareElectronBeam(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 219
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    invoke-virtual {v2, p1}, Lcom/android/server/power/ElectronBeam;->prepare(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    .line 227
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleElectronBeamDraw()V

    move v0, v1

    .line 228
    goto :goto_0
.end method

.method public setButtonBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 187
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mButtonBrightness:I

    if-eq v0, p1, :cond_1

    .line 188
    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setButtonBrightness: brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iput p1, p0, Lcom/android/server/power/DisplayPowerState;->mButtonBrightness:I

    .line 194
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    .line 196
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    .line 200
    :cond_1
    return-void
.end method

.method public setElectronBeamLevel(F)V
    .locals 4
    .param p1, "level"    # F

    .prologue
    const/4 v3, 0x0

    .line 254
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 255
    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setElectronBeamLevel: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    iput p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    .line 260
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eqz v0, :cond_1

    .line 261
    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    .line 262
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    .line 264
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    if-eqz v0, :cond_2

    .line 265
    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    .line 266
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleElectronBeamDraw()V

    .line 269
    :cond_2
    return-void
.end method

.method public setScreenBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    if-eq v0, p1, :cond_1

    .line 161
    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenBrightness: brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iput p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    .line 166
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    .line 168
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    .line 171
    :cond_1
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eq v0, p1, :cond_1

    .line 137
    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOn: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    .line 143
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    .line 145
    :cond_1
    return-void
.end method

.method public waitUntilClean(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    if-nez v0, :cond_1

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 287
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    .line 289
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 290
    const/4 v0, 0x1

    goto :goto_0
.end method

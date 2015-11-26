.class final Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
.super Ljava/lang/Object;
.source "DisplayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedViewport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;
    }
.end annotation


# static fields
.field private static final DEFAUTLT_BORDER_WIDTH_DIP:I = 0x5


# instance fields
.field private final mBorderWidth:I

.field private mFullRedrawNeeded:Z

.field private final mHalfBorderWidth:I

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mMagnifiedBounds:Landroid/graphics/Region;

.field private final mOldMagnifiedBounds:Landroid/graphics/Region;

.field private final mTempFloats:[F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempWindowStateInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempWindowStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/server/wm/DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayMagnifier;)V
    .locals 4

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempWindowStateInfos:Landroid/util/SparseArray;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Ljava/util/ArrayList;

    .line 252
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    .line 254
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    .line 256
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    .line 258
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    .line 260
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    .line 261
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    .line 263
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 275
    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier;->access$000(Lcom/android/server/wm/DisplayMagnifier;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    .line 276
    const/4 v0, 0x1

    const/high16 v1, 0x40a00000    # 5.0f

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier;->access$000(Lcom/android/server/wm/DisplayMagnifier;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mBorderWidth:I

    .line 279
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mBorderWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    .line 280
    new-instance v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier;->access$000(Lcom/android/server/wm/DisplayMagnifier;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;-><init>(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 281
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 282
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 241
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mBorderWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 241
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method private getExcludedVisibleWindows(Landroid/util/SparseArray;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "inVisibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;>;"
    .local p2, "outExcludedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 460
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 461
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 462
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;

    .line 463
    .local v2, "info":Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    iget-object v3, v2, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x834

    if-ne v3, v4, :cond_0

    .line 465
    iget-object v3, v2, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 469
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    :cond_1
    return-void
.end method

.method private getWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "outWindowStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;>;"
    iget-object v5, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 444
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 445
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 446
    .local v2, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 447
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 448
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e9

    if-ne v5, v6, :cond_1

    :cond_0
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-nez v5, :cond_1

    .line 451
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->obtain(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method

.method private populateTransformationMatrix(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 430
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    aput v2, v0, v1

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    aput v2, v0, v1

    .line 432
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    aput v2, v0, v1

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    aput v2, v0, v1

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 440
    return-void
.end method


# virtual methods
.method public destroyWindow()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->releaseSurface()V

    .line 520
    return-void
.end method

.method public drawWindowIfNeededLocked()V
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->drawIfNeeded()V

    .line 516
    return-void
.end method

.method public getMagnificationSpecLocked()Landroid/view/MagnificationSpec;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 499
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 500
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 501
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 502
    return-void
.end method

.method public isMagnifyingLocked()Z
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRotationChangedLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    invoke-virtual {p0, v4, v4}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 479
    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mLongAnimationDuration:J
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$800(Lcom/android/server/wm/DisplayMagnifier;)J

    move-result-wide v3

    long-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    mul-float/2addr v3, v4

    float-to-long v0, v3

    .line 481
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 483
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 485
    .end local v0    # "delay":J
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 486
    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->updateSize()V

    .line 487
    return-void
.end method

.method public recomputeBoundsLocked()V
    .locals 32

    .prologue
    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Point;->x:I

    .line 300
    .local v6, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v7, v4, Landroid/graphics/Point;->y:I

    .line 302
    .local v7, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v24, v0

    .line 303
    .local v24, "magnifiedBounds":Landroid/graphics/Region;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v8, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$200(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v16

    .line 306
    .local v16, "availableBounds":Landroid/graphics/Region;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Region;->set(IIII)Z

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v26

    .line 309
    .local v26, "nonMagnifiedBounds":Landroid/graphics/Region;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v8, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempWindowStateInfos:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    .line 312
    .local v28, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;>;"
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->clear()V

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->getWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 317
    .local v20, "excludedVisibleWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->getExcludedVisibleWindows(Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    .line 321
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v27

    .line 322
    .local v27, "visibleWindowCount":I
    add-int/lit8 v21, v27, -0x1

    .local v21, "i":I
    :goto_0
    if-ltz v21, :cond_4

    .line 323
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;

    .line 324
    .local v22, "info":Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7eb

    if-ne v4, v5, :cond_1

    .line 322
    :cond_0
    add-int/lit8 v21, v21, -0x1

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 333
    .local v14, "N":I
    if-lez v14, :cond_3

    .line 335
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_1
    move/from16 v0, v23

    if-ge v0, v14, :cond_2

    .line 336
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/wm/WindowState;

    .line 337
    .local v31, "ws":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v31

    if-eq v0, v4, :cond_2

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v31

    if-ne v0, v4, :cond_5

    .line 342
    .end local v31    # "ws":Lcom/android/server/wm/WindowState;
    :cond_2
    move/from16 v0, v23

    if-lt v0, v14, :cond_0

    .line 348
    .end local v23    # "j":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$400(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v29

    .line 349
    .local v29, "windowBounds":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    .line 350
    .local v25, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->populateTransformationMatrix(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    .line 353
    .local v30, "windowFrame":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 354
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 355
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 356
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 357
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    move-object/from16 v0, v30

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5, v8, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 359
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 360
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 373
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$400(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v3

    .line 374
    .local v3, "accountedBounds":Landroid/graphics/Region;
    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 375
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 376
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v8, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 378
    invoke-virtual {v3}, Landroid/graphics/Region;->isRect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$600(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v15

    .line 380
    .local v15, "accountedFrame":Landroid/graphics/Rect;
    invoke-virtual {v3, v15}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 381
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 390
    .end local v3    # "accountedBounds":Landroid/graphics/Region;
    .end local v14    # "N":I
    .end local v15    # "accountedFrame":Landroid/graphics/Rect;
    .end local v22    # "info":Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    .end local v25    # "matrix":Landroid/graphics/Matrix;
    .end local v29    # "windowBounds":Landroid/graphics/Region;
    .end local v30    # "windowFrame":Landroid/graphics/RectF;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 393
    add-int/lit8 v21, v27, -0x1

    :goto_3
    if-ltz v21, :cond_7

    .line 394
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;

    .line 395
    .restart local v22    # "info":Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->recycle()V

    .line 396
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 393
    add-int/lit8 v21, v21, -0x1

    goto :goto_3

    .line 335
    .restart local v14    # "N":I
    .restart local v23    # "j":I
    .restart local v31    # "ws":Lcom/android/server/wm/WindowState;
    :cond_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 362
    .end local v23    # "j":I
    .end local v31    # "ws":Lcom/android/server/wm/WindowState;
    .restart local v25    # "matrix":Landroid/graphics/Matrix;
    .restart local v29    # "windowBounds":Landroid/graphics/Region;
    .restart local v30    # "windowFrame":Landroid/graphics/RectF;
    :cond_6
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mTouchableRegion:Landroid/graphics/Rect;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 363
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 365
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 366
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    move-object/from16 v0, v30

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5, v8, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 368
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 369
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 370
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_2

    .line 399
    .end local v14    # "N":I
    .end local v22    # "info":Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    .end local v25    # "matrix":Landroid/graphics/Matrix;
    .end local v29    # "windowBounds":Landroid/graphics/Region;
    .end local v30    # "windowFrame":Landroid/graphics/RectF;
    :cond_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v11, v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v12, v7, v4

    sget-object v13, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v8, v24

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 404
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v17

    .line 405
    .local v17, "bounds":Landroid/graphics/Region;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setBounds(Landroid/graphics/Region;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$600(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v18

    .line 411
    .local v18, "dirtyRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    if-eqz v4, :cond_9

    .line 412
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 413
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v8, v6, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v9, v7, v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 425
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 427
    .end local v17    # "bounds":Landroid/graphics/Region;
    .end local v18    # "dirtyRect":Landroid/graphics/Rect;
    :cond_8
    return-void

    .line 417
    .restart local v17    # "bounds":Landroid/graphics/Region;
    .restart local v18    # "dirtyRect":Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$700(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v19

    .line 418
    .local v19, "dirtyRegion":Landroid/graphics/Region;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 420
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 421
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_4
.end method

.method public setMagnifiedRegionBorderShownLocked(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 490
    if-eqz p1, :cond_0

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setShown(ZZ)V

    .line 495
    return-void
.end method

.method public updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 285
    if-eqz p1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 295
    :cond_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    goto :goto_0
.end method

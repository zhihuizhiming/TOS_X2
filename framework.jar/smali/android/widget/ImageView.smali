.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ScaleType;
    }
.end annotation


# static fields
.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mAdjustViewBounds:Z

.field private mAdjustViewBoundsCompat:Z

.field private mAlpha:I

.field private mBaseline:I

.field private mBaselineAlignBottom:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private mCropToPadding:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mHaveFrame:Z

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mPM:Landroid/os/PowerManager;

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private mViewAlphaScale:I

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 760
    new-array v0, v7, [Landroid/graphics/Matrix$ScaleToFit;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v6

    sput-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    iput v1, p0, Landroid/widget/ImageView;->mResource:I

    .line 74
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 75
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 76
    iput v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 77
    iput v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 82
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 83
    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 84
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 86
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    iput-object v2, p0, Landroid/widget/ImageView;->mState:[I

    .line 88
    iput-boolean v1, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 89
    iput v1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 92
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 95
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 101
    iput-boolean v1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 104
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    .line 122
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 124
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/widget/ImageView;->mPM:Landroid/os/PowerManager;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xff

    const/4 v8, -0x1

    const v7, 0x7fffffff

    const/4 v6, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput v6, p0, Landroid/widget/ImageView;->mResource:I

    .line 74
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 75
    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 76
    iput v7, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 77
    iput v7, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 82
    iput v9, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 83
    const/16 v5, 0x100

    iput v5, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 84
    iput-boolean v6, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 86
    iput-object v10, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    iput-object v10, p0, Landroid/widget/ImageView;->mState:[I

    .line 88
    iput-boolean v6, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 89
    iput v6, p0, Landroid/widget/ImageView;->mLevel:I

    .line 92
    iput-object v10, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 95
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 96
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 100
    iput v8, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 101
    iput-boolean v6, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 104
    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    .line 134
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 136
    sget-object v5, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 140
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_0
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 147
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 150
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 154
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 157
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 160
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 161
    .local v3, "index":I
    if-ltz v3, :cond_1

    .line 162
    sget-object v5, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v5, v5, v3

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 165
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 166
    .local v4, "tint":I
    if-eqz v4, :cond_2

    .line 167
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 170
    :cond_2
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 171
    .local v1, "alpha":I
    if-eq v1, v9, :cond_3

    .line 172
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 175
    :cond_3
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 178
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Landroid/widget/ImageView;->mPM:Landroid/os/PowerManager;

    .line 184
    return-void
.end method

.method private applyColorMod()V
    .locals 3

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1230
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1231
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 1232
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    iget v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1234
    :cond_0
    return-void
.end method

.method private configureBounds()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    .line 926
    iget-object v9, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    if-nez v9, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 931
    .local v1, "dwidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 933
    .local v0, "dheight":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int v7, v9, v10

    .line 934
    .local v7, "vwidth":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    iget v10, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int v6, v9, v10

    .line 936
    .local v6, "vheight":I
    if-ltz v1, :cond_2

    if-ne v7, v1, :cond_5

    :cond_2
    if-ltz v0, :cond_3

    if-ne v6, v0, :cond_5

    :cond_3
    const/4 v4, 0x1

    .line 939
    .local v4, "fits":Z
    :goto_1
    if-lez v1, :cond_4

    if-lez v0, :cond_4

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_6

    .line 943
    :cond_4
    iget-object v9, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v8, v8, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 944
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .end local v4    # "fits":Z
    :cond_5
    move v4, v8

    .line 936
    goto :goto_1

    .line 948
    .restart local v4    # "fits":Z
    :cond_6
    iget-object v9, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 950
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_8

    .line 952
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 953
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 955
    :cond_7
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 957
    :cond_8
    if-eqz v4, :cond_9

    .line 959
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 960
    :cond_9
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_a

    .line 962
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 963
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v9, v7, v1

    int-to-float v9, v9

    mul-float/2addr v9, v11

    add-float/2addr v9, v11

    float-to-int v9, v9

    int-to-float v9, v9

    sub-int v10, v6, v0

    int-to-float v10, v10

    mul-float/2addr v10, v11

    add-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 965
    :cond_a
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_c

    .line 966
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 969
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 971
    .local v3, "dy":F
    mul-int v8, v1, v6

    mul-int v9, v7, v0

    if-le v8, v9, :cond_b

    .line 972
    int-to-float v8, v6

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 973
    .local v5, "scale":F
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v2, v8, v11

    .line 979
    :goto_2
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 980
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    add-float v9, v2, v11

    float-to-int v9, v9

    int-to-float v9, v9

    add-float v10, v3, v11

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 975
    .end local v5    # "scale":F
    :cond_b
    int-to-float v8, v7

    int-to-float v9, v1

    div-float v5, v8, v9

    .line 976
    .restart local v5    # "scale":F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v3, v8, v11

    goto :goto_2

    .line 981
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "scale":F
    :cond_c
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_e

    .line 982
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 987
    if-gt v1, v7, :cond_d

    if-gt v0, v6, :cond_d

    .line 988
    const/high16 v5, 0x3f800000    # 1.0f

    .line 994
    .restart local v5    # "scale":F
    :goto_3
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    add-float/2addr v8, v11

    float-to-int v8, v8

    int-to-float v2, v8

    .line 995
    .restart local v2    # "dx":F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    add-float/2addr v8, v11

    float-to-int v8, v8

    int-to-float v3, v8

    .line 997
    .restart local v3    # "dy":F
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 998
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 990
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "scale":F
    :cond_d
    int-to-float v8, v7

    int-to-float v9, v1

    div-float/2addr v8, v9

    int-to-float v9, v6

    int-to-float v10, v0

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .restart local v5    # "scale":F
    goto :goto_3

    .line 1001
    .end local v5    # "scale":F
    :cond_e
    iget-object v8, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v0

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1002
    iget-object v8, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v9, v7

    int-to-float v10, v6

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1004
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1005
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v10, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iget-object v11, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v11}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0
.end method

.method private initImageView()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 188
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 189
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    .line 191
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeFromDrawable()V
    .locals 4

    .prologue
    .line 737
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 738
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 739
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 740
    .local v2, "w":I
    if-gez v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 741
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 742
    .local v1, "h":I
    if-gez v1, :cond_1

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 743
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v3, :cond_3

    .line 744
    :cond_2
    iput v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 745
    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 746
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 749
    .end local v1    # "h":I
    .end local v2    # "w":I
    :cond_3
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .param p1, "desiredSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 893
    move v0, p1

    .line 894
    .local v0, "result":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 895
    .local v1, "specMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 896
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 914
    :goto_0
    return v0

    .line 901
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 902
    goto :goto_0

    .line 907
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 908
    goto :goto_0

    .line 911
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 896
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveUri()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 638
    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 643
    .local v3, "rsrc":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 647
    const/4 v0, 0x0

    .line 649
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v6, p0, Landroid/widget/ImageView;->mResource:I

    if-eqz v6, :cond_3

    .line 651
    :try_start_0
    iget v6, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 698
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 652
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    iput-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 657
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v6, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 658
    iget-object v6, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 659
    .local v4, "scheme":Ljava/lang/String;
    const-string v6, "android.resource"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 662
    :try_start_1
    iget-object v6, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v2

    .line 664
    .local v2, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v6, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 689
    .end local v2    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_4
    :goto_2
    if-nez v0, :cond_2

    .line 690
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 692
    iput-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 665
    :catch_1
    move-exception v1

    .line 666
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 668
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v6, "content"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 670
    :cond_6
    const/4 v5, 0x0

    .line 672
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_2
    iget-object v6, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 673
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 677
    if-eqz v5, :cond_4

    .line 679
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 680
    :catch_2
    move-exception v1

    .line 681
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to close content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 674
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 675
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 677
    if-eqz v5, :cond_4

    .line 679
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    .line 680
    :catch_4
    move-exception v1

    .line 681
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to close content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 677
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_7

    .line 679
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 682
    :cond_7
    :goto_3
    throw v6

    .line 680
    :catch_5
    move-exception v1

    .line 681
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to close content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 686
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/InputStream;
    :cond_8
    iget-object v6, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private static scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 2
    .param p0, "st"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 769
    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    .line 714
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 716
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 718
    :cond_0
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 719
    if-eqz p1, :cond_3

    .line 720
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 721
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 724
    :cond_1
    iget v0, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 725
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 726
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 727
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 728
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 729
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 730
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 734
    :goto_1
    return-void

    .line 726
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 732
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    goto :goto_1
.end method


# virtual methods
.method public final clearColorFilter()V
    .locals 1

    .prologue
    .line 1140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1141
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1012
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1013
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1014
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1015
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1017
    :cond_0
    return-void
.end method

.method public getAdjustViewBounds()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    return v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 1065
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 1068
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    goto :goto_0
.end method

.method public getBaselineAlignBottom()Z
    .locals 1

    .prologue
    .line 1111
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getCropToPadding()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageAlpha()I
    .locals 1

    .prologue
    .line 1190
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    return v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 589
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 206
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 201
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 202
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1247
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1248
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1252
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 1253
    iget-object v0, p0, Landroid/widget/ImageView;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1254
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCurrentScreenState(I)V

    .line 1259
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1249
    goto :goto_0

    .line 1256
    :cond_3
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setCurrentScreenState(I)V

    goto :goto_1
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 703
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_0

    .line 704
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 708
    :goto_0
    return-object v0

    .line 705
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v0, :cond_1

    .line 706
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    goto :goto_0

    .line 708
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ImageView;->mState:[I

    invoke-static {v0, v1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1263
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1264
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1268
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 1269
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCurrentScreenState(I)V

    .line 1271
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1021
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1023
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eqz v3, :cond_0

    .line 1031
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_2

    iget v3, p0, Landroid/widget/ImageView;->mPaddingTop:I

    if-nez v3, :cond_2

    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    if-nez v3, :cond_2

    .line 1032
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1034
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 1035
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1037
    iget-boolean v3, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v3, :cond_3

    .line 1038
    iget v1, p0, Landroid/widget/ImageView;->mScrollX:I

    .line 1039
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/ImageView;->mScrollY:I

    .line 1040
    .local v2, "scrollY":I
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ImageView;->mRight:I

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/ImageView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mBottom:I

    add-int/2addr v6, v2

    iget v7, p0, Landroid/widget/ImageView;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1045
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_3
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1047
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_4

    .line 1048
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1050
    :cond_4
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1051
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1275
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1276
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1277
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1281
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1282
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1283
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 774
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 779
    const/4 v5, 0x0

    .line 782
    .local v5, "desiredAspect":F
    const/16 v17, 0x0

    .line 785
    .local v17, "resizeWidth":Z
    const/16 v16, 0x0

    .line 787
    .local v16, "resizeHeight":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 788
    .local v20, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 790
    .local v9, "heightSpecMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 792
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 793
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 794
    const/4 v7, 0x0

    .local v7, "h":I
    move/from16 v18, v7

    .line 811
    .local v18, "w":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    .line 812
    .local v13, "pleft":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ImageView;->mPaddingRight:I

    .line 813
    .local v14, "pright":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ImageView;->mPaddingTop:I

    .line 814
    .local v15, "ptop":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    .line 819
    .local v12, "pbottom":I
    if-nez v17, :cond_1

    if-eqz v16, :cond_b

    .line 826
    :cond_1
    add-int v21, v18, v13

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v19

    .line 829
    .local v19, "widthSize":I
    add-int v21, v7, v15

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v8

    .line 831
    .local v8, "heightSize":I
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_5

    .line 833
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-int v22, v8, v15

    sub-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v4, v21, v22

    .line 836
    .local v4, "actualAspect":F
    sub-float v21, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v21, v21, v23

    if-lez v21, :cond_5

    .line 838
    const/4 v6, 0x0

    .line 841
    .local v6, "done":Z
    if-eqz v17, :cond_3

    .line 842
    sub-int v21, v8, v15

    sub-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v11, v21, v14

    .line 846
    .local v11, "newWidth":I
    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 847
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p1

    invoke-direct {v0, v11, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v19

    .line 850
    :cond_2
    move/from16 v0, v19

    if-gt v11, v0, :cond_3

    .line 851
    move/from16 v19, v11

    .line 852
    const/4 v6, 0x1

    .line 857
    .end local v11    # "newWidth":I
    :cond_3
    if-nez v6, :cond_5

    if-eqz v16, :cond_5

    .line 858
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int v10, v21, v12

    .line 862
    .local v10, "newHeight":I
    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    .line 863
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v10, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v8

    .line 867
    :cond_4
    if-gt v10, v8, :cond_5

    .line 868
    move v8, v10

    .line 888
    .end local v4    # "actualAspect":F
    .end local v6    # "done":Z
    .end local v10    # "newHeight":I
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 889
    return-void

    .line 796
    .end local v7    # "h":I
    .end local v8    # "heightSize":I
    .end local v12    # "pbottom":I
    .end local v13    # "pleft":I
    .end local v14    # "pright":I
    .end local v15    # "ptop":I
    .end local v18    # "w":I
    .end local v19    # "widthSize":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    move/from16 v18, v0

    .line 797
    .restart local v18    # "w":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 798
    .restart local v7    # "h":I
    if-gtz v18, :cond_7

    const/16 v18, 0x1

    .line 799
    :cond_7
    if-gtz v7, :cond_8

    const/4 v7, 0x1

    .line 803
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 804
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    const/16 v17, 0x1

    .line 805
    :goto_2
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-eq v9, v0, :cond_a

    const/16 v16, 0x1

    .line 807
    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v5, v21, v22

    goto/16 :goto_0

    .line 804
    :cond_9
    const/16 v17, 0x0

    goto :goto_2

    .line 805
    :cond_a
    const/16 v16, 0x0

    goto :goto_3

    .line 878
    .restart local v12    # "pbottom":I
    .restart local v13    # "pleft":I
    .restart local v14    # "pright":I
    .restart local v15    # "ptop":I
    :cond_b
    add-int v21, v13, v14

    add-int v18, v18, v21

    .line 879
    add-int v21, v15, v12

    add-int v7, v7, v21

    .line 881
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 882
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 884
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v19

    .line 885
    .restart local v19    # "widthSize":I
    const/16 v21, 0x0

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v7, v0, v1}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v8

    .restart local v8    # "heightSize":I
    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 228
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 229
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 753
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 755
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 758
    :cond_0
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 1287
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 1288
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimationDrawable;->setCurrentScreenState(I)V

    .line 1290
    :cond_0
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1
    .param p1, "adjustViewBounds"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 268
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 269
    if-eqz p1, :cond_0

    .line 270
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 272
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1215
    and-int/lit16 p1, p1, 0xff

    .line 1216
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 1217
    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 1218
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1219
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1220
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1222
    :cond_0
    return-void
.end method

.method public setBaseline(I)V
    .locals 1
    .param p1, "baseline"    # I

    .prologue
    .line 1083
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    if-eq v0, p1, :cond_0

    .line 1084
    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 1085
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1087
    :cond_0
    return-void
.end method

.method public setBaselineAlignBottom(Z)V
    .locals 1
    .param p1, "aligned"    # Z

    .prologue
    .line 1099
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_0

    .line 1100
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 1101
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1103
    :cond_0
    return-void
.end method

.method public final setColorFilter(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1136
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1137
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1124
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1125
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1174
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1175
    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1176
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1177
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1178
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1180
    :cond_0
    return-void
.end method

.method public setCropToPadding(Z)V
    .locals 1
    .param p1, "cropToPadding"    # Z

    .prologue
    .line 630
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eq v0, p1, :cond_0

    .line 631
    iput-boolean p1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 632
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 633
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 635
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 919
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 920
    .local v0, "changed":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 921
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 922
    return v0
.end method

.method public setImageAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1202
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1203
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 452
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 427
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_2

    .line 428
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/ImageView;->mResource:I

    .line 429
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 431
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 432
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 434
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_1

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 439
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 441
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_2
    return-void
.end method

.method public setImageLevel(I)V
    .locals 1
    .param p1, "level"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 478
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 479
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 481
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 483
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 594
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/4 p1, 0x0

    .line 599
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 601
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 602
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 603
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 605
    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 4
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 372
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    if-eq v2, p1, :cond_3

    .line 373
    :cond_0
    invoke-direct {p0, v3}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    .line 375
    iput-object v3, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 377
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 378
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 380
    .local v0, "oldHeight":I
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 382
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_2

    .line 383
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 385
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 387
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_3
    return-void
.end method

.method public setImageState([IZ)V
    .locals 1
    .param p1, "state"    # [I
    .param p2, "merge"    # Z

    .prologue
    .line 456
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    .line 457
    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 458
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 460
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 462
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 402
    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v2, p1, :cond_3

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 405
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/ImageView;->mResource:I

    .line 407
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 409
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 410
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 412
    .local v0, "oldHeight":I
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 414
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_2

    .line 415
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 417
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 419
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_3
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 347
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 348
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 309
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 310
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 557
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 558
    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 560
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    .line 562
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 563
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 565
    :cond_1
    return-void

    .line 560
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 467
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 468
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1239
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1243
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1241
    goto :goto_0
.end method

.method public final setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 1147
    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-eq v0, p1, :cond_0

    .line 1148
    iput-object p1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1150
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1151
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1153
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 195
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method